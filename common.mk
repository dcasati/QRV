# Define variables
DISTNAME ?= DISTNAME
V	?= VERSION
DISTDIR ?= $(CURDIR)/distfiles
DISTINFO ?= distinfo
EXTRACT_SUFX ?= .deb
DISTFILE ?= $(DISTNAME)_$(V)_$(SUFX)$(EXTRACT_SUFX)
SITES ?= https://github.com/novnc/noVNC/archive/refs/tags/$(DISTNAME).zip
NO_BUILD ?= No

# station info
MYCALL := $(shell head -n 1 $(HOME)/.station-info)

# PATHS (Defines paths referencein the module)
ARCOS_BIN_DIR = /opt/arcOS/bin
ARCOS_CONFIG_DIR = /opt/arcOS/configs
MODULE_BASE_DIR = /ARCOS-DATA/QRV/$(MYCALL)/arcos-linux-modules/USER


# Default target
all: help

# Help target
help:
	@echo "Available targets:"
	@echo "  all            - Default target. Validates and downloads the package if necessary."
	@echo "  fetch          - Validates the file and downloads it if validation fails or file is missing."
	@echo "  validate       - Checks the downloaded file against the distinfo (checksum and size)."
	@echo "  distinfo       - Generates a distinfo file with SHA256 checksum and size of the downloaded file."
	@echo "  install        - Installs the .deb package if applicable."
	@echo "  clean          - Removes the extracted package directory."
	@echo "  distclean      - Removes all files in the download directory."
	@echo "  help           - Displays this help message."

# Validate checksum and size against distinfo
check: validate
validate:
	@echo "Validating all files in $(DISTDIR)"
	@if [ -d "$(DISTDIR)" ]; then \
		for file in $(DISTDIR)/*; do \
			if [ -f "$$file" ]; then \
				filename=$$(basename $$file); \
				echo "Validating $$filename..."; \
				expected_sha256=$$(grep "SHA256 ($$filename)" $(DISTINFO) | cut -d= -f2 | tr -d ' '); \
				expected_size=$$(grep "SIZE ($$filename)" $(DISTINFO) | cut -d= -f2 | tr -d ' '); \
				actual_sha256=$$(sha256sum $$file | awk '{print $$1}'); \
				actual_size=$$(stat -c %s $$file); \
				if [ "$$expected_sha256" = "$$actual_sha256" ] && [ "$$expected_size" = "$$actual_size" ]; then \
					echo "Checksum and size match for $$filename."; \
				else \
					echo "Checksum or size mismatch for $$filename! Please remove the broken file and try again."; \
					exit 1; \
				fi; \
			fi; \
		done; \
	else \
		echo "Directory $(DISTDIR) does not exist. Nothing to validate."; \
	fi

# Generate distinfo file for all files in distfiles
distinfo:
	@echo "Generating distinfo for all files in $(DISTDIR)..."
	@if [ -d "$(DISTDIR)" ]; then \
		> $(DISTINFO); \
		for file in $(DISTDIR)/*; do \
			if [ -f "$$file" ]; then \
				filename=$$(basename $$file); \
				echo "Processing $$filename..."; \
				echo "SHA256 ($$filename) = $$(sha256sum $$file | awk '{print $$1}')" >> $(DISTINFO); \
				echo "SIZE ($$filename) = $$(stat -c %s $$file)" >> $(DISTINFO); \
			fi; \
		done; \
		echo "distinfo file updated at $(DISTINFO)."; \
	else \
		echo "Directory $(DISTDIR) does not exist. Nothing to generate."; \
	fi

# Target to download the package
fetch: validate
	@$(MAKE) -pn | grep -q "^pre-fetch:" && { \
                echo "Running pre-fetch steps..."; \
                $(MAKE) pre-fetch; \
        } || true;      

	@if [ ! -f "$(DISTDIR)/$(DISTNAME)_$(V)_$(EXTRACT_SUFX)" ]; then \
                if [ "$(EXTRACT_SUFX)" = ".deb" ]; then \
                        if dpkg -s $(DISTNAME) >/dev/null 2>&1; then \
                                echo "$(DISTNAME) is already installed. Skipping download."; \
				exit 0; \
			else \
                                echo "Fetching .deb package for $(DISTNAME)..."; \
                                mkdir -p /tmp/apt-archives; \
                                sudo apt install -o Dir::Cache::archives="/tmp/apt-archives" --download-only --yes $(DISTNAME)=$(V) || exit 0; \
                                if ls /tmp/apt-archives/*.deb >/dev/null 2>&1; then \
                                        mv /tmp/apt-archives/*.deb "$(DISTDIR)"; \
                                        echo "Download complete."; \
                                else \
                                        echo "No .deb file found to move. The package may already be installed or no file was downloaded."; \
                                fi; \
                        fi; \
                elif  [ "$(EXTRACT_SUFX)" = ".zip" ]; then \
			if [ ! -f  "$(DISTDIR)/$(DISTFILE)" ]; then \
				echo "Pulling: $(DISTNAME) from $(SITES) into $(DISTDIR)..."; \
                        	mkdir -p "$(DISTDIR)" "$(DISTNAME)"; \
                        	wget -q $(SITES) -O "$(DISTDIR)/$(DISTFILE)"; \
                        	echo "Download complete."; \
			else \
				echo "$(DISTFILE) is found. Skipping download."; \
			fi; \
                fi; \
        else \
                echo "File $(DISTDIR)/$(DISTNAME)_$(V)_$(EXTRACT_SUFX) already exists."; \
        fi

# Install target for .deb packages
install:
	@if [ -n "$(SCRIPT)" ]; then \
	    echo "Installing script: $(SCRIPT)"; \
	    cp pkg/$(SCRIPT) $(MODULE_BASE_DIR)/$(SCRIPT); \
	    if [ "$(NO_BUILD)" = "Yes" ]; then \
	        echo "NO_BUILD is Yes. Exiting after script installation."; \
	        exit 0; \
	    fi; \
	else \
	    echo "SCRIPT is not defined. Proceeding without script installation."; \
	fi
	@if [ "$(NO_BUILD)" != "Yes" ]; then \
	    echo "Proceeding with other targets..."; \
	    $(MAKE) fetch; \
	    if [ "$(EXTRACT_SUFX)" = ".deb" ]; then \
	        if dpkg -s $(DISTNAME) >/dev/null 2>&1; then \
	            echo "$(DISTNAME) is already installed. Skipping installation."; \
	        else \
	            echo "Installing .deb package for $(DISTNAME)..."; \
	            sudo dpkg -i $(DISTDIR)/*.deb; \
	        fi; \
	    elif [ "$(EXTRACT_SUFX)" = ".zip" ]; then \
	        echo "Unzipping .zip package for $(DISTNAME)..."; \
	        unzip -qo "$(DISTDIR)/$(DISTFILE)" -d "$(CURDIR)/$(DISTNAME)"; \
	        echo "Unzip complete. Files extracted to $(CURDIR)/$(DISTNAME)."; \
	    else \
	        echo "Install target is not defined for $(EXTRACT_SUFX) packages."; \
	    fi; \
	    $(MAKE) -pn | grep -q "^post-install:" && { \
	        echo "Running post-install steps..."; \
	        $(MAKE) post-install; \
	    } || true; \
	fi

# Clean and distclean targets
clean:
	@echo "Removing $(DISTNAME)..."
	rm -rf $(CURDIR)/$(DISTNAME)
distclean:
	@echo "Removing all files from $(DISTDIR)..."
	@if [ -d "$(DISTDIR)" ]; then \
		rm -rf "$(DISTDIR)"/*; \
		echo "All files removed from $(DISTDIR)."; \
	else \
		echo "Directory $(DISTDIR) does not exist. Nothing to clean."; \
	fi


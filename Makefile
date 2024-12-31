# Subdirectories to process
subdirs := DESKTOP  DIREWOLF  FIELD-OPS  FL-SUITE  FLRIG  GQRX-ADDONS NEOVIM  NOVNC  PAT  README  SSHD  TNC2GO  TTYD  VARA  VARANNY  VNC

# Default target
all: run-subdirs

# Target to run Makefile in each specified subdirectory
run-subdirs:
	@for dir in $(subdirs); do \
		if [ -f "$$dir/Makefile" ]; then \
			echo "Running Makefile in $$dir..."; \
			$(MAKE) -C $$dir install; \
		else \
			echo "No Makefile found in $$dir. Skipping..."; \
		fi \
	done

# Clean target to clean in each specified subdirectory
.PHONY: clean
clean:
	rm -rf [0-9][0-9]*_*.sh
distclean:
	@for dir in $(subdirs); do \
                if [ -f "$$dir/Makefile" ]; then \
                        echo "Cleaning in $$dir..."; \
                        $(MAKE) -C $$dir clean; \
                        $(MAKE) -C $$dir distclean; \
                else \
                        echo "No Makefile found in $$dir. Skipping..."; \
                fi \
        done

# Help target
help:
	@echo "This Makefile will install the packages needed for TNC2GO on arcOS."
	@echo "Subdirectories:"
	@echo "  $(subdirs)"
	@echo "Targets:"
	@echo "  all        - Run 'make' in all specified subdirectories."
	@echo "  clean      - Run 'make clean' in all specified subdirectories."
	@echo "  help       - Display this help message."


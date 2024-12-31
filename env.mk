# Define variables
DISTNAME ?= DISTNAME
V	?= VERSION
DISTDIR ?= $(CURDIR)/distfiles
DISTINFO ?= distinfo
EXTRACT_SUFX ?= .deb
DISTFILE ?= $(DISTNAME)_$(V)_$(SUFX)$(EXTRACT_SUFX)
SITES ?= https://github.com/novnc/noVNC/archive/refs/tags/$(DISTNAME).zip

# station info
MYCALL := $(shell head -n 1 $(HOME)/.station-info)

# PATHS (Defines paths referencein the module)
ARCOS_BIN_DIR = /opt/arcOS/bin
ARCOS_CONFIG_DIR = /opt/arcOS/configs
MODULE_BASE_DIR = /ARCOS-DATA/QRV/$(MYCALL)/arcos-linux-modules/USER

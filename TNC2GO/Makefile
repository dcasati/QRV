COMMENT =	nodejs

DISTNAME =	nodejs
V =		20.18.1-1nodesource1
SUFX =		amd64
MAINTAINER =	Diego Casati VE6DPC

SCRIPT =	60_TNC2GO.sh

pre-fetch:
	curl -fsSL https://deb.nodesource.com/setup_20.x -o setup_20.x.sh	
	patch -p0 < patches/patch-setup_20.x.sh
	sudo bash setup_20.x.sh

post-install:
	@echo "Installing node-red"
	mkdir -p /tmp/TNC2GO/npm-cache
	sudo npm install -g --cache /tmp/TNC2GO/npm-cache/ --no-audit --prefer-offline --ignore-scripts node-red node-red-dashboard
	@echo "Saving npm-cache for later use"
	cp -pR /tmp/TNC2GO/npm-cache .

include ../common.mk

# VE6DPC arcOS USER Modules:

These are a set of custom USER modules to be used with [arcOS](https://arcos-linux.com/). If you haven't already downloaded arcOS, please do that first.

## Installing the USER modules:
To get going, clone this repo into your profile:

```bash
MYCALL=$(head -n 1 $HOME/.station-info)
cd /ARCOS-DATA/QRV/$MYCALL/arcos-linux-modules/USER/
```
Once there, clone this repo:

```bash
git clone https://github.com/dcasati/QRV.git
```

## Preparing your local system
These modules where designed to to allow for a system to run offline without any Internet connectivity once its components are fully downloaded locally. 

To prepare your system, run the following command:

```bash
cd /ARCOS-DATA/QRV/$MYCALL/arcos-linux-modules/USER/
make install
```

This will download all of required files and components and will also setup your arcOS system. 

| DISTNAME            | VERSION                     | COMMENT                                                         | SCRIPT                |
|---------------------|-----------------------------|-----------------------------------------------------------------|-----------------------|
| field-ops-desktop   | 0.0.1                       | Desktop automations for field ops.                              | 00_DESKTOP.sh        |
| direwolf            | 1.6.3+20210924-1build1     | Configuration files for direwolf.                               | 40_DIREWOLF.sh       |
| field-ops           | 0.0.1                       | Meta package for field ops.                                   | 300_FIELD-OPS.sh     |
| fl-suite-custom     | 0.0.1                       | fl-suite customization.                                         | 30_FL-SUITE.sh       |
| flrig-custom-g90    | 0.0.1                       | flrig customization for the Xiegu-G90.                         | 00_FLRIG.sh          |
| gqrx-custom-g90     | 0.0.1                       | GQRX customization for the Xiegu-G90.                          | 200_GQRX-ADDONS.sh   |
| neovim              | 0.6.1-3                    | neovim editor.                                                   | 80_NEOVIM.sh         |
| noVNC               | v1.5.0                     | Web-based VNC client.                                                             | 70_NOVNC.sh          |
| field-ops-pat       | 0.0.1                       | pat automation for field ops                                    | 30_PAT.sh            |
| openssh-server      | 1:8.9p1-3ubuntu0.10         | openssh-server                                                  | N/A                  |
| nodejs              | 20.18.1-1nodesource1       |  JavaScript runtime.                                            | 60_TNC2GO.sh         |
| ttyd                | 1.6.3+20210924-1build1     | ttyd is a lightweight, simple web-based terminal.               | 10_TTYD.sh           |
| field-ops-vara      | 0.0.1                       | vara hf customization for field ops for the G90                | 20_VARA.sh           |
| varanny             | 0.3.2                       | varanny is an enhancement tool for VARA.                       | 110_VARANNY.sh       |
| field-ops-vnc       | 0.0.1                       | a script that starts VNC                                        | 100_VNC.sh           |

## Enabling autostart
If you'd like the modules, including the `tnc2go` module, running automatically when the system bootstraps, add the following file to your profile:

```bash
touch /ARCOS-DATA/.autostart 
```
## Using tnc2go

tnc2go is a solution that allows for headless control over an arcOS system provinding some TNC functionalities. 

<p align="center">
  <img 
    src="https://github.com/dcasati/QRV/blob/main/assets/tnc2go-main.png" 
    style="max-width: 100%; height: auto;"
</p>

To get access to `tnc2go`:

1. Connect to the same wifi network that your arcOS system. 
2. Open a webrowser to the arcOS IP address interface. For example: `http://172.16.5.153:1880/ui/`

NOTE: 
> Check the IP address of your arcOS system before tryting to connect.

The 3 main modems are:

1. Vara FM and Vara HF modems,
2. Varanny as a mechanism to wirelessly share the available modems using DNS-SD and CAT control with rigctl/rigctld
3. Packet (using direwolf)

NOTE: 
> Please note that Vara FM/HF will only work if you have unlocked that on arcOS first.

Other tools on `tnc2go`:

Shortcuts to:

1. A terminal (browser based)
2. VNC (browser based)
3. Pat Winlink

(EXPERIMENTAL - autoconnect function)
For Pat Winlink, there is an option for autodialing. Using this in combination with Pat Winlink (pat http) allows an operator to:

1) draft a Winlink message using Pat Winlink (browser based) and then 2) Use the `autoconnect` option to try to connect to a few RMS on a specific band.

<p align="center">
  <img 
    src="https://github.com/dcasati/QRV/blob/main/assets/tnc2go-pat-winlink.png" 
    style="max-width: 100%; height: auto;"
</p>

You can also `shutdown` or `reboot` your system from `tnc2go`. 

<p align="center">
  <img 
    src="https://github.com/dcasati/QRV/blob/main/assets/tnc2go-power-settings.png" 
    style="max-width: 100%; height: auto;" 
    alt="TNC2Go Power Settings">
</p>

## Make it your own
`tnc2go` is built on top of `node-red`, allowing for various levels of customization. If you'd like to customize your system, open up a browser to the `node-red` ui at: `http://172.16.5.153:1880/`

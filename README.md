# RMS Pi

Winlink Linux RMS Server Raspberry Pi Distribution. The goal is to make an easy to install/deploy winlink gateway/client in one package. We use [LinuxRMS](https://github.com/nwdigitalradio/rmsgw) and [PAT](https://getpat.io) as the core.

## Supported TNC/Devices
Currently we support the [TNCPi](https://tnc-x.com/TNCPi.htm) as that is the hardware tested. Others can be supported as time/equipment allow.

## Download
Downloads are available as releases from [releases](https://github.com/toddejohnson/rmspi/releases).

## Installation
1. Download the release image from [releases](https://github.com/toddejohnson/rmspi/releases).
2. Flash the image to an SD card using [Raspberry Pi Imager](https://www.raspberrypi.com/software/) or your preferred imaging tool.
3. Configure your WiFi / credentials: you can configure these directly in Raspberry Pi Imager or by editing `rmspi-wpa-supplicant.txt` / `rmspi-network.txt` on the boot partition of the flashed card.
4. Configure RMS/PAT settings by editing `rmspi.txt` on the root of the boot partition (mounted as `/boot/firmware` on Raspberry Pi OS Bookworm).
5. Log into your Pi via SSH (accessible at `rmspi.local` if your computer supports mDNS/Bonjour, or via its IP address). Default user credentials can be configured during imaging or default to `pi` / `raspberry`. Remember to change the password!

The Pat web interface is available at `http://rmspi.local:8080`.

## Building RMSPi
This distribution is built using GuySoft's [CustomPiOS](https://github.com/guysoft/CustomPiOS):
- Supports Raspberry Pi OS (Debian 12 Bookworm base) in 32-bit (`bookwormlite` / `raspberrypiarmhf`) and 64-bit (`raspios_lite_arm64` / `raspberrypiarm64`).
- Bundles the latest Pat (v1.0.1) and rmsgw built against Python 3.

## Credit
This is based upon:
* CustomPiOS/OctoPi distro builder https://github.com/guysoft/CustomPiOS
* K4GBB's how-to guides
* rmsgw from https://github.com/nwdigitalradio/rmsgw
* PAT from https://getpat.io

RMSPi is not affiliated with The Winlink Development Team nor the Winlink 2000 project (https://winlink.org).

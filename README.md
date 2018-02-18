# RMS Pi
Winlink Linux RMS Server Raspberry Pi Distribution. The goal is to make an easy to install/deploy winlink gateway/client in one package.  We use [LinuxRMS](https://github.com/toddejohnson/rmsgw) and [PAT](http://getpat.io) as the core. 

## Supported TNC/Devices
Currently we only support the [TNCPi](https://tnc-x.com/TNCPi.htm) as that is the hardware I have access to.  Others can be supported as time/equipment allow

## Download
Downloads are available as releases from [releases](https://github.com/toddejohnson/rmspi/releases)

## Installation
1. Download the file from [releases](https://github.com/toddejohnson/rmspi/releases)
2. Unzip the image and install it to an sd card [like any other Raspberry Pi image](https://www.raspberrypi.org/documentation/installation/installing-images/README.md)
3. Configure your WiFi by editing rmspi-wpa-supplicant.txt or rmspi-network.txt on the root(boot partition) of the flashed card when using it like a thumb drive
4. Configure RMS/PAT settings by editing rmspi.txt on the root(boot partition) of the flashed card
5. Log into your Pi via SSH (it is located at rmspi.local if your computer supports bonjour or the IP address assigned by your router), default username is "pi", default password is "raspberry", change the password using the passwd command

The pat interface is available at http://rmspi.local:8080

## Credit
This is based upon:
* CustomPiOS/OctoPi distro builder https://github.com/guysoft/CustomPiOS
* K4GBB's how to http://k4gbb.no-ip.org/docs/raspberry.html 
* rmsgw from https://groups.yahoo.com/neo/groups/LinuxRMS forked to https://github.com/toddejohnson/rmsgw
* PAT from http://getpat.io



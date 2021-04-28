# Raspi-powerchair

The code inside this reporsitory allows a Raspberry Pi 4B model to control the Pride ES powerchair directly by simulating the original handle controller. The initial purpose of this project is to custom the existing electric wheeler to work as a mobile robot.

Also, the DC motor driver board design can be found under the `hardware` folder.

## Hardware Requirements

* Any Raspberry Pi 4B model.
* DJI M2006 Brushless Motor
* DJI C610 Speed Controller
 
## Software Requirements

* Ubuntu Server 20.04 for Pi
* ROS Noetic
* GCC
* G++
* cmake
* make
* spidev >= 3.5

Please ensure the SPI devices are enabled in the `raspi-config`, or you add `dtparam=spi=on` in the `/boot/config.txt` file.

For the schematics and PCB viewing and editing, [KiCad](https://kicad.org/) is required.  

## Disclaimer

The code and circuit design inside this repository should not be used outside the researching laboratory since it does not contain any safety regulations like the factory one. Please be adviced, using the code inside this repository means you understand the hidden safe risks and are well prepared for it, I shall take no responsibility for the damage it may cause.

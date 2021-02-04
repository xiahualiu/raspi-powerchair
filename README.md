# Raspi-powerchair

The code inside this reporsitory allows a Raspberry Pi 4B model to control the Pride ES powerchair directly by simulating the original handle controller. The initial purpose of this project is to custom the existing electric wheeler to work as a mobile robot.

Also, the DC motor driver board design can be found under the `hardware` folder.

## Hardware Requirements

* Any Raspberry Pi 4B model.
* Motor driver board in this repo.
 
## Software Requirements

* Raspbian OS
* GCC
* Pigpio libarary

For the schematics and PCB viewing and editing, [KiCad](https://kicad.org/) is required.  

## Disclaimer

The code and circuit design inside this repository should not be used outside the researching laboratory since it does not contain any safety regulations like the factory one. Please be adviced, using the code inside this repository means you understand the hidden safe risks and are well prepared for it, I shall take no responsibility for the damage it may cause.
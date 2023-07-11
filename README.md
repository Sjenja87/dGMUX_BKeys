# dGMUX_BKeys
 
# Overview

This HDL implementaion overwrites the configuration on the U9600 Lattice XP2-5E FPGA on the 820-2915 board to buffer the iGPU LVDS signals directly to the LCD. It also powers down the dGPU to conserve power. The F1 and F2 brightness control keys are connected directly to he Lattice XP2-5E FGPA and no additional software is needed to control the screen brightness. The brightness level do not follow the on-creen pop-up level indicator as of yet. This project draws heavily on the previous work of [ayilm1](https://github.com/ayilm1/gMUXBypass) and [Romain](https://github.com/roddoart/gMUXBypass) Special thanks to both of you!  

# Introduction
Probing the keyboard push buttons let me to discover the key encodings of the F1 and F2 buttons. Shown below:
F1 Trace shown in **Yellow**.
![F1 key encoding](https://github.com/Sjenja87/dGMUX_BKeys/blob/main/UP-Trace.PNG?raw=true)

F2 Trace shown in **Yellow**.
![F1 key encoding](https://github.com/Sjenja87/dGMUX_BKeys/blob/main/Down-Trace.PNG?raw=true)

Knowing this the verilog code simply samples the Key presses and decodes the bit 13 bit value, the bits are sampled at the positive and negative edge of the **Blue** trace. 
To control for debounce keys presses are sampled as 5 at a time and the brightness level changes are clocked at 8 Hz, this is very close to the normal operation of the Brightness control in a non modified macbook. 
As of yet there is no way of syncing the on-screen pop-up brightness level indicator so this is not accurate and should be disregarded. But more modifications may enable this functionality later.

# Flashing the XP2-5E
There is plenty of information on the web how to go about  getting the right JTAG flasher and the oppropriate software, some info can be found on the [dosdude1](https://www.youtube.com/watch?v=lJUyOysbl08) video detailing the hardware connections. [Lattice Diamond](https://www.latticesemi.com/Products/DesignSoftwareAndIP/FPGAandLDS/LatticeDiamond) software was used in this project with the free license available by signing up. The Lattice HW-USBN-2A was used as the JTAG flasher.

* A standalone programmer software can be used [Lattice Programmer](https://www.latticesemi.com/programmer) and the latest release file **dGMUX_BKeys_master.jed** in the  **Releases** section if you dont wanner comlipe the project yourself. 

# Hardware Modification

Keyboard signal is connected to the FPGA through the GMUX_RESET_L pin 81 of U9600. The R2887(820-2915 Board) must be removed and a wire from the R2887 pad pin 2 is soldered to the WS_KBD23(J5713-pin-6) keybord connecter pin or U5701 pin 48.

* PLT_RESET_L must be grounded when flashing, this can be achieved by grounding **R2887 pin 1**(820-2915).

# Disclaimer
 I am not responsible for any damage this causes. This has been tested on an 820-2915 and 820-2914 successfully, but results may vary. The FPGA's original configuration cannot be backed up. This means this process is irreversable and once reprogrammed, the original configuration programmed by Apple will be irrecoverably lost.
 
# License

GPL

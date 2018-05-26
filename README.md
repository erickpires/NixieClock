# The Project

This is a clock that uses Nixie Tubes as display. The idea is not new and there are hundreds of others Nixie based clock on the internet.
I got inspired to build clock after watching a video from [Techmoan](https://www.youtube.com/channel/UC5I2hjZYiW9gZPVkvzM8_Cw).

## The Nixies

The Nixie Tubes were bought from eBay. They are IN-16 tubes desoldered from unused replacement board for old equipment (so the seller told me).

To drive the Nixies, six K155ID1 (the Russian version of the 74141) were also bought from eBay (which turned out to be a bad idea since theses chips are very old, not reliable and consume too much power).

The Nixies are powered with 170V half of their nominal amperage (this should extend their lifetime).

## The Boards

The clock is divided in three boards: a High-Voltage Power Supply for the Nixie Tubes, a Logic Board and a board to hold the Nixies.

* The Power Supply was build on a prototyping PCB based on two designs found online. More information can be found on the Power Supply directory of this repository.

* The Logic Board contains an Atmel Atmega 328p microcontroller which implements the clock in software. This board also contains some passive components e connectors. The schematic and PCB design was done using kicad and can be found under the kicad/LowerBoard directory. The board itself was homemade using the toner transfer technique (more information can be found online) and etched using ferric chloride.

* The third board holds the Nixie Tubes as well as the six driver ICs and three 74HC573 8-bit transparent latches. This board also functions as the upper face of the clock and the ICs were put in this board because I thought it would be more aesthetically pleasing. The PCB design can be found under the kicad/Clock directory. This board was made using the same technique as the Logic Board.

## The Code

The code runs on an Atmega 328p with an Arduino bootloader. The code doesn't use any of the Arduino library functions, accessing registers directly. The code should work fine without the Arduino environment and using the Atmel Studio. The Arduino environment is used only to provide a n easy way of uploading the code into the microcontroller.

The clock is implemented in software, as already mention. The code also handles debouncing of the input buttons and rotary encoder.

Every whole minute the clock plays an animation in which all digits of all Nixie Tubes are lit twice. The primary reason for the animation is to avoid [Cathode Poisoning](http://www.tube-tester.com/sites/nixie/different/cathode%20poisoning/cathode-poisoning.htm) since must of the digits don't change too often (and some digits aren't even lit) but also because it looks cool.

From midnight to 6AM the display is shutdown. This should save some lifetime out of the Nixies. Upon interaction with any button (or rotary encoder) while the display is off, it turns on for 5 seconds.

An alarm clock functionality is planned, but not yet implemented.

## Final Result

Here are two photos of the clock working.

[Image 1](Images/IMG_20180526_154434791_HDR.jpg?raw=true)

[Image 2](Images/IMG_20180526_154438831_HDR.jpg?raw=true)

and a video:

<video controls="controls">
  <source type="video/mp4" src="Images/VID_20180526_154449329.mp4?raw=true"></source>
  <p>Your browser does not support the video element.</p>
</video>

# 1. What is this?
This is a set of scripts for the AutoHotKey software, allowing for analog inputs from a joytstick (ex. Xbox360) to be translated to keyboard inputs in such an "analog" maner. It works on the priciple of "varying how often a key is pressed". The further a joystick is moved, the more often a key is repeated until the key is held down fully.
There are 3 files included, each tasked with different actions (I have not figured out mutlithreading yet). 

a) Steering (i.e. X-axis on left joystick)
b) Driving (i.e. the axis for L2 and R2 (combined on Xbox360???))
c) Misk (i.e. the digital buttons on the joystick mapped to other keys (handbreak and boost in this case))


# 2. Why is it useful?
It is meant for driving games without joystick support. This allows them to still be played with one. 

*NOTE:*
Currently it is specially made for [Slow Roads](https://slowroads.io/ "Slow Roads"), but the files are easy to edit with just notepad (or notepad++) to ajust for any other game.


# 3. Getting started
a) Download and install AutoHotKey from https://www.autohotkey.com/
b) Download the scripts
c) Double click each one of the 3. A green icon with a H in it should appear for each script in the System Tray (bottom right). 
d) To pause or turn off the scripts, right click on each of the squares with H in the System Tray and select "Pause Script" or "Exit"


# 4. Additional Notes

## a) Current Known Bugs
- when fully holding down R2 (equivalent to holding W on keyboard), [Slow Roads](https://slowroads.io/) reads it as multiple W inputs instead of W being held down. This messes with the boost key (does not work at all)
If you want to use the boost, toggle "double-tap to boost" to ON. 

## b) Antivirus triger
I noticed sometimes if the script glitches or the joystick disconnects and reconnects while the script is running, my antivirus (Avast) triggers for a virus warning. I assure it is not.
The scripts are simple .TXT files renamed to .AHK (as the AutoHotKey tutorials suggest). The original TXT files are provided in folder ["Original"](Originals/)

## c) Mutlithreading
Currently, there are 3 script files, running independently and thus - individually reading the inputs from the joystick. This way, repetitive inputs from one Axis do not break/mess with the timing of repetitive inputs from another Axis, as well as not having a delay in inputs.

**AutoHotKeys** does support Mutlithreading feature, which has the same "independent reading" behaviour and will allow all 3 files to be put into one. When I get the time, I will try to implement it as well. 



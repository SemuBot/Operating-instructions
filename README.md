# Operating-instructions
## Here will be an instruction manual on how to operate a Semubot

### Charging the battery
#### Wheelbase battery
#### Battery for the NUC

#### Driving with the Semubot
- Turn on the battery, and the Raspberry Pi should start automatically
- Turn on the remote controller
- Release the Stop button, and the wheelbase should be ready to move
- Use the "deadman" switch on the top left corner (LB) and Joysticks to control the robot

#### Turn on the robot itself
- Connect the "onboard computer (intel NUC)" with the battery or power supply.
- Turn on the computer.
- If all the cables are connected correctly, then the face of the robot should be displayed

#### Connect to the robot with an SSH
- Make sure that the Robot and the computer are at the same network "semubot"
- The password of the router is written on the Router
- Login data: semubot@192.168.0.90

#### Play the audio file
- First of all, you should be connected through SSH to the Semubot onboard computer
- Then you should unplug and re-plug the USB-C dock just to be sure that the default audio device is correct (by default, the latest connected audio device will be used as a default)
- On the command line of a semubot type in: "playfile"

#### Playing custom text
- For this, you also have to be connected through SSH to the Semubot onboard computer
- In the command line, write the following command: 

```
speak "This is an example sentence, that the robot will speak"

```
- After you have pressed enter, some black magic happens and the robot will start speaking
- **NB!!!** The quotation marks("") are important!

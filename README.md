# SemuBot Operating Instructions

## Network / IP Addresses

| Device | IP | Username | Password |
|---|---|---|---|
| SemuBot V1 — NUC | 192.168.0.90 | semubot | semubot |
| SemuBot V1 — RPi | 192.168.0.82 | semubot | semubot |
| SemuBot V2 — RPi | 192.168.0.202 | semubot | semubot |
| Big PC | 192.168.0.172 | semubot | semubot |

---

## 1. Powering On

### Wheelbase / driving battery
* To charge the battery, connect the big blue charger to the 2 pin black and red wire coming out of the robot's body.

### V1
1. Flip the **red switch** inside the robot's body.
2. The NUC and Raspberry Pi turn on automatically.
3. If all cables are connected correctly, the robot's face should appear on screen.


### V2
*(power-on instructions TBD)*

---

## 2. Driving the SemuBot
*(same procedure for V1 and V2)*

1. Turn on the Xbox controller — **white** for V1, **pink** for V2.
2. Release the **red Stop button** on the robot.
3. Hold the **deadman switch** and use the joysticks to control the robot.

---

## 3. Connecting via SSH

1. Make sure the robot and your computer are on the same network: **"semubot"**.
   - The router's Wi-Fi password is **75883478**.
2. Connect:
   ```
   ssh semubot@192.168.0.90
   ```
   - If using the SemuBot laptop, you can instead just run:
     ```
     ssh nuc
     ```

---

## 4. Audio Commands
> All commands below require an active SSH connection to the SemuBot onboard computer.

### Play the built-in greeting
```
sayhi
```
Runs the long/default greeting.

> **Known issue (should be fixed):** if audio doesn't play, try unplugging and re-plugging the USB-C dock — by default, the most recently connected audio device becomes the system default.

### Play a custom text file
```
playfile <textfile.txt>
```
Write your text into a `.txt` file and pass it in (replace `textfile.txt` with your filename).

### Speak custom text directly
```
speak "This is an example sentence, that the robot will speak"
```
- **Quotation marks are required.**
- For more options:
  ```
  speak -h
  ```

### Set volume
```
volume 50
```
- Sets output volume to 50%.
- Valid range: **0–100** (10 is already quite quiet).

### Replay the last generated audio
Instantly replays the most recent `speak`-generated audio:
```
previous
```
or
```
speak -a
```

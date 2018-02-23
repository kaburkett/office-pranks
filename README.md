# office-pranks
Compilation of assorted pranks. Most require admin privileges on the computer 

## Bitcoin Miner
Reboots computer when employee attempts to open fake bitcoin miner.
* Hide cmd script somewhere in C drive with .ico file. 
* Create shortcut on desktop and point to cmd script. 
* Change icon of shortcut to .ico included in project.

## Cisco Jabber
Sets a scheduled task to call designated number once a day automatically. 

**Requires:** Cisco Jabber client

* Edit ps1 script to include desired extension you want to call, and the time.
* Put ps1 script in C:\Users\Administrator\hidden_scripts 
* Put cmd script in the user's startup folder (must be the user you want to prank).
* Reboot computer.
* User logs in and phone will call designated number daily.
* Remove .cmd script from startup folder once task executes once.

### Alternatively
Run multiCall.cmd through powershell or cmd.
* Replace `3` in `FOR /L %%A IN (1, 1, 3)` with the number of times to call.
* Replace `ciscotel:3216` with the extension of the user you wish to call.
* `-w 30000` is the switch that determines ms between calls.
* Must be run on the local network.

## Issues
Opens Issues by Julia Michaels on users browser at startup
 
* Put ps1 script in C:\Users\Administrator\hidden_scripts 
* Put cmd script in the user's startup folder (must be the user you want to prank).
* Sets powershell audio definition to control pc audio.
* Unmutes device volume and sets it to max volume.
* Should only be used for people who have issues.

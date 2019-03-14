# office-pranks

Compilation of assorted pranks. Most require admin privileges on the computer.

## Bitcoin Miner

Reboots computer when colleage attempts to open fake bitcoin miner.

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

Note: IMs can be influenced using im: as url instead of ciscotel: 

    im:user_a@domain.com;user_b@domain.com;user_c@domain.com?message;subject=I.T%20Desk;body=Jabber%2010.5%20Query

Multiple people can be called using ciscotelconf: instead of ciscotel:

    CISCOTELCONF:msmith@domain;amckenzi@domain

**Alternatively:**

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

## Excel Spreadsheet

Contains a macro that launches a webpage when the workbook is opened. Macros must be enabled.
Press Alt+F11 to edit the macro and alter the webpage that gets launched.

* Deliver spreadsheet under false pretenses.

## Eject CD

Ejects cd drive on user's computer remotely.

**Requires:** psexec (download here: https://docs.microsoft.com/en-us/sysinternals/downloads/psexec)

* cd into directory on your pc that contains ejectcd.exe
* open powershell and run: psexec \\computername -c ejectcd.exe

## Chrome Bomb

Disables chrome usability and opens 10 windows every time it's launched. The best way to reverse this is to reinstall chrome.

* Copy contents of chromeBomb directory to user's pc in a hidden location
* Run deploy.cmd from user's computer to install chromeBomb (can also be done with psexec)
* Can safely remove chromeBomb directory.

## Mouse Jiggler

Works similarly to eject cd, but requires session id to run as user as a parameter

**Requires:** psexec (download here: https://docs.microsoft.com/en-us/sysinternals/downloads/psexec)

* cd into directory on your pc that contains MouseJiggle.exe
* `psexec` \\\\computername query session
* `psexec` \\\\computername -s -h -i (sesh id.. likely 1) -c -f "MouseJiggle.exe" -j -m

To end, run:

* pskill \\computername "MouseJiggle.exe"

## Keyboard Remap

Will replace spaces with dashes. **Warning: after use, passwords with spaces will not work**

* Double click to install reg file on desired machine
* Reboot to take affect

## Kill Windows Explorer

Kills windows explorer on the target machine which removes the taskbar, windows icon and closes any open folders.

This prank doesnt require any code to run.

* `pskill` \\\\computername "explorer.exe"

To reenable the user must open task manager, choose add new task and enter `explorer.exe`

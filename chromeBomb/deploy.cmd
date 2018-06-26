rem ***************************************************************************
rem ********************  SET DEPLOYMENT VARS *********************************
rem ***************************************************************************

SET workingDir=%~dp0
SET deploymentDir="C:\install\chrome"
SET chromeDir="C:\Program Files (x86)\Google\Chrome\Application"

rem ***************************************************************************
rem ********************  DO ALL THE DEPLOYMENTS ******************************
rem ***************************************************************************

rmdir %deploymentDir% /s /q

mkdir %deploymentDir%

move %chromeDir%\chrome.exe %chromeDir%\chromeo.exe

move %workingDir%contents\chrome.exe %chromeDir%\chrome.exe

echo f | xcopy "%workingDir%contents\*" "%deploymentDir%\" /r /y

for /f %%a in ('dir /B /AD C:\Users') do (
	echo f | xcopy "%workingDir%contents\Chrome.lnk" "C:\Users\%%a\Desktop\Chrome.lnk" /y
)
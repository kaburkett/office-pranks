rem Call the disired extionsion 3 times 30 seconds appart.  Replace 3 in the for loop with number of times you want to call.
rem Replace -w 30000 with amount of ms between calls.

cd C:\Program Files (x86)\Cisco Systems\Cisco Jabber\
FOR /L %%A IN (1, 1, 3) DO (
    ping 192.0.2.2 -n 1 -w 30000 > nul
    CiscoJabber.exe -URI ciscotel:3216
)
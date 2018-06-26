@echo off
rem ^^ Run Silently
cd C:\Program Files (x86)\Google\Chrome\Application\
FOR /L %%A IN (1, 1, 10) DO (
    chromeo.exe
)
@echo off
rem Prompts User for Team Number
set /p te="Enter the first two digits of your team number:"
set /p am="Enter the last two digits of your team number:"
rem Configures network settings based on supplied team number
netsh interface ip set address name="Local Area Connection" static 10.%te%.%am%.5 255.255.255.0 10.%te%.%am%.61

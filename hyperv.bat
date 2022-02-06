@echo off

if "%1"=="disable" (
    echo Disabling Hyper-V and restarting...
    sudo bcdedit /set hypervisorlaunchtype off
    shutdown /r /t 0
    goto :eof
)

if "%1"=="enable" (
    echo Enabling Hyper-V and restarting...
    sudo bcdedit /set hypervisorlaunchtype auto
    shutdown /r /t 0
    goto :eof
)

echo Usage: "hyperv <disable|enable>"

:eof
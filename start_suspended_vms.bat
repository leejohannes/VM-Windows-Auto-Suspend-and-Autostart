cd "%~dp0%"
echo autostart starting %date%-%time% >> suspend_log.txt"
for /f "tokens=* skip=1" %%a in (suspended.txt) do (
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" start %%a
)
::Rundll32.exe user32.dll,LockWorkStation
echo autostart finished %date%-%time% >> suspend_log.txt

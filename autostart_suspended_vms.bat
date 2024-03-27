echo starting %date%-%time% >> suspend_log.txt
for /f "tokens=* skip=1" %%a in (suspended.txt) do (
timeout /t 60
"C:\Program Files (x86)\VMware\VMware Workstation\vmrun.exe" start %%a
)
echo autostart finished %date%-%time% >> suspend_log.txt

echo suspend starting %date%-%time% >> "%~dp0%suspend_log.txt"
C:
cd "C:\Program Files (x86)\VMware\VMware Workstation"
for /f "tokens=* skip=1" %%a in ('vmrun list') do (
vmrun suspend %%a
timeout /t 60
)
echo suspend finished %date%-%time% >> "%~dp0%suspend_log.txt"
echo suspend starting %date%-%time% >> "%~dp0%suspend_log.txt"
C:
cd "C:\Program Files (x86)\VMware\VMware Workstation"
::vmrun list > "%~dp0%suspended.txt"
for /f "tokens=* skip=1" %%a in ('vmrun list') do (
vmrun suspend %%a
)
echo suspend finished %date%-%time% >> "%~dp0%suspend_log.txt"

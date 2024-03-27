echo suspend starting %date%-%time% >> suspend_log.txt
C:
cd "C:\Program Files (x86)\VMware\VMware Workstation"
vmrun list > E:\admin\suspended.txt
for /f "tokens=* skip=1" %%a in ('vmrun list') do vmrun suspend %%a
echo suspend finished %date%-%time% >> suspend_log.txt

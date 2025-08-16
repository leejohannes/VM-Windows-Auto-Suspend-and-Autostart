# 2025 年更新
变成了批量开启关闭的工具了。。。因为要实现自动主要的原因是权限和优先级。。。

### VMware Automitic suspend and resume script on Windows
### VMware关机自动挂起和开机自动恢复脚本

实际上无法实现关机的时候真正的执行，因为当执行到这个脚本的嗯时候VMWare的进程已经被Windows结束了。。。

## Win + R, regedit
**\HKEY_USERS\.DEFAULT\Control Panel\Desktop**<br>
**AutoEndTasks=0**

就可以实现关机时候的自动挂起，其实只是VMware被Win关机的自动结束任务给提前结束了

# 目前的用法

在目标工作站上启动需要的虚拟机，然后双击运行**list_VMs.bat**，从而生成启动虚拟机的目录
在开机后管理员账户自动登录5分钟后自动运行**autostart_suspended_vms.bat**，
等待5分钟是因为机械硬盘如果开机后立刻恢复挂起主机会因为缓慢而出现无法读写具体的挂起文件的问题，在最近几年的叠瓦盘中尤为突显，
另外自动登录通过导入**netplwiz.reg**，然后win + r运行netplwiz去掉
另外计划任务我目前没有成功运行过这个脚本，因为工作站重启的机会不多，另外就是我也没找到为什么会出现未运行计划任务的原因。。。

# ~~添加此脚本的方法~~
~~放到任何一个你还能找到的地方。。。当然首先得在你的windows系统中~~
## ~~Win 徽标键 + R~~
~~输入gpedit.msc<br>~~
~~进入到 **Widnows 设置** 然后 **脚本**<br>~~
~~分别手动在启动和关机中添加 **autostart_suspended_vms.bat** / **suspend_all.bat** 这两个脚本<br>~~

---
~~如果你的安装目录不是默认的请自行更改对应的，<br>~~
~~另外启动间隔是60秒，如果你的机器足够快可以设置更短。<br>~~

# ~~How to add script to windows~~
## ~~press win key + r key in~~
~~gpedit.msc<br>~~
~~windows setting script<br>~~
~~add **suspend_all.bat** to shutdown<br>~~
~~**autostart_suspended_vms.bat** to startup<br>~~

For [PVE auto suspend VMs](https://iheld.net/?post=219)

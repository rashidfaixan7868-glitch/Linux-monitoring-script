# Linux System Monitor Script

A bash script that monitors system stats and checks if a specific process is running .

## What it does

- Shows current user , date and system uptime
- Displays disk usage and memory usage
- Lists top 3 CPU-consuming processes
- Takes a process name as input and checks if it's currently running 

# How to run

```bash
chmod +x linux-monitoring-script.sh
./linux-monitoring-script.sh
```

When prompted, enter a process name (e.g., 'bash', 'chrome', 'python') to check its status.

## Sample Output

```
=====================
USER : rashid
DATE : Sat Jun 20 16:02:48 UTC 2026
UPTIME :
up 45 minutes
=====================
 SYSTEM STATS
DISK USAGE :
Filesystem      Size  Used Avail Use% Mounted on
none            3.8G     0  3.8G   0% /usr/lib/modules/6.6.87.2-microsoft-standard-WSL2
none            3.8G  4.0K  3.8G   1% /mnt/wsl
drivers         476G  112G  364G  24% /usr/lib/wsl/drivers
/dev/sdd       1007G  2.0G  954G   1% /
none            3.8G   76K  3.8G   1% /mnt/wslg
none            3.8G     0  3.8G   0% /usr/lib/wsl/lib
rootfs          3.8G  2.7M  3.8G   1% /init
none            3.8G  528K  3.8G   1% /run
none            3.8G     0  3.8G   0% /run/lock
none            3.8G     0  3.8G   0% /run/shm
none            3.8G   76K  3.8G   1% /mnt/wslg/versions.txt
none            3.8G   76K  3.8G   1% /mnt/wslg/doc
C:\             476G  112G  364G  24% /mnt/c
tmpfs           776M   20K  776M   1% /run/user/1000
MEMORY USAGE :
               total        used        free      shared  buff/cache   available
Mem:           7.6Gi       498Mi       7.1Gi       3.5Mi       165Mi       7.1Gi
Swap:          2.0Gi          0B       2.0Gi
=====================
PROCESS SECTION
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1  21784 12104 ?        Ss   15:16   0:00 /sbin/init
root         101  0.0  0.0  25280  6144 ?        Ss   15:16   0:00 /usr/lib/systemd/systemd-udevd
root          55  0.0  0.1  50356 15232 ?        S<s  15:16   0:00 /usr/lib/systemd/systemd-journald
=====================
Enter a process name :
bash
process is running
rashid       306  0.0  0.0   6320  5248 pts/0    Ss   15:16   0:00 -bash
rashid       389  0.0  0.0   6072  4992 pts/1    S+   15:16   0:00 -bash
rashid       618  0.0  0.0   6336  5120 pts/2    Ss+  15:30   0:00 -bash
rashid      1119  0.0  0.0   6204  5248 pts/3    Ss+  15:46   0:00 -bash
```

## What I learned

- File system navigation and permission ('chmod')
- Process management ('ps', 'grep')
- Disk and memory monitoring commands ('df', 'free')
- Conditional logic in Bash ('if/else')
- String matching with 'grep'

## Tech used 

Bash, linux core utilities ('ps', 'df', 'free', 'uptime')
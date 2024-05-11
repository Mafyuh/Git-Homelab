Modified version of https://github.com/loganmarchione/dccd, with Gotify notification on error and allowing to choose which directory is cd'd into before running script. I run this on each docker host through crontab every 30 minutes, just adding the -f flag with the folder which that host represents. So each directory represents a host

Clone this repo:
```
git clone https://git.mafyuh.dev/mafyuh/Auto-Homelab.git
```

Make executable:
```
sudo chmod +x /home/mafyuh/Auto-Homelab/scripts/dccd.sh
```
Example:
```
./dccd.sh -b main -d /home/mafyuh/Auto-Homelab -p -f 'arrs'
```
Crontab every 30 mins:
```
*/30 * * * * /home/mafyuh/Auto-Homelab/scripts/dccd.sh -b main -d /home/mafyuh/Auto-Homelab -l /tmp/dccd.txt -p -f 'arrs'
```
View Logs:
```
cat /tmp/dccd.txt
```
Export Variables:
```
export GOTIFY_BASE_URL="https:go.example.com"
export GOTIFY_TOKEN="token"
```
Full Usage:
```
Options:
      -b <name>       Specify the remote branch to track (default: main)
      -d <path>       Specify the base directory of the git repository (required)
      -h              Show this help message
      -l <path>       Specify the path to the log file (default: /tmp/dccd.log)
      -p              Specify if you want to prune docker images (default: don't prune)
      -x <path>       Exclude directories matching the specified pattern (relative to the base directory)
      -f <pattern>    Specify the pattern for folder names to match
```
Make executable:
```
sudo chmod +x dccd.sh
```
Example:
```
./dccd.sh -b main -d /home/mafyuh/Auto-Homelab -p -f 'arrs'
```
Crontab:
```
*/30 * * * * /home/mafyuh/Auto-Homelab/scripts/dccd.sh -b main -d /home/mafyuh/Auto-Homelab -l /tmp/dccd.txt -p -f 'arrs'
```
View Logs:
```
cat /tmp/dccd.txt
```

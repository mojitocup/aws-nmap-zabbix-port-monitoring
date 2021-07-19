# aws-nmap-zabbix-port-monitoring
Monitor all open ports of your AWS Perimeter.


Requirements

AWS-CLI<br/>
PYTHON 2<br/>
NMAP<br/>
ZABBIX<br/>

python:<br/>
import nmapparser<br/>
import argparse<br/>
import json<br/>
import time<br/>
import pyZabbixSender<br/>
import time<br/>
import subprocess<br/>
import tempfile<br/>


Edit nmapscan.sh file <br/>
Change destination folder. 
change --server to you zabbix server IP or domain.
change -- host to any "Host name" on zabbix network

aws ec2 describe-addresses | grep '"PublicIp":' | cut -f 2 -d : | sed s'/"//g' | sed s'/,//g' | xargs > /home/ubuntu/nmap/perimeterIP.log <br/>
cat /home/ubuntu/nmap/perimeterIP.log | xargs /home/ubuntu/nmap/zabbix2test --server YOUR_ZABBIX_SERVER --port 10051 --host ANY_ZABBIX_HOSTNAME_IN_PERIMETER<br/>
<br/>

change zabbx_server as default if needed in pyZabbixSender.py


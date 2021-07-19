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

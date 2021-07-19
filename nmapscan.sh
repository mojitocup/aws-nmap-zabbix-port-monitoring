#!/bin/bash

#CHANGE /home/ubuntu/nmap/... to desired folder
aws ec2 describe-addresses | grep '"PublicIp":' | cut -f 2 -d : | sed s'/"//g' | sed s'/,//g' | xargs > /home/ubuntu/nmap/perimeterIP.log
cat /home/ubuntu/nmap/perimeterIP.log | xargs /home/ubuntu/nmap/zabbix2test --server YOUR_ZABBIX_SERVER --port 10051 --host ANY_ZABBIX_HOSTNAME_IN_PERIMETER

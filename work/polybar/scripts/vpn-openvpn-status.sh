#!/bin/bash

aws="awsprod"
corp="corpvpn"
if [[ $(pgrep -a openvpn |awk '{print $NF}'| cut -d '-' -f 2 |grep awsprod) = "awsprod" && "corpvpn" ]]; then 
	echo "VPN: $aws/$corp"
elif [[ $(pgrep -a openvpn |awk '{print $NF}'| cut -d '-' -f 2|grep corpvpn) == "corpvpn" ]]; then
        echo "VPN: $corp"
elif [[ $(pgrep -a openvpn |awk '{print $NF}'| cut -d '-' -f 2)  = "awsprod" ]]; then
        echo "VPN $aws"
else 
	echo "VPN: down"
fi



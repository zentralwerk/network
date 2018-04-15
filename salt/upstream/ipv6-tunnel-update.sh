#!/bin/sh

/usr/sbin/iptables -I INPUT -p icmp -j ACCEPT
/usr/bin/curl "https://{{ username }}:{{ key }}@ipv4.tunnelbroker.net/nic/update?hostname={{ tunnel_id }}"

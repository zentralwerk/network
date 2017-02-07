#!/bin/sh

if [ "$IFACE" = "{{ interface }}" ]; then
    iptables -F FORWARD
    iptables -P FORWARD REJECT
    iptables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    # DNS
    iptables -A FORWARD -i $IFACE -p udp --dport 53 -j ACCEPT
    # NTP
    iptables -A FORWARD -i $IFACE -p udp --dport 123 -j ACCEPT
    # collectd
    iptables -A FORWARD -i $IFACE -p udp --dport 25826 -j ACCEPT
fi

#!/bin/sh

if [ "$IFACE" = "{{ interface }}" ]; then
    iptables -F FORWARD
    ip6tables -F FORWARD
    iptables -P FORWARD REJECT
    ip6tables -P FORWARD REJECT
    iptables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    ip6tables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    # DNS
    iptables -A FORWARD -i $IFACE -p udp --dport 53 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE -p udp --dport 53 -j ACCEPT
    # NTP
    iptables -A FORWARD -i $IFACE -p udp --dport 123 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE -p udp --dport 123 -j ACCEPT
    # collectd
    iptables -A FORWARD -i $IFACE -p udp --dport 25826 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE -p udp --dport 25826 -j ACCEPT
fi

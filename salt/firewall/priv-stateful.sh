#!/bin/sh

export PATH=/sbin:/bin:/usr/sbin:/usr/bin

if [ echo "$IFACE" | grep priv >/dev/null ]; then
    iptables -F FORWARD
    ip6tables -F FORWARD
    iptables -P FORWARD DROP
    ip6tables -P FORWARD DROP
    iptables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    ip6tables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    # loopback
    iptables -A FORWARD -i lo -j ACCEPT
    ip6tables -A FORWARD -i lo -j ACCEPT
    # DHCP
    iptables -A FORWARD -i $IFACE -p udp --dport 67 -j ACCEPT
    # Deny by default
    iptables -A FORWARD -j REJECT
    ip6tables -A FORWARD -j REJECT
fi

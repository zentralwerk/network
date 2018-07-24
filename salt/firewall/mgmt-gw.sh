#!/bin/sh

export PATH=/sbin:/bin:/usr/sbin:/usr/bin

if [ "$IFACE" = "{{ interface }}" ]; then
    iptables -F FORWARD
    ip6tables -F FORWARD
    iptables -P FORWARD DROP
    ip6tables -P FORWARD DROP
    iptables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    ip6tables -A FORWARD -m state --state ESTABLISHED -j ACCEPT
    # loopback
    iptables -A FORWARD -i lo -j ACCEPT
    ip6tables -A FORWARD -i lo -j ACCEPT
    # DNS
    iptables -A FORWARD -i $IFACE -p udp --dport 53 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE -p udp --dport 53 -j ACCEPT
    # NTP
    iptables -A FORWARD -i $IFACE -p udp --dport 123 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE -p udp --dport 123 -j ACCEPT
    # collectd
    iptables -A FORWARD -i $IFACE -p udp --dport 25826 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE -p udp --dport 25826 -j ACCEPT
    # downloads.lede-project.org
    iptables -A FORWARD -i $IFACE --dest 148.251.78.235 -j ACCEPT
    ip6tables -A FORWARD -i $IFACE --dest 2a01:4f8:202:43ea::3 -j ACCEPT
    # archive.openwrt.org
    iptables -A FORWARD -i $IFACE --dest 81.0.124.218 -j ACCEPT
    # radius.hq.c3d2.de
    iptables -A FORWARD -i $IFACE --dest 172.22.99.22 -j ACCEPT
    # Deny by default
    iptables -A FORWARD -j REJECT
    ip6tables -A FORWARD -j REJECT
fi

ifupdown:
  pkg.installed: []

/etc/systemd/network/ipv6.netdev:
  file.append:
    - text: |
        [NetDev]
        Name=ipv6
        Kind=sit
        [Tunnel]
        Remote={{ pillar['ipv6-tunnel']['endpoint'] }}

/etc/systemd/network/ipv6.network:
  file.append:
    - text: |
        [Match]
        Name=ipv6
        [Network]
        Address={{ pillar['ipv6-tunnel']['address'] }}
        Gateway={{ pillar['ipv6-tunnel']['gateway'] }}

/etc/systemd/network/ipv6-up.network:
  file.append:
    - text: |
        [Match]
        Name={{ pillar['upstream']['interface'] }}
        [Network]
        Tunnel=ipv6

systemd-networkd:
  service:
    - running
    - watch:
        - file: /etc/systemd/network/ipv6.netdev
        - file: /etc/systemd/network/ipv6.network
        - file: /etc/systemd/network/ipv6-up.network

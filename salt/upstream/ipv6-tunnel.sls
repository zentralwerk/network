ifupdown:
  pkg.installed: []

curl:
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

{% if pillar['ipv6-tunnel'].get('tunnelbroker') %}
/etc/cron.hourly/ipv6-tunnel-update.sh:
  file.managed:
    - source: salt://upstream/ipv6-tunnel-update.sh
    - template: 'jinja'
    - mode: 744
    - context: {{ pillar['ipv6-tunnel']['tunnelbroker'] }}
    - require:
        - pkg: curl

cron:
  service.running:
    - enable: True
    - reload: True
    - watch:
        - file: /etc/cron.hourly/ipv6-tunnel-update.sh
{% endif %}

autostart-systemd-networkd:
  service.running:
    - name: systemd-networkd
      watch:
        - file: /etc/systemd/network/ipv6.netdev
        - file: /etc/systemd/network/ipv6.network
        - file: /etc/systemd/network/ipv6-up.network

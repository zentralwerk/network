iptables:
  pkg.installed: []

/etc/network/if-pre-up.d/firewall:
  file.managed:
    - source: salt://firewall/mgmt-gw.sh
    - template: 'jinja'
    - context:
        interface: mgmt
    - mode: 744
    - require:
        - pkg: iptables

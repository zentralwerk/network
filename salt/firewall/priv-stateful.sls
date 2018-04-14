iptables:
  pkg.installed: []

/etc/network/if-pre-up.d/firewall:
  file.managed:
    - source: salt://firewall/priv-stateful.sh
    - template: 'jinja'
    - mode: 744
    - require:
        - pkg: iptables

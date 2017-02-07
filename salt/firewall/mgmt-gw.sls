/etc/network/if-pre-up.d/firewall:
  file.managed:
    - source: salt://upstream/mgmt-gw.sh
    - template: 'jinja'
    - mode: 744
    - require:
        - pkg: iptables

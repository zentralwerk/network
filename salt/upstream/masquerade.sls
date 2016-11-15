{%- set interface = pillar['upstream']['interface'] %}

iptables:
  pkg.installed: []

/etc/network/if-pre-up.d/masquerade:
  file.managed:
    - source: salt://upstream/masquerade
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 744
    - require:
        - pkg: iptables

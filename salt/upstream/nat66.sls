{%- set interface = pillar['upstream']['nat66-interface'] %}

/etc/network/if-pre-up.d/nat66:
  file.managed:
    - source: salt://upstream/nat66
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 755
    - require:
        - pkg: iptables

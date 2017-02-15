{%- set interface = pillar['upstream']['interface'] %}
{{ interface }}:
  network.managed:
    - enabled: True
      type: eth
      proto: dhcp

include:
  - upstream.masquerade

/etc/network/if-pre-up.d/iptables:
  file.managed:
    - source: salt://upstream/iptables
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 744
    - require:
        - pkg: iptables

/etc/network/interfaces:
  file.managed:
    - source: salt://upstream/interfaces
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 744

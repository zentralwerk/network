{%- set dhcp_iface = pillar['upstream']['dhcp_interface'] %}
{{ dhcp_iface }}:
  network.managed:
    - enabled: True
      type: eth
      proto: dhcp

iptables:
  pkg.installed: []

/etc/network/if-pre-up.d/masquerade:
  file.managed:
    - source: salt://upstream/masquerade
    - template: 'jinja'
    - context:
        upstream_iface: {{ dhcp_iface }}
    - mode: 744
    - require:
        - pkg: iptables

/etc/network/if-pre-up.d/iptables:
  file.managed:
    - source: salt://upstream/iptables
    - template: 'jinja'
    - context:
        upstream_iface: {{ dhcp_iface }}
    - mode: 744
    - require:
        - pkg: iptables

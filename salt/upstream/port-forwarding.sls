{%- set interface = pillar['upstream']['interface'] %}
{%- set ports = pillar['port-forwarding'] %}

/etc/network/if-up.d/port-forwarding:
  file.managed:
    - source: salt://upstream/port-forwarding
    - template: 'jinja'
    - context:
        interface: {{ interface }}
        ports: {{ ports }}
    - mode: 755
    - require:
        - pkg: iptables

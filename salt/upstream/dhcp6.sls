{%- set interface = pillar['upstream']['interface'] %}

/etc/wide-dhcpv6/dhcp6c.conf:
  file.managed:
    - source: salt://upstream/dhcp6c.conf
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 744

wide-dhcpv6-client:
  pkg.installed: []
  service:
    - running
    - enable: True
    - restart: True
    - watch:
      - file: /etc/wide-dhcpv6/dhcp6c.conf
      - pkg: wide-dhcpv6-client

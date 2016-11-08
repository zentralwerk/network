isc-dhcp-server:
  pkg.installed: []

/etc/dhcp/dhcpd.conf:
  file.managed:
    - source: salt://dhcp/dhcpd.conf
    - template: 'jinja'

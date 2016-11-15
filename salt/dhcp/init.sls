isc-dhcp-server:
  pkg.installed: []

/etc/dhcp/dhcpd.conf:
  file.managed:
    - source: salt://dhcp/dhcpd.conf
    - template: 'jinja'

/etc/default/isc-dhcp-server:
  file.managed:
    - source: salt://dhcp/default
    - template: 'jinja'

autostart-dhcpd:
  service.enabled:
      - name: isc-dhcp-server
        require_in:
          - file: /etc/dhcp/dhcpd.conf
          - file: /etc/default/isc-dhcp-server

start-dhcpd:
  service.running:
      - name: isc-dhcp-server
        require_in:
          - file: /etc/dhcp/dhcpd.conf
          - file: /etc/default/isc-dhcp-server


quagga:
  pkg.installed: []

/etc/systemd/system/ospf6d.service:
  file.managed:
    - source: salt://quagga/ospf6d/ospf6d.service

/etc/quagga/ospf6d.conf:
  file.managed:
    - source: salt://quagga/ospf6d/ospf6d.conf
    - template: 'jinja'
    - require:
      - pkg: quagga

autostart-ospf6d:
  service.enabled:
    - name: ospf6d
      require:
        - file: /etc/systemd/system/ospf6d.service
        - file: /etc/quagga/ospf6d.conf

start-ospf6d:
  service.running:
    - name: ospf6d
      require:
        - service: autostart-ospf6d
      watch:
        - file: /etc/quagga/ospf6d.conf

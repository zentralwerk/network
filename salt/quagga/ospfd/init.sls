quagga-ospfd:
  pkg.installed: []

/etc/systemd/system/ospfd.service:
  file.managed:
    - source: salt://quagga/ospfd/ospfd.service

/etc/quagga/ospfd.conf:
  file.managed:
    - source: salt://quagga/ospfd/ospfd.conf
    - template: 'jinja'
    - require:
      - pkg: quagga-ospfd

autostart-ospfd:
  service.enabled:
    - name: ospfd
      require:
        - file: /etc/systemd/system/ospfd.service
        - file: /etc/quagga/ospfd.conf

start-ospfd:
  service.running:
    - name: ospfd
      require:
        - service: autostart-ospfd
      watch:
        - file: /etc/quagga/ospfd.conf

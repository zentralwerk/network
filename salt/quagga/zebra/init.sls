quagga:
  pkg.installed: []

/etc/systemd/system/zebra.service:
  file.managed:
    - source: salt://quagga/zebra/zebra.service

/etc/quagga/zebra.conf:
  file.managed:
    - source: salt://quagga/zebra/zebra.conf
    - template: 'jinja'
    - require:
      - pkg: quagga

autostart-zebra:
  service.enabled:
    - name: zebra
      require:
        - file: /etc/systemd/system/zebra.service
        - file: /etc/quagga/zebra.conf

start-zebra:
  service.running:
    - name: zebra
      require:
        - service: autostart-zebra
      watch:
        - file: /etc/quagga/zebra.conf

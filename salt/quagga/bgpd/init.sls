quagga-bgpd:
  pkg.installed: []

/etc/systemd/system/bgpd.service:
  file.managed:
    - source: salt://quagga/bgpd/bgpd.service

/etc/quagga/bgpd.conf:
  file.managed:
    - source: salt://quagga/bgpd/bgpd.conf
    - template: 'jinja'
    - require:
      - pkg: quagga-bgpd

autostart-bgpd:
  service.enabled:
    - name: bgpd
      require:
        - file: /etc/systemd/system/bgpd.service
        - file: /etc/quagga/bgpd.conf

start-bgpd:
  service.running:
    - name: bgpd
      require:
        - service: autostart-bgpd
      watch:
        - file: /etc/quagga/bgpd.conf

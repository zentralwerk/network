quagga:
  pkg.installed: []

{%- for daemon in ['zebra', 'ospfd'] %}
/etc/systemd/system/{{ daemon }}.service:
  file.managed:
    - source: salt://ospf/{{ daemon }}.service

/etc/quagga/{{ daemon }}.conf:
  file.managed:
    - source: salt://ospf/{{ daemon }}.conf
    - template: 'jinja'
    - require:
      - pkg: quagga

autostart-{{ daemon }}:
  service.enabled:
    - name: {{ daemon }}
      require:
        - file: /etc/systemd/system/{{ daemon }}.service
        - file: /etc/quagga/{{ daemon }}.conf

start-{{ daemon }}:
  service.running:
    - name: {{ daemon }}
      require:
        - service: autostart-{{ daemon }}
      watch:
        - file: /etc/quagga/{{ daemon }}.conf

{%- endfor %}

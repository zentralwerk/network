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

autostart-{{ daemon }}:
  service.enabled:
    - name: {{ daemon }}
      require_in:
        - file: /etc/systemd/system/{{ daemon }}.service
        - file: /etc/quagga/{{ daemon }}.conf
        - file: /var/run/quagga

start-{{ daemon }}:
  service.running:
    - name: {{ daemon }}
      require:
        - service: autostart-{{ daemon }}
      watch:
        - file: /etc/quagga/{{ daemon }}.conf

{%- endfor %}

/var/run/quagga:
  file.directory:
    - user: quagga
      group: quagga

          

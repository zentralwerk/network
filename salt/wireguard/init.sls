wireguard-tools:
  pkg.installed: []

/etc/systemd/system/wireguard@.service:
  file.managed:
    - source: salt://wireguard/wireguard.service

{%- for instance, conf in pillar['wireguard-instances'].items() %}
/etc/wireguard/{{ instance }}.conf:
  file.managed:
    - source: salt://wireguard/wireguard.conf
    - template: 'jinja'
    - context: {{ conf }}
    - mode: 600

autostart-wg-{{ instance }}:
  service.enabled:
    - name: wireguard@{{ instance }}
      require:
        - file: /etc/wireguard/{{ instance }}.conf

start-wg-{{ instance }}:
  service.running:
    - name: wg-{{ instance }}
      require:
        - service: autostart-wg-{{ instance }}
      watch:
        - file: /etc/wireguard/{{ instance }}.conf
{%- endfor %}

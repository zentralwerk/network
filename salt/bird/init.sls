bird:
 pkg.installed: []

{%- for daemon in ['bird', 'bird6'] %}
/etc/bird/{{ daemon }}.conf:
  file.managed:
    - source: salt://bird/{{ daemon }}.conf
    - template: 'jinja'
    - require:
      - pkg: bird

service-{{ daemon }}:
  service.running:
    - name: {{ daemon }}
    - enable: True
    - watch:
        - pkg: bird
        - file: /etc/bird/{{ daemon }}.conf

{%- endfor %}

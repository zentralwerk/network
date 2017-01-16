openvpn:
  pkg.installed: []

{%- for name, conf in pillar['openvpn'].items() %}

hostroutes-{{ name }}:
  network.routes:
    - name: core
    - routes:
{%- for a in salt.dnsutil.A(conf['server']) %}
      - ipaddr: {{ a }}
        netmask: 255.255.255.255
        gateway: {{ pillar['hosts-inet']['core']['upstream2'] }}
{%- endfor %}
  
/etc/openvpn/{{ name }}.conf:
  file.managed:
    - source: salt://vpn/openvpn.conf
    - template: 'jinja'
    - context:
        name: {{ name }}

/etc/openvpn/{{ name }}.auth:
  file.managed:
    - source: salt://vpn/auth
    - template: 'jinja'
    - context:
        name: {{ name }}
    - mode: 600

/etc/openvpn/{{ name }}.up:
  file.managed:
    - source: salt://vpn/up
    - template: 'jinja'
    - context:
        name: {{ name }}
    - mode: 755

/etc/systemd/system/openvpn@{{ name }}.service.d:
  file.directory:
    - user: root

/etc/systemd/system/openvpn@{{ name }}.service.d/restart.conf:
  file.managed:
    - source: salt://vpn/systemd-restart.conf
    - mode: 644
    - require:
      - file: /etc/systemd/system/openvpn@{{ name }}.service.d

autostart-{{ name }}:
  service.enabled:
      - name: openvpn@{{ name }}
        require_in:
          - file: /etc/openvpn/{{ name }}.conf
          - file: /etc/openvpn/{{ name }}.auth

start-{{ name }}:
  service.running:
      - name: openvpn@{{ name }}
        require_in:
          - file: /etc/openvpn/{{ name }}.conf
          - file: /etc/openvpn/{{ name }}.auth
        watch:
          - file: /etc/openvpn/{{ name }}.conf
          - file: /etc/openvpn/{{ name }}.auth
      
{%- endfor %}

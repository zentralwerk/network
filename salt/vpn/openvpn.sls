openvpn:
  pkg.installed: []

/dev/net:
  file.directory:
    - mode: 0755

/dev/net/tun:
  file.mknod:
    - ntype: 'c'
    - major: 10
    - minor: 200
    - mode: 0666
    - require:
      - file: /dev/net

{%- for name, conf in pillar['openvpn'].items() %}

hostroutes-{{ name }}:
  network.routes:
    - name: core
    - routes:
{%- for a in salt.dnsutil.A(conf['server']) %}
      - ipaddr: {{ a }}
        netmask: 255.255.255.255
        gateway: {{ pillar['hosts-inet']['core']['upstream1'] }}
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


autostart-{{ name }}:
  service.enabled:
      - name: openvpn@{{ name }}
        require_in:
          - file: /etc/openvpn/{{ name }}.conf
          - file: /etc/openvpn/{{ name }}.auth
        require:
          - file: /dev/net/tun

start-{{ name }}:
  service.running:
      - name: openvpn@{{ name }}
        require_in:
          - file: /etc/openvpn/{{ name }}.conf
          - file: /etc/openvpn/{{ name }}.auth
        require:
          - file: /dev/net/tun
      
{%- endfor %}


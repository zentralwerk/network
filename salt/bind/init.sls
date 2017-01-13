bind9:
  pkg.installed: []
  service:
    - running
    - enable: True
    - restart: True
    - watch:
      - file: /etc/bind/named.conf*
      - file: /etc/bind/*.zone
      - pkg: bind9

/etc/bind/named.conf.local:
  file.managed:
    - require:
        - pkg: bind9
    - source: salt://bind/named.conf
    - template: 'jinja'

# zentralwerk.online
/etc/bind/{{ pillar['bind']['root-domain'] }}:
  file.managed:
    - source: salt://bind/root-domain.zone
    - template: 'jinja'
    - context:
        domain: {{ pillar['bind']['root-domain'] }}

# *.zentralwerk.online
{%- for net, subnet4 in pillar['subnets-inet'].items() %}
{%- set domain = net ~ '.' ~ pillar['bind']['root-domain'] %}
/etc/bind/{{ domain }}.zone:
  file.managed:
    - source: salt://bind/net-domain.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
        net: {{ net }}

{%- endfor %}

# IPv4 reverse
{%- for subnet in pillar['bind']['reverse-zones-inet'] %}
{%-   set domain = '.'.join(subnet.split('.').__reversed__()) ~ '.in-addr.arpa' %}
/etc/bind/reverse4-{{ subnet }}.zone:
  file.managed:
    - source: salt://bind/reverse4.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
        subnet: {{ subnet }}

{%- endfor %}

# IPv6 reverse
{%- for domain in pillar['bind']['reverse-zones-inet6'] %}
/etc/bind/reverse6-{{ domain }}.zone:
  file.managed:
    - source: salt://bind/reverse6.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
{%- endfor %}

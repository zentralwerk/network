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

# zentralwerk.org
/etc/bind/{{ pillar['bind']['root-domain'] }}.zone:
  file.managed:
    - source: salt://bind/root-domain.zone
    - template: 'jinja'
    - context:
        domain: {{ pillar['bind']['root-domain'] }}

# *.zentralwerk.org
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

# dyn.zentralwerk.org
{%- set domain = 'dyn.' ~ pillar['bind']['root-domain'] %}
/etc/bind/{{ domain }}.zone:
  file.managed:
    - source: salt://bind/dyn-domain.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}

# IPv4 reverse
{%- for domain in pillar['bind']['reverse-zones-inet'] %}
/etc/bind/{{ domain }}.zone:
  file.managed:
    - source: salt://bind/reverse.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
{%- endfor %}

# IPv6 reverse
{%- for domain in pillar['bind']['reverse-zones-inet6'] %}
/etc/bind/{{ domain }}.zone:
  file.managed:
    - source: salt://bind/reverse.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
{%- endfor %}

rndc reload:
  cmd.run: []

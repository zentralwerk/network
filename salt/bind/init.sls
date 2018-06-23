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

{%- for ctx, root_domain in pillar['bind']['root-domain'].items() %}
# zentralwerk.org
/etc/bind/{{ root_domain }}.zone:
  file.managed:
    - source: salt://bind/root-domain.zone
    - template: 'jinja'
    - context:
        domain: {{ root_domain }}
        ctx: {{ ctx }}

# *.zentralwerk.org
{%-   for net, subnet4 in pillar['subnets-inet'].items() %}
{%-     set domain = net ~ '.' ~ root_domain %}
/etc/bind/{{ domain }}.zone:
  file.managed:
    - source: salt://bind/net-domain.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
        net: {{ net }}
        ctx: {{ ctx }}

{%-   endfor %}
{%- endfor %}

# dyn.zentralwerk.org
{%- set domain = 'dyn.' ~ pillar['bind']['root-domain']['up1'] %}
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
        ctx: dn42
{%- endfor %}

# IPv6 reverse
{%- for ctx, domains in pillar['bind']['reverse-zones-inet6'].items() %}
{%-   for domain in domains %}
/etc/bind/{{ domain }}.zone:
  file.managed:
    - source: salt://bind/reverse.zone
    - template: 'jinja'
    - context:
        domain: {{ domain }}
        ctx: {{ ctx }}
{%-   endfor %}
{%- endfor %}

rndc reload:
  cmd.run: []

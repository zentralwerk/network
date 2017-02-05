{%- set upstream = pillar['upstream'] %}

iproute2:
  pkg.installed: []

{%- if upstream.get('up-bandwidth') %}
/etc/network/if-up.d/up-shaping:
  file.managed:
    - source: salt://upstream/shaping
    - template: 'jinja'
    - context:
        iface: {{ pillar['upstream']['interface'] }}
        bandwidth: {{ pillar['upstream']['up-bandwidth'] }}
        flow_keys: nfct-src
    - mode: 755
    - require:
        - pkg: iproute2
{%- endif %}

{%- if upstream.get('down-bandwidth') %}
/etc/network/if-up.d/down-shaping:
  file.managed:
    - source: salt://upstream/shaping
    - template: 'jinja'
    - context:
        iface: core
        bandwidth: {{ pillar['upstream']['down-bandwidth'] }}
        flow_keys: nfct-dst
    - mode: 755
    - require:
        - pkg: iproute2
{%- endif %}

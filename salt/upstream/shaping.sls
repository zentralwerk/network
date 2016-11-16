{%- set upstream = pillar['upstream'] %}

iptables:
  pkg.installed: []

/etc/network/if-up.d/shaping:
  file.managed:
    - source: salt://upstream/shaping
    - template: 'jinja'
    - mode: 755
    - require:
        - pkg: tc

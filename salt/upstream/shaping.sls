{%- set upstream = pillar['upstream'] %}

iproute2:
  pkg.installed: []

/etc/network/if-up.d/shaping:
  file.managed:
    - source: salt://upstream/shaping
    - template: 'jinja'
    - mode: 755
    - require:
        - pkg: iproute2

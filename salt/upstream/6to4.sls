{%- set interface = pillar['upstream']['interface'] %}

/etc/network/if-up.d/6to4:
  file.managed:
    - source: salt://upstream/6to4-up
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 755

/etc/network/if-down.d/6to4:
  file.managed:
    - source: salt://upstream/6to4-down
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 755

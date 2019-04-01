{%- set interface = pillar['upstream']['interface'] %}

/etc/network/if-post-up.d:
  file.directory:
    - user: root
    - require_in:
        - file: /etc/network/if-post-up.d/routes

/etc/network/if-post-up.d/routes:
  file.managed:
    - source: salt://upstream/routes
    - template: 'jinja'
    - context:
        interface: {{ interface }}
    - mode: 744
    - require:
        - pkg: iproute2

{%- set conf = pillar['dyndns'][salt['grains.get']('id')] %}

/etc/network/if-up.d/dyndns:
  file.managed:
    - source: salt://upstream/dyndns
    - template: 'jinja'
    - context:
        interface: {{ conf['interface'] }}
        hostname: {{ salt['grains.get']('id') }}.dyn.{{ pillar['bind']['root-domain']['up1'] }}
    - mode: 755
    - require:
        - pkg: dnsutils

/etc/dyndns.key:
  file.managed:
    - source: salt://upstream/dyndns.key
    - template: 'jinja'
    - context:
        name: {{ salt['grains.get']('id') }}
        secret: "{{ conf['secret'] }}"
    - mode: 600
    - require:
        - pkg: dnsutils

dnsutils:
  pkg.installed: []

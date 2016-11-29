{%- set interface = pillar['upstream']['interface'] %}

/etc/sysctl.d/70-upstream-6slac.conf:
  file.managed:
    - source: "salt://upstream/6slac.conf"
    - template: 'jinja'
    - context:
        interface: {{ interface }}

apply-6slac:
  cmd.run:
    - name: sysctl -p /etc/sysctl.d/70-upstream-6slac.conf
      require:
        - file: /etc/sysctl.d/70-upstream-6slac.conf
        - pkg: procps

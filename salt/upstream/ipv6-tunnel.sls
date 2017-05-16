ifupdown:
  pkg.installed: []

/etc/network/interfaces.d/ipv6-tunnel.conf:
  file.managed:
    - source: salt://upstream/ipv6-tunnel.conf
    - template: 'jinja'
    - context:
        endpoint: {{ pillar['ipv6-tunnel'].get('endpoint') }}
        address: {{ pillar['ipv6-tunnel'].get('address') }}
        gateway: {{ pillar['ipv6-tunnel'].get('gateway') }}
    - require:
        - pkg: ifupdown

'ifdown ipv6; ifup ipv6':
  cmd.run:
    - onchanges:
        - file: /etc/network/interfaces.d/ipv6-tunnel.conf

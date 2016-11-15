base:
  '*':
    - hosts
    - subnets
    - vlans
  '*gw':
    - dhcp
  'anon1':
    - vpn.anon1
    - upstream.anon1
  'upstream1':
    - upstream.upstream1
  'server1':
    - switches

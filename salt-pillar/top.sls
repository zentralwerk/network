base:
  '*':
    - hosts
    - subnets
    - vlans
    - ospf
  '*-gw':
    - dhcp
    - ospf.gw
  'anon1':
    - vpn.anon1
    - upstream.anon1
  'upstream1':
    - upstream.upstream1
  'upstream2':
    - upstream.upstream2
  'server1':
    - lxc-containers.server1
    - switches

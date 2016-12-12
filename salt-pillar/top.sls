base:
  '*':
    - hosts
    - subnets
    - vlans
    - ospf
  'priv*-gw':
    - dhcp
    - ospf.gw
  'c3d2-gw or c3d2-anon':
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
    - cpe.aps

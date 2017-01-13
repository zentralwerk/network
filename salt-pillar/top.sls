base:
  '*':
    - hosts
    - subnets
    - vlans
    - bird.ospf
  'priv*-gw':
    - dhcp
    - bird.ospf
  'pub-gw':
    - dhcp
    - bird.ospf
  'serv-gw':
    - dhcp
    - bird.ospf
  'c3d2-gw or c3d2-anon':
    - bird.ospf
  'bgp':
    - bird.ospf
    - bird.bgp
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
  'dns':
    - bind.dns

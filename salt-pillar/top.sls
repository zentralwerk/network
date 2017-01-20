base:
  '*':
    - hosts
    - subnets
    - vlans
  'priv*-gw':
    - dhcp
    - bird.radv
    - bird.ospf
  'pub-gw':
    - dhcp
    - bird.radv
    - bird.ospf
  'serv-gw':
    - dhcp
    - bird.radv
    - bird.ospf
  'c3d2-gw or c3d2-anon':
    - bird.ospf
  'bgp':
    - bird.ospf
    - bird.bgp
  'anon1':
    - vpn.anon1
    - upstream.anon1
  'upstream*':
    # for forward-zones in unbound
    - bind.dns
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

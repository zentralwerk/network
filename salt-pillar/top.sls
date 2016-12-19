base:
  '*':
    - hosts
    - subnets
    - vlans
    - quagga.ospfd
  'priv*-gw':
    - dhcp
    - quagga.ospfd.gw
  'pub-gw':
    - dhcp
    - quagga.ospfd.gw
  'serv-gw':
    - dhcp
    - quagga.ospfd.gw
  'c3d2-gw or c3d2-anon':
    - quagga.ospfd.gw
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

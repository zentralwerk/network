base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers
    - ospf
    - switches
    - cpe
  'priv*-gw':
    - no-ssh
    - forwarding
    - ospf
    - dhcp
  'c3d2-gw or c3d2-anon':
    - no-ssh
    - forwarding
    - ospf
  'upstream*':
    - no-ssh
    - forwarding
    - ospf
    - unbound
    - upstream.dhcp
    - upstream.shaping
  'upstream1':
    - upstream.6to4
    - upstream.nat66
  'upstream2':
    - upstream.6slac
    - upstream.nat66
    - upstream.port-forwarding
  'anon*':
    - no-ssh
    - forwarding
    - ospf
    - vpn.openvpn
    - upstream.masquerade
    - upstream.shaping
    - upstream.nat66

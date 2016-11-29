base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers
    - ospf
    - switches
    - cpe
  '*-gw':
    - no-ssh
    - forwarding
    - ospf
    - dhcp
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
  'anon*':
    - no-ssh
    - forwarding
    - ospf
    - vpn.openvpn
    - upstream.masquerade
    - upstream.shaping
    - upstream.nat66

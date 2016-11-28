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
    - upstream.dhcp
    - upstream.shaping
    - unbound
  'anon*':
    - no-ssh
    - forwarding
    - ospf
    - vpn.openvpn
    - upstream.masquerade
    - upstream.shaping

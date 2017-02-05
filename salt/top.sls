base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers
    - bird
    - switches
    - cpe
    - collectd
  'priv*-gw':
    - no-ssh
    - forwarding
    - bird
    - dhcp
  'pub-gw or serv-gw':
    - no-ssh
    - forwarding
    - bird
    - dhcp
  'c3d2-gw or c3d2-anon':
    - no-ssh
    - forwarding
    - bird
  'bgp':
    - no-ssh
    - forwarding
    - bird
  'upstream*':
    - no-ssh
    - forwarding
    - bird
    - unbound
    - upstream.dhcp
    - upstream.shaping
    - collectd
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
    - bird
    - vpn.openvpn
    - upstream.masquerade
    - upstream.shaping
    - upstream.nat66
    - collectd
  'dns':
    - no-ssh
    - bind
  'stats':
    - no-ssh
    - collectd

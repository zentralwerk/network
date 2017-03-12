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
  'c3d2-gw or c3d2-anon or mgmt-gw':
    - no-ssh
    - forwarding
    - bird
  'mgmt-gw':
    - firewall.mgmt-gw
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
  'upstream2':
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

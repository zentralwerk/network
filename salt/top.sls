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
  'priv13-gw':
    - firewall.priv-stateful
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
    - upstream.dyndns
    - collectd
  'upstream2':
    - upstream.port-forwarding
    - upstream.ipv6-tunnel
  'anon*':
    - no-ssh
    - forwarding
    - bird
    - wireguard
    - upstream.masquerade
    - upstream.shaping
    - upstream.nat66
    - upstream.dyndns
    - collectd
  'dns':
    - no-ssh
    - bind
  'stats':
    - no-ssh
    - collectd

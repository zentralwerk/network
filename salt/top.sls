base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers
    - bird
    - switches
    - cpe
    - collectd
    - 'fixes.lxc-inotify'
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
    - upstream.port-forwarding
    - collectd
  'upstream2':
    - upstream.ipv6-tunnel
  'upstream1':
    - upstream.6slac
    - upstream.dhcp6
    - upstream.routes
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

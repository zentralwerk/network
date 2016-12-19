base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers
    - quagga.zebra
    - quagga.ospfd
    - switches
    - cpe
  'priv*-gw':
    - no-ssh
    - forwarding
    - quagga.zebra
    - quagga.ospfd
    - dhcp
  'c3d2-gw or c3d2-anon':
    - no-ssh
    - forwarding
    - quagga.zebra
    - quagga.ospfd
  'upstream*':
    - no-ssh
    - forwarding
    - quagga.zebra
    - quagga.ospfd
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
    - quagga.zebra
    - quagga.ospfd
    - vpn.openvpn
    - upstream.masquerade
    - upstream.shaping
    - upstream.nat66

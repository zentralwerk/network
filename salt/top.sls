base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers-1
    - ospf
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
  'anon*':
    - no-ssh
    - forwarding
    - ospf
    - unbound

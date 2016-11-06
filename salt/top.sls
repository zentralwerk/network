base:
  'server1':
    - salt-master
    - server1-network
    - lxc-containers-1
    - ospf
  '*-gw':
    - no-ssh
    - ospf
  'upstream*':
    - no-ssh
    - ospf
    - unbound
  'anon*':
    - no-ssh
    - ospf
    - unbound

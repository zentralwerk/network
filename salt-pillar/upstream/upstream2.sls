upstream:
  interface: up2
  nat66-interface: up2
  up-bandwidth: 12400
  down-bandwidth: 195000
  flows: 2048

port-forwarding:
  - proto: udp
    port: 1194
    to: 172.20.75.9:1194

ipv6-tunnel:
  endpoint: 216.66.80.30
  address: 2001:470:1f0a:12b2::2
  gateway: 2001:470:1f0a:12b2::1

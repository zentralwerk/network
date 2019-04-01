upstream:
  interface: up1
  nat66-interface: 6to4
  up-bandwidth: 52500
  flows: 2048

port-forwarding:
  - proto: tcp
    port: 80
    to: 172.22.99.27:80
  - proto: tcp
    port: 443
    to: 172.22.99.27:443


bind:
  root-domain: zentralwerk.online
  master-ns: dns.serv.zentralwerk.online
  public-ns:
    - ns.c3d2.de
    - spaceboyz.net
  slaves:
    # bind.wetu.c3d2.de
    - 172.22.100.9
    - fd23:42:c3d2::1
    # dns.spaceboyz.net
    - 172.22.24.4
    - 2a01:4f8:a0:33d0::4
  serial: 2017012300
  
  reverse-zones-inet:
    - 72.20.172.in-addr.arpa
    - 73.20.172.in-addr.arpa
    - 74.20.172.in-addr.arpa
    - 75.20.172.in-addr.arpa
    - 76.20.172.in-addr.arpa
    - 77.20.172.in-addr.arpa
    - 78.20.172.in-addr.arpa
    - 79.20.172.in-addr.arpa
  
  reverse-zones-inet6:
    - 8.5.0.2.d.3.c.2.4.0.0.3.2.d.f.ip6.arpa
    - c.5.0.2.d.3.c.2.4.0.0.3.2.d.f.ip6.arpa

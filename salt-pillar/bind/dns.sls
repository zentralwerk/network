bind:
  root-domain:
    dn42: zentralwerk.dn42
    up1: zentralwerk.org
  master-ns:
    dn42: dns.serv.zentralwerk.dn42
    up1: dns.serv.zentralwerk.org
  public-ns:
    dn42:
      - dns.serv.zentralwerk.dn42
    up1:
      - ns.c3d2.de
  slaves:
    # ns.c3d2.de
    - 217.197.84.53
    - 2001:67c:1400:2240::a
    # dns.spaceboyz.net
    - 172.22.24.4
    - 2a01:4f8:a0:33d0::4
  serial: 2018062300
  
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
    dn42:
      - 8.5.0.2.d.3.c.2.4.0.0.3.2.d.f.ip6.arpa
      - c.5.0.2.d.3.c.2.4.0.0.3.2.d.f.ip6.arpa
    up1:
      - 8.2.5.8.0.2.0.6.0.1.8.2.0.a.2.ip6.arpa
      - c.2.5.8.0.2.0.6.0.1.8.2.0.a.2.ip6.arpa

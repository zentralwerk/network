zebra:
  # dn42 routes for ospf[6] redistribute static
  - ip route 172.20.0.0/14 blackhole
  - ipv6 route fd00::/8 lo blackhole

ospf:
  redistribute:
    - static

bgp:
  asn: 4242421127

  peers:
    'fe80::a800:42ff:fe7a:3246':
      - remote-as 64699
      - interface c3d2
      - description dn42.hq.c3d2.de

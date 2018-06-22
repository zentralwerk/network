ospf:
  stubnets-inet:
    - 172.20.0.0/14
    - 10.0.0.0/8
  stubnets-inet6:
    - fd00::/8
    - 2a02:8106:208:5200::/56

bgp:
  asn: 4242421127

  peers-inet:
    # dn42.hq.c3d2.de
    '172.22.99.253':
      asn: 64699

  peers-inet6:
    # dn42.hq.c3d2.de
    'fe80::a800:42ff:fe7a:3246%c3d2':
      asn: 64699

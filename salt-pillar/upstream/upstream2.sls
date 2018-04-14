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
  address: 2001:470:1f0a:12b2::2/64
  gateway: 2001:470:1f0a:12b2::1

  tunnelbroker:
    tunnel_id: '407181'
    username: 'C3D2HQ'
    key: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+MPl9B7V1GfG+ps+cILxxnGA8nx9KN69Zj03T5KVYMWw7
      6nMfXyhC6ZV3BTVUPqY290SaMP0wa4YjpewypfILoJLQDGV7SQaR8eVVCXQYusXK
      M+L1jWr8f+GOCH5BYsX4WS0PhJ0EplSDlbsvT2NiLc7SFGsrLwpfL4jLJJ3ICSif
      BbKZy7aovpAXmaeTFaYR7wsclXk7hM94U0uaF9HJK0e9WDFuHuz7dbAXLVFIHFIx
      UdrjoA8GfRoCqMLXe9Uce+MPvkJX3m0oAtc68Znw/4ndMm6FIyuUhA/jh+gt4/2B
      BXCch68PGnKNiFmRDW+h17ZiAFeobyb960wJBammLNJLAS+adCeoDgJCxXTzZ5Rh
      IFEdKAewlFa1RXWn0HhGu7FYoeM+EbuH/ZYW9TOIWYRb3Ol36MPDoRuPEWU/bETG
      UQEvc22wrpxOfjIA
      =UbJD
      -----END PGP MESSAGE-----


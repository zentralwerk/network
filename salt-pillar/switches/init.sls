switches:
  switch-d1:
    model: 'TL-SG3210'
    location: Turm D Keller
    ports:
      switch-b1:
        mode: trunk
        ports: 1-4
        vlans:
          - mgmt
          - pub
      up1:
        mode: access
        ports: 5
      mgmt:
        mode: access
        ports: 6
      pub:
        mode: access
        ports: 7-8

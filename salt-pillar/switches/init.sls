switches:
  switch-b1:
    model: '3com-4200G'
    location: Haus B Souterrain
    ports:
      switch-b2:
        mode: trunk
        ports:
          - '25'
          - '26'
          - '27'
          - '28'
        vlans:
          - mgmt
          - pub
      switch-c1:
        mode: trunk
        ports:
          - '29'
          - '30'
          - '31'
          - '32'
        vlans:
          - mgmt
          - pub
      switch-d1:
        mode: trunk
        ports:
          - '33'
          - '34'
          - '35'
          - '36'
        vlans:
          - mgmt
          - pub
          - up1
      server1:
        mode: trunk
        ports:
          - '37'
          - '38'
          - '39'
          - '40'
        vlans:
          - mgmt
          - pub
          - core
          - up1
          - priv1
          - priv2
          - serv
      mgmt:
        mode: access
        ports:
          - '1'
      pub:
        mode: access
        ports:
          - '2'
          - '3'
          - '24'
  switch-b2:
    model: '3com-4200G'
    location: Haus B Souterrain
    ports:
      switch-b2:
        mode: trunk
        ports:
          - '25'
          - '26'
          - '27'
          - '28'
        vlans:
          - mgmt
          - pub
      mgmt:
        mode: access
        ports:
          - '1'
      pub:
        mode: access
        ports:
          - '2'
          - '3'
          - '24'
          - '37'
          - '48'
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
          - up1
      up1:
        mode: access
        ports:
          - '5'
      mgmt:
        mode: access
        ports:
          - '6'
      pub:
        mode: access
        ports:
          - 7-8
  switch-c1:
    model: 'TL-SG3210'
    location: Turm D Keller
    ports:
      switch-b1:
        mode: trunk
        ports: 1-4
        vlans:
          - mgmt
          - pub
      mgmt:
        mode: access
        ports:
          - '6'
      pub:
        mode: access
        ports:
          - '5'
          - 7-8

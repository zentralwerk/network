#!yaml|gpg
switches:
  switch-b1:
    model: '3com-4200G'
    location: Haus B Souterrain
    # Ports 1-24 oben
    # Ports 25-48 unten
    # Ports 49-52 unten seitlich (optisch)
    # 10GE hinten
    ports:
      switch-b2:
        mode: bond
        ports:
          - TenGigabitEthernet 1/1/1
          - GigabitEthernet 1/0/25
          - GigabitEthernet 1/0/26
          - GigabitEthernet 1/0/27
          - GigabitEthernet 1/0/28
        vlans:
          - mgmt
          - pub
          - c3d2
          - radio
          - priv1
          - priv2
          - priv3
          - priv4
          - priv5
          - priv6
          - priv7
          - priv8
          - priv9
          - priv10
          - priv11
          - priv12
          - priv13
          - priv14
          - priv15
          - priv16
          - priv17
          - priv18
          - priv19
      mgmt:
        mode: access
        ports:
          - GigabitEthernet1/0/1
      iso1:
        mode: access
        ports:
          - GigabitEthernet 1/0/2
      iso2:
        mode: access
        ports:
          - GigabitEthernet 1/0/3
      iso3:
        mode: access
        ports:
          - GigabitEthernet 1/0/4
      ap8:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/16
        vlans:
          - mgmt
          - pub
          - c3d2
      ap23:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/10
        vlans:
          - mgmt
          - pub
      switch-c1:
        mode: bond
        ports:
          - GigabitEthernet1/0/29
          - GigabitEthernet1/0/30
          - GigabitEthernet1/0/31
          - GigabitEthernet1/0/32
        vlans:
          - mgmt
          - pub
          - c3d2
          - radio
          - up1
          - up2
          - up3
          - up4
          - up5
          - up6
          - up7
          - up8
          - priv20
          - iso1
          - iso2
          - iso3
          - iso4
          - iso5
          - iso6
          - iso7
          - iso8
          - iso9
          - iso10
          - iso11
          - iso12
          - iso13
          - iso14
          - iso15
          - iso16
      switch-d1:
        mode: bond
        ports:
          # 33 is not currently plugged
          - GigabitEthernet1/0/33
          - GigabitEthernet1/0/34
        vlans:
          - mgmt
          - pub
          - priv15
          - priv16
          - priv21
      server1:
        mode: bond
        ports:
          - GigabitEthernet1/0/46
          - GigabitEthernet1/0/47
          - GigabitEthernet1/0/48
          - GigabitEthernet1/0/24
        vlans:
          - mgmt
          - pub
          - core
          - serv
          - c3d2
          - radio
          - up1
          - up2
          - up3
          - up4
          - up5
          - up6
          - up7
          - up8
          - priv1
          - priv2
          - priv3
          - priv4
          - priv5
          - priv6
          - priv7
          - priv8
          - priv9
          - priv10
          - priv11
          - priv12
          - priv13
          - priv14
          - priv15
          - priv16
          - priv17
          - priv18
          - priv19
          - priv20
          - priv21
      c3d2-server4:
        mode: bond
        ports:
          - GigabitEthernet1/0/38
          - GigabitEthernet1/0/39
          - GigabitEthernet1/0/40
        access: c3d2
      c3d2-server5:
        mode: trunk
        ports:
          - GigabitEthernet1/0/5
          - GigabitEthernet1/0/6
        access: c3d2
      c3d2-server6:
        mode: trunk
        ports:
          - GigabitEthernet1/0/7
          - GigabitEthernet1/0/8
        access: c3d2
      c3d2-flatbert:
        mode: bond
        ports:
          - GigabitEthernet1/0/11
          - GigabitEthernet1/0/12
        access: c3d2
      c3d2-storage:
        mode: bond
        ports:
          - GigabitEthernet1/0/14
          - GigabitEthernet1/0/13
        access: c3d2
      monit:
        mode: trunk
        ports:
          - GigabitEthernet1/0/20
        vlans:
          - mgmt
          - c3d2
      c3d2:
        mode: access
        ports:
          - GigabitEthernet1/0/23
          - GigabitEthernet1/0/35
      switch-c3d2-main:
        mode: bond
        ports:
          - GigabitEthernet 1/0/41
          - GigabitEthernet 1/0/42
          - GigabitEthernet 1/0/43
          - GigabitEthernet 1/0/44
        vlans:
          - mgmt
          - pub
          - c3d2
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf/c9ysLI/ePzYtqz7AyoKBZQKFau/pEpQDswA5hdJiRSgh
      TQ73u7NVVYTGk/sZ2awAVLQ/KUM7JPMHMXK1+uPIQq0/+Xg/v5zJdaWwRUUIGtCz
      Sg3BpV41a/NgxlJbh0bJw0CjlgTHF7qIhiQNoHx/DnYECab8bMr8i7NziWXZl1kf
      6A5BqAu5siaaqngn5wYmMdstl48lejiDNgtZSeti/1FV9fk4D2w9zEMHZnTS2M+O
      TzDk2lsAA4CEXeQBsBOSMsbHDy6yo4CzuNk61ALfH8a3Tn1sQjfSLo021xAvqj5U
      nS9/L/57ffRILzz1hfURBV0N/VnDqi5enSZIvVU2WtJLAZEAghgXjE7rfjsN1ypG
      mYUz1OQ9cLG8ttSL9+fhYc8rCW0jx8KD5HKPiNHnR1x0s2RbUnprQdlFgC4go8U7
      DRE15mc7GkkYbvIl
      =/BZc
      -----END PGP MESSAGE-----

  switch-b2:
    model: '3com-4200G'
    location: Haus B Souterrain
    # Ports 1-24 oben
    # Ports 25-48 unten
    # Ports 49-52 unten seitlich (optisch)
    # 10GE hinten
    ports:
      switch-b1:
        mode: bond
        ports:
          - TenGigabitEthernet 1/1/1
          - GigabitEthernet 1/0/25
          - GigabitEthernet 1/0/26
          - GigabitEthernet 1/0/27
          - GigabitEthernet 1/0/28
        vlans:
          - mgmt
          - pub
          - c3d2
          - radio
          - priv1
          - priv2
          - priv3
          - priv4
          - priv5
          - priv6
          - priv7
          - priv8
          - priv9
          - priv10
          - priv11
          - priv12
          - priv13
          - priv14
          - priv15
          - priv16
          - priv17
          - priv18
          - priv19
      mgmt:
        mode: access
        ports:
          - GigabitEthernet1/0/1
      priv1:
        mode: access
        ports:
          - GigabitEthernet 1/0/3
      priv2:
        mode: access
        ports:
          - GigabitEthernet 1/0/4
      priv3:
        mode: access
        ports:
          - GigabitEthernet 1/0/5
      ap4:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/6
        vlans:
          - mgmt
          - pub
          - priv4
      ap5:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/7
        vlans:
          - mgmt
          - priv5
          - pub
      ap1:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/8
        vlans:
          - mgmt
          - priv6
          - pub
      ap16:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/9
        vlans:
          - mgmt
          - priv7
          - pub
      ap11:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/10
        vlans:
          - mgmt
          - priv8
          - pub
      ap15:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/12
        vlans:
          - mgmt
          - priv10
          - pub
      priv11:
        mode: access
        ports:
          - GigabitEthernet 1/0/15
      pub:
        mode: access
        ports:
          - GigabitEthernet 1/0/11
          - GigabitEthernet 1/0/14
          - GigabitEthernet 1/0/16
          - GigabitEthernet 1/0/19
          - GigabitEthernet 1/0/20
          - GigabitEthernet 1/0/21
          - GigabitEthernet 1/0/24
      ap21:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/18
        vlans:
          - mgmt
          - pub
          - priv9
      priv17:
        mode: access
        ports:
          - GigabitEthernet 1/0/13
      c3d2-server3:
        mode: bond
        ports:
          - GigabitEthernet1/0/30
          - GigabitEthernet1/0/31
        access: c3d2
      ap24:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/34
        vlans:
          - mgmt
          - pub
          - priv12
      ap25:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/35
        vlans:
          - mgmt
          - pub
          - priv12
      ap29:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/36
        vlans:
          - mgmt
          - pub
          - priv13
      ap30:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/22
        vlans:
          - mgmt
          - pub
          - priv14
      ap35:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/23
        vlans:
          - mgmt
          - pub
          - priv18
      priv19:
        mode: access
        ports:
          - GigabitEthernet 1/0/40
      ap37:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/39
        vlans:
          - mgmt
          - pub
          - priv19
      ap39:
        mode: trunk
        ports:
          - GigabitEthernet 1/0/17
        vlans:
          - mgmt
          - pub
          - priv7
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf+N6p+ZuZsx1AF7CI2TKsxxEU1EyM1DIqtk7d5DoidTIZ4
      zYnL9X72VSQiNRtkk955wU5sStanDjQMxBUcEO/bEQq6Cjy7tgWZZXEfCedM3Xzq
      MEs861JCHdpBfL/zehHZxjmGe+St0xRGn4yBZcP/835Sl6t6q4znPFabcgDmIItX
      ZsjaQfKd0La8GclHI1Pib7UuI6fvD70GkcQHoKoM1cOw8HQRpY953RnTNDKUk7is
      ZjvhHkPUU2smLxJhCCwAiARq7TZceI0orfCkjQ87sRXavO82dn2Vq3mD9iVwnYY+
      mVuYBhqguwq0HoOomHKf/JbQc7Gz8E+SBHWvjCUvVtJLARwt3KUvZGY28oKm7pcs
      ITJJEiVPfnS2CtIm7T0nCm4LMiE20GWhhJIh8gIQuORlUvtMX0R29v3cVcNYCbIh
      +2WKG1F/gum7at/q
      =On3v
      -----END PGP MESSAGE-----

  switch-c1:
    model: 'HP-procurve-2824'
    location: Turm C Keller, bei Kabelanschluessen
    # Ports 1-19 ungerade oben
    # Ports 2-20 gerade unten
    # (15, 16 gehen aktuell nach Haus A)
    # Ports 21-24 unten seitlich (optional optisch)
    # Port 7 geht aktuell nach Turm C Erdgeschoss und dadurch zur Ecce
    ports:
      switch-b1:
        mode: bond
        ports: 21-24
        vlans:
          - mgmt
          - pub
          - c3d2
          - up1
          - up2
          - up3
          - up4
          - up5
          - up6
          - up7
          - up8
          - iso1
          - iso2
          - iso3
          - iso4
          - iso5
          - iso6
          - iso7
          - iso8
          - iso9
          - iso10
          - iso11
          - iso12
          - iso13
          - iso14
          - iso15
          - iso16
          - priv20
      up1:
        mode: access
        ports: '1'
        nostp: true
      up2:
        mode: access
        ports: '2'
        nostp: true
      up3:
        mode: access
        ports: '3'
        nostp: true
      up4:
        mode: access
        ports: '4'
        nostp: true
      up5:
        mode: access
        ports: '5'
        nostp: true
      up6:
        mode: access
        ports: '6'
        nostp: true
      iso1:
        mode: access
        ports: '9'
      iso2:
        mode: access
        ports: '10'
      iso3:
        mode: access
        ports: '11'
      iso4:
        mode: access
        ports: '12'
      iso5:
        mode: access
        ports: '13'
      iso6:
        mode: access
        ports: '14'
      mgmt:
        mode: access
        ports: '20'
      ap3:
        mode: trunk
        ports: 15
        vlans:
          - mgmt
          - pub
          - c3d2
      ap17:
        mode: trunk
        ports: 16
        vlans:
          - mgmt
          - pub
          - c3d2
      ap19:
        mode: trunk
        ports: 17
        vlans:
          - mgmt
          - pub
      ap26:
        mode: trunk
        ports: 18
        vlans:
          - mgmt
          - pub
      ap36:
        mode: trunk
        ports: 19
        vlans:
          - mgmt
          - pub
          - c3d2
      ap38:
        mode: trunk
        ports: 7
        vlans:
          - mgmt
          - pub
          - priv20
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQgAhPMG6VKUFLVNZmVfZ6P21CrXRmUeExuxIg4QIrYtKfYe
      cxWst/IuHnDyL2TP8yGb00sjz7o0psZ9Z+zRCi/ONONyNzee103ymjXxk0Ygekid
      1IGVeSTqskrgOl53mFZEfP4nBcOqzcNFjMkm0c5B2OmHHHOokOJ5Xzsya120SGXk
      JnYFVsRD6GFwuF88pgQ5VrGd5/drMaIrNkJ69dyfvYdHRTd0UgtiZFOMesRYFFP7
      +QdSW1MFoVZnjZgLeoNF/efIhHnTdClROCMZBYU5Z3pQcHAfE4GN3w+MceP/+5EY
      z3wuSNpsuYNr8NnEDvofTJGdOLuclE6JPFvJMg1QptJKASfn3ZlOrL4ohbPGaDQ6
      z1P+6DJXliXS7dBdxH0bsB2qRZslmcj286D9bPgTsuvCzOaxcTtkM8y76gVVOVBI
      TN+j1/OdlXyVmTM=
      =XUUi
      -----END PGP MESSAGE-----

  # Unused: 3
  switch-d1:
    model: 'TL-SG3210'
    location: Turm D Keller
    ports:
      switch-b1:
        mode: bond
        ports: 1
        vlans:
          - mgmt
          - pub
          - priv15
          - priv16
          - priv21
      ap9:
        mode: trunk
        ports: 5
        vlans:
          - mgmt
          - pub
          - priv16
      ap10:
        mode: trunk
        ports: 4
        vlans:
          - mgmt
          - pub
          - priv15
          - priv21
      ap7:
        mode: trunk
        # Turm D, 5. Etage
        ports: 8
        vlans:
          - mgmt
          - pub
      ap22:
        mode: trunk
        ports: 2
        vlans:
          - mgmt
          - pub
      ap12:
        mode: trunk
        ports: 7
        vlans:
          - mgmt
          - pub
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQgAkS9jHdnqPPary/yduPsA3Ya1rrERxfZxJnvicexUKl7b
      eJlLe8e1BQE3BTaqkvLcBrGztBBvrgnv+kzmSTCd5jbL2/fFOdhedBsNjWpYtA7A
      o6PPfYHka/Km4J/MihzVac9XUbBFhN0ETGYbGi0upPHHEKht3bUNzqkzvHxhQ8lJ
      D7dDPs3vJXx3Ey8taZawdLJ9IcthvSojt8Un5A/SpdroW2CF4u0Gubuz+9D5i0T5
      vXDqDQqEewu7pofxZ8TR4PY9PNHT9kmHyI2sIq1AkqP0Mn8wKP7dJVrUS3Z+xBUt
      /f0B+8a0EJDuQBB2p7yRlBcg5d58TGB59pptmLpQ39JDAbZxHQymPKy3R14k1wKa
      fYvaMBkaGtcu/foCb1r3xfAZOJSF5MT754wjvxB1bl/iizqJQm+WN3YAkja/Gwh+
      J31/Ng==
      =e45t
      -----END PGP MESSAGE-----

  switch-c3d2-main:
    model: 'HP-procurve-2824'
    location: C3D2
    # Ports 1-19 ungerade oben
    # Ports 2-20 gerade unten
    # (15, 16 gehen aktuell nach Haus A)
    # Ports 21-24 unten seitlich (optional optisch)
    # Unused Port 7 geht aktuell nach Turm C Erdgeschoss
    ports:
      mgmt:
        mode: access
        ports: 1
      switch-b1:
        mode: bond
        ports: 21-24
        vlans:
          - mgmt
          - pub
          - c3d2
      ap2:
        mode: trunk
        ports: 2
        vlans:
          - mgmt
          - pub
          - c3d2
      ap3:
        mode: trunk
        ports: 3
        vlans:
          - mgmt
          - pub
          - c3d2
      ap31:
        mode: trunk
        ports: 4
        vlans:
          - mgmt
          - pub
          - c3d2
      ap32:
        mode: trunk
        ports: 5
        vlans:
          - mgmt
          - pub
          - c3d2
      c3d2:
        mode: access
        ports: '6-20'

    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+P65UkLF8x+pDNEoeSISflL8QTPih/D8lP5CK5gYTaL6x
      0SoVanRYdXERiXdZ1FXw/zorg76Ofpa35k+88wRK7XxGDkP62TC26Qeu8ZbCX4kR
      t+IQSlKk74YTCC15vBFF+pAa5PFCWPBiWcl5yKTxCNy7e/wHSVtusia6WcmvwJJy
      M4cY8uPiKEtwLqwZ6hJIjNbjU8yFRI3EQ1irTcd/6WBErIoaaeQT5GpUvPQ6xa6R
      lfw0OVmKK31Kmwgs+Wty/hiBlASMGdUQZDHVwsoLyFIpWejH+lfY4RMkdqz8BP2a
      CFxQMWipc4lXMw1n4oXpkr5DPAYB0d2vDPL2sKV5KNJJAe9RC4rLlk+9uYqE4PyK
      RswLCZhHuKqFa07ufkRpbFGyywAa70UXtbvPkbJb6G1mJ75ozXTS11JqhAdnHCBC
      2i+VD94/nzLdvg==
      =1SbG
      -----END PGP MESSAGE-----

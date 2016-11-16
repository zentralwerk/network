#!yaml|gpg
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
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQgAlqHX0k6S4NiBxHQg6i2hdM7m5o+QNuNsEQJcJHmPJlri
      jNnYYmv5XDyYvLX6oHSbV9eeKO+Pi9GkiRJE+hMqo3Spuu41fp8m1TnvXZFgR3F1
      koL7M+GGZH9wA2EeFJ+/aKldppT+k/VYG55OKn9um3wzZZraP6aKv2896AOXwond
      R/jhjGXjcdATRDZ2aeYbNW/WQxZXaPRLCKISfftZ7CNDFV3rAX/SgphHnKRP7LZS
      xFGbSHkc/451ZXIl0DrelrKzngQMVa9dTqCCF6hfjPj/0RuCwByuIyYpDMMWcXxs
      nnMuiY2t9OM1D2BWsVHluk7MHymn+MxayPYCPuox2dJbAd2k674qx2Kc65TIpClm
      yMsW1bBAqU07/kEB+oKdTkqUBoAfa0pBxC+62MREA0LFl7YavBHx9ksa8at8PzU1
      +Dfb4gaZHlR4X2oQOUinVf9qC66gkY1Ndiz7CQ==
      =9Zfy
      -----END PGP MESSAGE-----
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
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/V8QXXiydFBlm5j8ETQ/bXzToHGZWx7I4mC2i9r1pHZA2
      diDYSGXPEJpiNJo6PTyIRYCMOyB18cVVRX3waga/dsx0KvAC1lwAibhQiV0frPCv
      ELQ13gHEhfNt4HJveBRBNKjH4MkUIkTgtV98KoMc6+JRk2TPkJGmvG4oV3eTYW2I
      TnG1SB9vgYCEfQUq8hY1FH+Wo7Kl8OGN2b+QUwmxc+vR67Hp3rLXlTPoLcrGPhGj
      Vvj5lDTt8ScVd9NKLjmlNV646+XYuMO9FyTfbAq1yTDUpWdCAfaIt25dyss7xbu5
      rl/bJzjT20KUraYehHQqcd3c0+/40CQYoJZOVgPojdJbAU7Nlju2xM9WE0CgQHLD
      tUjwm10xMBdBPfWEDGxlZNnITWT/bf4y2CRm60uxGpHWNO2TKab9bwobS4PQcD4M
      4FiceoeOxxKJHQ0aJL3POfe15nXvkqsSbwfDhQ==
      =h3Vr
      -----END PGP MESSAGE-----

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
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+O1OB9gG4JKnASFfKCoAE75Gb4+PD8+ROzBvg18bzqD0j
      qjhQL9Ye39oB5R5JmPBso5zgEhGr8vIB3VN3f6vABNaEGPkTh+jf/1X1vwfS0rvW
      rQNulEFoq+F9vUfWFolAamVoqCxXsXtf8KyJHCazIIRKGKNysHOW/O+YSvcGgG4H
      6YH94a1lZoRQCF/2wHEmDTA6FXSqBfijM0QoO2+i+VuUHXYYMZ/FIEDPWLM/wqSB
      aLjMgrDRyUPLvAA88CXrLDT0aO3LzJINtTPVbnohYoFMKI66mAsWwXnJzT29x4sx
      2xXwc3KvAgLIJtEvPnuHMl2ogkJZEO9rGP5D8Iuw7dJbAR6AXwVdttVIFY39octW
      0Tj934ZZw2GDCNGDxfmV+kn3Ei15Qop8UmK6dsuzSd0M+4yg+yr3359y+s0cDGiW
      QwbIX6EZR2TMw6nIf21MRYsXS03gmmfeKXM6Iw==
      =ED5P
      -----END PGP MESSAGE-----

  switch-c1:
    model: 'HP-procurve-2824'
    location: Turm C Keller
    ports:
      switch-b1:
        mode: trunk
        ports: 21-24
        vlans:
          - mgmt
          - pub
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
      up1:
        mode: access
        ports: '1'
      up2:
        mode: access
        ports: '2'
      up3:
        mode: access
        ports: '3'
      up4:
        mode: access
        ports: '4'
      up5:
        mode: access
        ports: '5'
      up6:
        mode: access
        ports: '6'
      up7:
        mode: access
        ports: '7'
      up8:
        mode: access
        ports: '8'
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
      mgmt:
        mode: access
        ports: '20'
      pub:
        mode: access
        ports: 13-19
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

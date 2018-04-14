#!yaml|gpg
cpe:
  ap1:
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf+KxWwNiC4VCjdkTUVRcfqzsGRXHUrfBqyoqpPahT7yu8v
      JiYAc8/zPO0oniP+tM+zCqnIq/kwUe+muh4RTPjcx7Yv4nVA4Y4bcGgbnGqACMjq
      AEZ8qiv+0yBSxqeVgwlfc/eOtyXlYELCwKM9zUnrmS+0J66zd4zKKbfT029izL0e
      r2Mxwe6ax9eRrruOImP1WY4rrGaA6/Ci/qY7mV1r9q2RROtkN4dnMs5j0ob9bu2j
      JV6d3bC7LnZyIzz3Jv8dWGTISPj2UYCnqpR8wIyW46/+mCdZMYd3SFM1lifqJCoB
      hlET/0qjRw7K+ozh6zP1GOgDXHS1YjfLDLXGuLLuMNJIAV6FIphe+t/Y+v6yHvqZ
      8L+stbE0RFrqFBMBLxuqw6RTU+AIVwkH9sZ5AoAPF3g6uZCVq8+KU3d2K7K5WCST
      4p+9mAt3NWq5
      =QPF0
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: leihgabe
    lan-access: priv6
    radios:
      'platform/qca953x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'uebergangsnetz':
            net: priv6
            psk: |
              -----BEGIN PGP MESSAGE-----

              hQEMA2PKcvDMvlKLAQf5AckV1Q7HECxLmeDyj8dNr3/InohRw6SPmmvfoQRK2ds7
              OLIGQCTFgfpm1B4xJbpd+vHrn2LSg1NBO7CDYQSR5ymzyiqBOxYx6vH6omvYle/p
              xVWl33h7fobcbYIKarKBaepINPeWpwZagVEmq1LCkoGxO9Znitnymx7cMcdOg/5F
              LQezU7WhoiB889c9ACIm3lExmSQgQJUV5cNPY5sRZfwHU4k+4e5+XJN2tAZs/w+1
              ALw3Mt0WS6P+tBqvhRptGq7MtNDkfh+BnxerfF11OGPMSLSkGWC4L9NohL6Ftv//
              QSHpsdS7TTiysQNGCblXXHI9u8EO+hrtduD5n3Ei6dJTAbWFxz7BKDrn5dQ2akHP
              5o7b/iTfBuXpjCl+q1G8ia6XQdRJhIEyD3OSHQDLe0asr9eFpt1Tlhb7pwuDNKov
              DaD14TUviH1pVk29ObbLDAY4bwE=
              =86Lq
              -----END PGP MESSAGE-----

  ap2:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf8CYe3pO4cTAkpckOBnLp61msnczVRfWtinHKAmysUFpYX
      m25JhqLKIk+/UmHtOyyaPyo6GqHu62Ckm+TVIKh5yAGlfI5Dsm6PjWzJ1HPaGgnA
      1wMRrbWfZdUkvEP9uvHLtErjoTHqAW/9bF57GE2SY/e392Dz1Y4e6MhMFx61SZ5c
      h+kch3edTO4vL7AijlmMMngRKYbZsZOMFoXdmzLoZWYG+MNv0aig5s04nuYURAxr
      AmgjnCfl9m4/kblLs8b1Z2WI74hCnFMIGRtl7ZoovKDojMAf1HdTbsdujN+zc03S
      tNSCqg4eo9LzNdQnpF6CP0cciEEnlSXKPH/GjGCSydJGARJhGfGxXRmLlFooEpSW
      lO1x0xXGsnrm08EUPdT127uJjCF9nPplCgRRKyTR3IDrDFDpqJyjIMK8+/vQFGma
      zYUuYozyRA==
      =Tlu+
      -----END PGP MESSAGE-----

    model: TL-Archer-C7v2
    location: C3D2 Main
    lan-access: c3d2
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
          'C3D2.eap':
            net: c3d2
            wpa-eap:
             server: 172.22.99.22
             port: 1812
             secret: public
      'pci0000:01/0000:01:00.0':
        channel: 36
        htmode: VHT80
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
          'C3D2.eap':
            net: c3d2
            wpa-eap:
             server: 172.22.99.22
             port: 1812
             secret: public

  ap3:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQgAj+qP7T9D0MGNdstPfT3l0QRBCffcYVc/vGv6xk+s7IqW
      L/7GQhhz3sk63QpyONFt6KZc3KhqAzqG7gL8LmK1+PP48Rh/CRfKx8rh5QxV5RFr
      YgsI2OIcn7DKSBGuwZaZR0KC9mPwr381E8+uPAAuC4CleaYkt6VjVtEJFf89DDUW
      jgtySygaVnG8SxGDc69tq51Zkoq/AlYWgVI+/8UAsja5fUoQa1Aw1YxteJfQ8lAb
      TZWYfDdoNGs3mvvy8wK8NuQBvVnQdgowJYQSdYXfo1HqQd0o5oYsDr633MnfxZ4p
      4ANDPuiSe944WQzdmaeASaE9FWk8vfz5VA8BuMlyxtJGAZPJnXM+l6JY0Nna+kWW
      iYqejp6HmibQCjSxxeyRDIxfEA99LjQZ4t0bqmnamgW0Dbn2hW7sHNmSHD3zX7Hi
      uyIJKqCOnA==
      =kpf2
      -----END PGP MESSAGE-----

    model: TL-WDR4300
    location: C3D2 Kammer
    lan-access: c3d2
    radios:
      'platform/ar934x_wmac':
        channel: 13
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
          'C3D2.eap':
            net: c3d2
            wpa-eap:
             server: 172.22.99.22
             port: 1812
             secret: public
      'pci0000:00/0000:00:00.0':
        channel: 128
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
          'C3D2.eap':
            net: c3d2
            wpa-eap:
             server: 172.22.99.22
             port: 1812
             secret: public

  ap4:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+PradiB/Nuq6mHb99lZfNYbL34NshKQ5Iq4CnDXBqRAvz
      4Y151m7T4JTRKt5mw53rC8jUDvQ0au5IDmar6W5My/Fo9aT9KNkHHFSH9qpzoGeA
      7DA+2Tudsii1Ug+wkH6EjBOGmTq8wndLrfAQY4xW3/BVStgQIJoSyGU0h5RMz07T
      70EAKtApfUP15jhCkkdT3e+bF0eHHrNnI1IgFvrEUexI9huYMv/Fs+zTTz73Ohjb
      Ed2gVVIaa4heU5R3jRBfrKu8bD/8zCCCQ3DaODkQKBiBw2BJeoxUc85ZOa/wTlgq
      ysDcPlhn6fp7zlQghUKrSWN9ehJcUeFAm92nXFWASdJIAaJlWSkGQ24ShWx1iNQ8
      IEsZPVtlP0u2grgV1+5+Ls+X7GX5o5H0iMZmJs9p+FmGSr3s78hQdVG7oMtd5S3J
      kpwuSSzZvXNK
      =JLKE
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: Dresden School of Lindy Hop
    lan-access: priv4
    radios:
      'platform/qca955x_wmac':
        channel: 11
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub
          'jam-circle.de':
            net: priv4
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf8CCFsqahEQIAgZEXLEVzbKpJav5cyoavCvTILJ3SXzulI
              0oPfziWagOe5iUnM/Vc8E+tt7/X7nXT1T3vckufzd6frN/aGef8m1BgRnWf/DAzg
              GmDKDs+GZn4bzFGtZ10+aZqjqstP677MOIX7FZXX0+hGIIcltd9Vgkqea5dZ55zz
              40VNBzjfAvwSLLQzK3HUQGc84Vkd5M7HSEsipJ/0VGASAeYe0B4lz+LYMohW1VJC
              zGeRQBHeUI1QxXwwKmlAxdhh8ebReCjDDLpeids2U/5Y+rHnE+WpLi/bMP/lnzbQ
              ocOpKJcN/VaVKXlcDu6LBxwvvTNGBsMgx6QUPm9P89JIAVBvF4UaSMgSzo7iYPjg
              YJCE4nQK2a3Fomvij6jVq/3NPaH3e8bzURB8zVeZpkV/o0k+mr3S6YVtb8Ofc96u
              cDHLAixhmoMc
              =A9lu
              -----END PGP MESSAGE-----

  ap5:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+PradiB/Nuq6mHb99lZfNYbL34NshKQ5Iq4CnDXBqRAvz
      4Y151m7T4JTRKt5mw53rC8jUDvQ0au5IDmar6W5My/Fo9aT9KNkHHFSH9qpzoGeA
      7DA+2Tudsii1Ug+wkH6EjBOGmTq8wndLrfAQY4xW3/BVStgQIJoSyGU0h5RMz07T
      70EAKtApfUP15jhCkkdT3e+bF0eHHrNnI1IgFvrEUexI9huYMv/Fs+zTTz73Ohjb
      Ed2gVVIaa4heU5R3jRBfrKu8bD/8zCCCQ3DaODkQKBiBw2BJeoxUc85ZOa/wTlgq
      ysDcPlhn6fp7zlQghUKrSWN9ehJcUeFAm92nXFWASdJIAaJlWSkGQ24ShWx1iNQ8
      IEsZPVtlP0u2grgV1+5+Ls+X7GX5o5H0iMZmJs9p+FmGSr3s78hQdVG7oMtd5S3J
      kpwuSSzZvXNK
      =JLKE
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: a
    lan-access: priv5
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'verbalwerk.de':
            net: priv5
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/QRJPWXaSBfbpX/YoEZhhlAae1WON615+sbfTbsVIPuSx
              Cx6NeDoXprpxmLUuFg7L5wb7Ytno4bNYpUd1uvoxongH2oMmx+8vBPtg2R+h5p2q
              TQPVGrXdn+9V6wLvIe8lQ+JRlSGLEb2Pz3GgcmxTXKYPNkkOlhCEJxqQ3KzBqVjJ
              F2A13vVH0Jy2nHxqa9BSM59hEHKyNFu+fQz2OJw48n9BFXth1ciq+OG4ieCm/EBh
              RVVYERbBtt2GoC+qsSpd2ckI3aWf0v4DNcRXNXyVlGDwhKKeHmz9wZDBjIQVjY92
              HYr6cKL4bvLDzluow8iudDN3minEhcIgxXMSz6YP6tJGAYCkykJ2MRV0Cjba8Tb+
              rP274e9dpaPRXmrUCVaiqEUHp44xs+AwBA/R4jFPeYlZjg8o7B0noYPMHj1lR3iN
              XiKIC2CtZg==
              =6HRg
              -----END PGP MESSAGE-----
  ap6:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/eSXE1z6WQdP7+gpp3GJU3yVqg6sPV9nZPkaEgFfVQeDx
      xs6mzCFphbRNJCAOqytzYCDJ7NqV5APjYoYHumxfjJcW0b5Aki1bSIgvMnczOyUg
      PvHNcf7no5u7XnJf/OWgCJuKZN1rmdePYTXVVoHF3Z4xKcG1ybQsX90ulYNUHk1N
      NIY3++t1xreHyGMzArpld289eztpCCPU2XcSJutDcuyPwTVzlhhn653FHEnKhs7c
      qABHMKy0tpoAVgbl6K7GnBDrif+rEOVS5q846si6rHZ39VPkKQeLXJP/PxkbsKU0
      Z8EL7H3lqRZG1GPZ3KPBa/WU0Czz67TDZGfMA40p5dJYAee5g/NUwqjFxag1Uj/r
      AnLNzXDFrdrxRaJOSDLxC37GcIonMcVeLY/R+F812PUe/UgqzdOusdvTZUnco/63
      rxgsW3bwIysHRYkg90GDmW505fNiC96aEA==
      =Noqk
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Broken flash
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 13
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub

  ap7:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/eSXE1z6WQdP7+gpp3GJU3yVqg6sPV9nZPkaEgFfVQeDx
      xs6mzCFphbRNJCAOqytzYCDJ7NqV5APjYoYHumxfjJcW0b5Aki1bSIgvMnczOyUg
      PvHNcf7no5u7XnJf/OWgCJuKZN1rmdePYTXVVoHF3Z4xKcG1ybQsX90ulYNUHk1N
      NIY3++t1xreHyGMzArpld289eztpCCPU2XcSJutDcuyPwTVzlhhn653FHEnKhs7c
      qABHMKy0tpoAVgbl6K7GnBDrif+rEOVS5q846si6rHZ39VPkKQeLXJP/PxkbsKU0
      Z8EL7H3lqRZG1GPZ3KPBa/WU0Czz67TDZGfMA40p5dJYAee5g/NUwqjFxag1Uj/r
      AnLNzXDFrdrxRaJOSDLxC37GcIonMcVeLY/R+F812PUe/UgqzdOusdvTZUnco/63
      rxgsW3bwIysHRYkg90GDmW505fNiC96aEA==
      =Noqk
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Turm D, 4. Etage
    lan-access: priv7
    radios:
      'platform/qca953x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'Zippi':
            net: priv7
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQgAjnmaVwPChe6mDZI1yBKyBhsbuGabre05JWYYIReV4rnG
              SJEp6Ei7kbm+2iEhrlXyhu9Ke2gILUFXbopRoaytOjvT9VcnBhWLPA4EuqsGLep5
              t32XyK94BLTY3vRhZrvcloZAjXlaGnaEyAQ9Wk5IVoQu1S+TeVd2VOS67BQeeCLr
              xFE7mzY8FQR01jBC0QEOXRdfwZ83Zm4JzwTm4ba6CABElmQoBbAPP86ydbNxl1n7
              R/n6y/A6GjgR8HRLaISO0x6Vy6XCWBEhMPbGC8/7qF+1BdVo9qe9IyQBZAyfBQ2b
              nTDna1wB4y7CSOEnVC5WRgmjrHr4+JB3/gPPqR6gddJGAYkw7BkNct7Xd8bWaOJP
              LSzwuOSwP9ozjMD8RxfJ9ctfGTI4aJ8EcMJ6CAdbnMl0qrucTvlh/nZ/xNtzXplA
              is+jAuMF8Q==
              =MtC9
              -----END PGP MESSAGE-----
  ap8:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/eSXE1z6WQdP7+gpp3GJU3yVqg6sPV9nZPkaEgFfVQeDx
      xs6mzCFphbRNJCAOqytzYCDJ7NqV5APjYoYHumxfjJcW0b5Aki1bSIgvMnczOyUg
      PvHNcf7no5u7XnJf/OWgCJuKZN1rmdePYTXVVoHF3Z4xKcG1ybQsX90ulYNUHk1N
      NIY3++t1xreHyGMzArpld289eztpCCPU2XcSJutDcuyPwTVzlhhn653FHEnKhs7c
      qABHMKy0tpoAVgbl6K7GnBDrif+rEOVS5q846si6rHZ39VPkKQeLXJP/PxkbsKU0
      Z8EL7H3lqRZG1GPZ3KPBa/WU0Czz67TDZGfMA40p5dJYAee5g/NUwqjFxag1Uj/r
      AnLNzXDFrdrxRaJOSDLxC37GcIonMcVeLY/R+F812PUe/UgqzdOusdvTZUnco/63
      rxgsW3bwIysHRYkg90GDmW505fNiC96aEA==
      =Noqk
      -----END PGP MESSAGE-----
    model: TL-WDR4300
    location: Poelzi
    lan-access: c3d2
    radios:
      'platform/ar934x_wmac':
        channel: 13
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
      'pci0000:00/0000:00:00.0':
        channel: 36
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
  ap9:
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf+KxWwNiC4VCjdkTUVRcfqzsGRXHUrfBqyoqpPahT7yu8v
      JiYAc8/zPO0oniP+tM+zCqnIq/kwUe+muh4RTPjcx7Yv4nVA4Y4bcGgbnGqACMjq
      AEZ8qiv+0yBSxqeVgwlfc/eOtyXlYELCwKM9zUnrmS+0J66zd4zKKbfT029izL0e
      r2Mxwe6ax9eRrruOImP1WY4rrGaA6/Ci/qY7mV1r9q2RROtkN4dnMs5j0ob9bu2j
      JV6d3bC7LnZyIzz3Jv8dWGTISPj2UYCnqpR8wIyW46/+mCdZMYd3SFM1lifqJCoB
      hlET/0qjRw7K+ozh6zP1GOgDXHS1YjfLDLXGuLLuMNJIAV6FIphe+t/Y+v6yHvqZ
      8L+stbE0RFrqFBMBLxuqw6RTU+AIVwkH9sZ5AoAPF3g6uZCVq8+KU3d2K7K5WCST
      4p+9mAt3NWq5
      =QPF0
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Turm D, 2. Etage
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 11
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
  ap10:
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf+KxWwNiC4VCjdkTUVRcfqzsGRXHUrfBqyoqpPahT7yu8v
      JiYAc8/zPO0oniP+tM+zCqnIq/kwUe+muh4RTPjcx7Yv4nVA4Y4bcGgbnGqACMjq
      AEZ8qiv+0yBSxqeVgwlfc/eOtyXlYELCwKM9zUnrmS+0J66zd4zKKbfT029izL0e
      r2Mxwe6ax9eRrruOImP1WY4rrGaA6/Ci/qY7mV1r9q2RROtkN4dnMs5j0ob9bu2j
      JV6d3bC7LnZyIzz3Jv8dWGTISPj2UYCnqpR8wIyW46/+mCdZMYd3SFM1lifqJCoB
      hlET/0qjRw7K+ozh6zP1GOgDXHS1YjfLDLXGuLLuMNJIAV6FIphe+t/Y+v6yHvqZ
      8L+stbE0RFrqFBMBLxuqw6RTU+AIVwkH9sZ5AoAPF3g6uZCVq8+KU3d2K7K5WCST
      4p+9mAt3NWq5
      =QPF0
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Turm D, 1. Etage
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 6
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap11:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+NRr+k/Szfg+tRbLSIqBADBXJmZ0rFS0/mmDuV+FdGZhn
      D/3fHmPuH9GVii1dMWjXrZV2+HG2S9a3ww/ACiKBVoKzoj3zpgmaTDhKX+g7syTe
      pZ/4CAcrbs7K9YbYnkHmRZIRgv0sUOdLKhapEEhf59Q8yxzMYKup1IZKI7Il6sin
      owma3JT0FE3omqYNK0EDyf/P/cgd+mOHQg1rQ3iDVNpwFHGHvBxC5Fav5+C8s3r0
      9yl2ZjOZpSjUx/nvYU8y4ZW36du+tce5GFvCPeF+o6HqzCwZBaudZ61fXPneI3yR
      JiW0nlhrIK9DCXn5nJNcpFNrSz93MnKiAYC9Vf12e9JHAdwuv4z47cdIjrnS4u3I
      zYjHv9Epj5ktnjkMRxdZBGHR/WQIO/9o+az4oWJ9SRL5pVDMeWDCWfr6X9RApemJ
      o5l9+IGeKMU=
      =8sEk
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: B 2.03.04
    lan-access: priv8
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'braeunigkoschnik':
            net: priv8
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/QTQnu3Sy7TdsBQfYh2oX6ArEQNOc7Wmy/8fQLrI8CfPT
              K7i09JxH6fVc3Kd8AW1+REUUZKmtdeJX5tQ73SKNCuH9iecKHAF5pNOdyFel0cMO
              ToDTwIuvSPQc9uq7FzFWTFYxmw9E4blPWN1A8WKnz+8N4gyvl4BDLl0tAzUnPWuE
              Yh91jO3kMxB4ycI6PZIBACh/00B/gx/7DAk/JyMmNmR3IO61iKXWM8STl62HEpeF
              0Znx4oTYdi/z9oTT1fYWkAyRjOBmCsvCFavMAjbiSBPBq9Z2SfPhF5yXTRYlZaYD
              lEC2a3N+intDV2jja5IgqQjI3Ax2bSk2CElheOSClNJKAUihQm2gRc6bu5r7npVw
              IvaMo0bVcu+0S13lAGtS8emhZsiwVTPyNCuLN1OZFi383zv7woDcBZfA45OhiXOG
              ALixMzJMuax7lwM=
              =QmyY
              -----END PGP MESSAGE-----

  ap12:
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf+KrhJQfg2IAJ2SHEL8x0iAAn1ZYJ4kFVGYkmoEbN6iM4O
      d2/0f8/2voMHChSTheQ5Y+Vp8op5gzOhROOShfJG1khugiEPhza+4sV0WD8Oa6Vm
      FPXTr1HJdF/LZkCAVBvJOgsUC1U1PrSiSeKp3ziZyByKw6Rox6Krw6fkR2miuixs
      fV0EW/H9bIVGru7Dtrgw1zq4QopxuFikMp/YWbmX0TEff6ntFCVwrGRN8Iluyaoy
      aLon/Wh4DW8KQkw+s0SWxq/lIkCdvXj8TnGY3h1HNSXEfPE4hWGgwGwhLgNcNGPb
      MC3IYHbmy/640GGl/tmqSnKZFuCVebMdIQ/j2iLLM9JHAe57w79qwwXIlUZ4/0I8
      gaGTRjFyub+6lP9cdR6nd4FuGZanXQAEND/bwIOQtt1+jgcrgaaF3uv3gWO6Mckl
      BEELWgTZJzE=
      =ECvx
      -----END PGP MESSAGE-----
    model: TL-WR841Nv8
    location: Dekommissioniert, r/o flash
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 6
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap13:
    password: |
      -----BEGIN PGP MESSAGE-----

      hQEMA2PKcvDMvlKLAQf+KrhJQfg2IAJ2SHEL8x0iAAn1ZYJ4kFVGYkmoEbN6iM4O
      d2/0f8/2voMHChSTheQ5Y+Vp8op5gzOhROOShfJG1khugiEPhza+4sV0WD8Oa6Vm
      FPXTr1HJdF/LZkCAVBvJOgsUC1U1PrSiSeKp3ziZyByKw6Rox6Krw6fkR2miuixs
      fV0EW/H9bIVGru7Dtrgw1zq4QopxuFikMp/YWbmX0TEff6ntFCVwrGRN8Iluyaoy
      aLon/Wh4DW8KQkw+s0SWxq/lIkCdvXj8TnGY3h1HNSXEfPE4hWGgwGwhLgNcNGPb
      MC3IYHbmy/640GGl/tmqSnKZFuCVebMdIQ/j2iLLM9JHAe57w79qwwXIlUZ4/0I8
      gaGTRjFyub+6lP9cdR6nd4FuGZanXQAEND/bwIOQtt1+jgcrgaaF3uv3gWO6Mckl
      BEELWgTZJzE=
      =ECvx
      -----END PGP MESSAGE-----
    model: DIR-615H1
    location: 'Stolen? (was: Turm C 1. Etage)'
    lan-access: pub
    radios:
      'platform/10180000.wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap14:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: Auf Halde
    lan-access: pub
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap15:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: B4.09.01
    lan-access: priv10
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'etz250':
            net: priv10
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/TWILeffINpCZcCpIo3yTgSRK8qt69y7HGblvG2nzX2Ab
              DtpBf11tz39oum2PX5KLvL2HKsuH/ZOiDaVRxPjrS0CaaPcg61DJnzRk+TISJEYC
              Dzo81RwJCr0mApbs2gOtH97bE3VSSuBp5DuKmU1DfjoYlOX8eYx12M0L3CFbCj7S
              ZEutOF4m83s0GlUNo8529vg3KmJhDOPYaMYo/TQAfAThTPGj8oofD6vxy8Fxnrz7
              yT5vqFevanWj3MK8BjQTCHn2LOAc1O3jDTgQYYf8bwR//Jxy76k3OgCEO9kqGzAt
              Ap5UnPlyvYfpJooxIy2cuttWCnuCqhydRkFWh3kqUNJDAfaC2SytL/7cGgV52P+N
              OZTsGIHHn+c9k+XtWTQDEGSK5l7quymCf955wlQTRmYM3b1lbx3VVudoMgWW19Gr
              lvLcOg==
              =Vpo/
              -----END PGP MESSAGE-----

  ap16:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: B 4.04.01
    lan-access: priv7
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'Zippi':
            net: priv7
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQgAjnmaVwPChe6mDZI1yBKyBhsbuGabre05JWYYIReV4rnG
              SJEp6Ei7kbm+2iEhrlXyhu9Ke2gILUFXbopRoaytOjvT9VcnBhWLPA4EuqsGLep5
              t32XyK94BLTY3vRhZrvcloZAjXlaGnaEyAQ9Wk5IVoQu1S+TeVd2VOS67BQeeCLr
              xFE7mzY8FQR01jBC0QEOXRdfwZ83Zm4JzwTm4ba6CABElmQoBbAPP86ydbNxl1n7
              R/n6y/A6GjgR8HRLaISO0x6Vy6XCWBEhMPbGC8/7qF+1BdVo9qe9IyQBZAyfBQ2b
              nTDna1wB4y7CSOEnVC5WRgmjrHr4+JB3/gPPqR6gddJGAYkw7BkNct7Xd8bWaOJP
              LSzwuOSwP9ozjMD8RxfJ9ctfGTI4aJ8EcMJ6CAdbnMl0qrucTvlh/nZ/xNtzXplA
              is+jAuMF8Q==
              =MtC9
              -----END PGP MESSAGE-----

  ap17:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WR1043ND
    location: Saal A
    lan-access: pub
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap18:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Auf Lager#fast schon verliehen
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap19:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Turm C oberste Etage
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 6
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap20:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/couJwoTRzTEycGB3t2aa4NTjOxKmh/Q7ScvHbxEX1VhX
      sg0bW+CXQag+zy00oAbXlK/vOSP+NvOlt7vn8X50kmYTHlcZtelry4tAZeBJyw29
      Vb/VvrR6F8nft1q2hpiGzAWgy8rkyncAKwCdLfsdOC/A4/QH5jis9fMnkDLbwUb+
      cruIIe977BlE1jC5s09F7ZSeHUby2lMhcsxuyS+DTsBIc37Qp/Tpeq/sY7wtbrE2
      MbP4mZjtBOgUCCtvauONtKjt2Zg92scob8lHm4m77qh6b4rxJ3lEW+oapelHQGId
      ULxd5KM48AqV3AVexmTXNVlU0ppIdPvjxV4WR5VQt9JJAevANNiEBSPbsQwF0QNO
      4M1Fl6WH1WTjVf0WQPMmUowiH0hyJuSx46sju9bEJJCaueJtIhCvUbOeOURwZaVe
      ZLBzZVhVZJoO9Q==
      =bGE5
      -----END PGP MESSAGE-----
    model: TL-WA901NDv3
    location: Dekomissioniert (B 4.04.01)
    lan-access: priv7
    radios:
      'platform/ar934x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'Zippi':
            net: priv7
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQgAjnmaVwPChe6mDZI1yBKyBhsbuGabre05JWYYIReV4rnG
              SJEp6Ei7kbm+2iEhrlXyhu9Ke2gILUFXbopRoaytOjvT9VcnBhWLPA4EuqsGLep5
              t32XyK94BLTY3vRhZrvcloZAjXlaGnaEyAQ9Wk5IVoQu1S+TeVd2VOS67BQeeCLr
              xFE7mzY8FQR01jBC0QEOXRdfwZ83Zm4JzwTm4ba6CABElmQoBbAPP86ydbNxl1n7
              R/n6y/A6GjgR8HRLaISO0x6Vy6XCWBEhMPbGC8/7qF+1BdVo9qe9IyQBZAyfBQ2b
              nTDna1wB4y7CSOEnVC5WRgmjrHr4+JB3/gPPqR6gddJGAYkw7BkNct7Xd8bWaOJP
              LSzwuOSwP9ozjMD8RxfJ9ctfGTI4aJ8EcMJ6CAdbnMl0qrucTvlh/nZ/xNtzXplA
              is+jAuMF8Q==
              =MtC9
              -----END PGP MESSAGE-----

  ap21:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf9FStVXMrOYIRRbjSHz8Y7Ju/Ty0DigsiKSEYo0XrYhbo7
      chHzdiVhOB9vtEzsdGeHg9boGp8Hl1ZmR2ovLn/RZRRZWgpzZrRBalDLYEaGq3/F
      +XMs6Dtq56mseCuNcV4OYBhBkvf4I8bzsu/e8LYVCR7lBpfG1xyJRjayB77NZvI4
      CEeGt1GnFrAytR9f2GxbKWkgCI0MXekYVyzY7GVxaVs26YNlYLBxRMsd1HzKZwWw
      URyyHtaLQhwq/69ZJeNEeKYCIGoZLthdcyB/USFAr0VAKjuehvaNEkPx8jCxEeQa
      xnn5YX7ZPbp160ykGKzVx4leTyiyNJD4mmPA0rLwi9JFAXztOqtGOqY+/p2qBksY
      dNOOUW9B2uuBPn+JKi90SwmIX83oRIfvUt/UezkPkorpE1qjZW0LKrF0fM4sznWL
      nfZjlJbn
      =MC+3
      -----END PGP MESSAGE-----
    model: Ubnt-UniFi-AP-AC-LR
    location: Haus B, 2. Etage, zum Innenhof
    radios:
      'platform/qca956x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'Restaurierung Wolff/Kober':
            net: priv9
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/RO1FRAB4KQ55x6RUlE3A6kcvlfIZpS3C2luEHOJkR1rv
              D2y2KqHxjevps1KxHph2Y9QCH7Kcvvf1CDk2ay/8FJvSLPEOa/VmxRMh0YXPmptU
              vZS62f8z8Ho6P8ZuPDWeWOauH2+pq/a49xZhsJCDEJ+rJJST4wruPWV/o5wCza19
              lFCJA3USuR7vGZ+i0O/28WG8Q5Bn51e3GTS99i5wWrVGxBPcnuu0vNO0Kp16Pf+c
              kOiYsGlhM6csfB5TmNWxqm27A/3YdyiLqUK585NfcnlYovHKsNjyv23B1pUzwaPF
              va+sbwbzQDAKHfh7WDIQayR0zpTsyApTrCiKqLGnZtJFAaBJ7+oqOLMVxlmB+/YP
              dS/9UOmDV+BmsPwe/suIyHDn3bQ6LK5f10ZHnAtot9Ecf+X8o0ZvG1vYrHeSx16K
              4o42SHID
              =2Z0a
              -----END PGP MESSAGE-----
      'pci0000:00/0000:00:00.0':
        channel: 36
        htmode: VHT80
        ssids:
          'ZW public':
            net: pub
          'Restaurierung Wolff/Kober':
            net: priv9
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/RO1FRAB4KQ55x6RUlE3A6kcvlfIZpS3C2luEHOJkR1rv
              D2y2KqHxjevps1KxHph2Y9QCH7Kcvvf1CDk2ay/8FJvSLPEOa/VmxRMh0YXPmptU
              vZS62f8z8Ho6P8ZuPDWeWOauH2+pq/a49xZhsJCDEJ+rJJST4wruPWV/o5wCza19
              lFCJA3USuR7vGZ+i0O/28WG8Q5Bn51e3GTS99i5wWrVGxBPcnuu0vNO0Kp16Pf+c
              kOiYsGlhM6csfB5TmNWxqm27A/3YdyiLqUK585NfcnlYovHKsNjyv23B1pUzwaPF
              va+sbwbzQDAKHfh7WDIQayR0zpTsyApTrCiKqLGnZtJFAaBJ7+oqOLMVxlmB+/YP
              dS/9UOmDV+BmsPwe/suIyHDn3bQ6LK5f10ZHnAtot9Ecf+X8o0ZvG1vYrHeSx16K
              4o42SHID
              =2Z0a
              -----END PGP MESSAGE-----

  ap22:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf7BtlMgwf07JoaOJ6z5863c/FltqmwVdPQVv8+Bmo+Zlpa
      QJTyB6vDzn5lnXjHtAv5rdYfhqCRcEAc6ocq/0njwGlDaNOfbwPn3rFVBxdmMhz+
      i/reMrlfwE+Xs4DLxrL1zQB71up1+IKFYYiIboWvHHYSMW1Qbzk5r3Tjx944dl+z
      dMGqXqd7Bx1TFNowpDF7iGRJqKKm3kolFP22ZG+ZYFOSitqJ2UOP3bbo6yM6uV8T
      PcxcT4ZaWEASGOXyMjxGzm+It0bbFjZiPwEvm4brUeGPqDZ/ILfOwZtx8FAc30oz
      1gIrU+p/4lON9GlaO56ImzkOiALEKtsVMLQSh0HcYtJJAb5HkkisiWBMAfEeiN7A
      tFSHeOZ6Pj9Zn3WiT3M4L2KFBQhnGcopLrvKY+YDTFc+a7UU5kboCkHJ3rQgXo+h
      0wbkaiNHsshKWw==
      =MXwF
      -----END PGP MESSAGE-----
    model: TL-WR740N
    location: Haus B Souterrain unter der Treppe an Turm D
    lan-access: pub
    radios:
      'pci0000:00/0000:00:00.0':
        channel: 11
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub

  ap23:
    firstboot: True
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf7BtlMgwf07JoaOJ6z5863c/FltqmwVdPQVv8+Bmo+Zlpa
      QJTyB6vDzn5lnXjHtAv5rdYfhqCRcEAc6ocq/0njwGlDaNOfbwPn3rFVBxdmMhz+
      i/reMrlfwE+Xs4DLxrL1zQB71up1+IKFYYiIboWvHHYSMW1Qbzk5r3Tjx944dl+z
      dMGqXqd7Bx1TFNowpDF7iGRJqKKm3kolFP22ZG+ZYFOSitqJ2UOP3bbo6yM6uV8T
      PcxcT4ZaWEASGOXyMjxGzm+It0bbFjZiPwEvm4brUeGPqDZ/ILfOwZtx8FAc30oz
      1gIrU+p/4lON9GlaO56ImzkOiALEKtsVMLQSh0HcYtJJAb5HkkisiWBMAfEeiN7A
      tFSHeOZ6Pj9Zn3WiT3M4L2KFBQhnGcopLrvKY+YDTFc+a7UU5kboCkHJ3rQgXo+h
      0wbkaiNHsshKWw==
      =MXwF
      -----END PGP MESSAGE-----
    model: Ubnt-UniFi-AP-AC-LR
    location: Seminarraum, Haus B
    radios:
      'platform/qca956x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----
      'pci0000:00/0000:00:00.0':
        channel: 36
        htmode: VHT80
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: c3d2
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf/SO/v+xhO1yOG83uCcAN2r5ixNf8+Ksp1dPwBKQHUViwJ
              /KZHBAUzjTtGFIcpEy3exZcAorJ8SeGaB0hv1zw1HZuHN7Els8KKDu4G5u31Sp8w
              EFtuwujlkFAt3t57jp02O0qvXBCIA14eNlakc9fcPypibTrIEGp2SCzw/kty4r3g
              EGUwn1sMPjeQxon5Y4JY4OmZBXsnZkKMwTYjAbL+RS300xV1Nh/WWSTRfueAmT5f
              xfyHj4NlOoBNBILgm1qlrOdgqJSvHM6rw47BoiDuxeVtgmyPqSbHmN8d7xExbuxB
              tdcnI6HfSv47ZhLARH08BiI7nLaKNygwgy6yKr0zctJAAetIX8BADb4W4QgyM7VD
              pYqAfy5Igg342W+ZSMyybiZccncchv4opsyDFTjuby9mqL8OwaMWkeNcNPALaT9v
              rA==
              =TEEI
              -----END PGP MESSAGE-----

  ap24:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf/Q5T8CgZk1oFVn0dEhGhCC6bT1bNjddjruM3eFTTtz9H7
      eDBDa0fMMGnI7f+MyizUSNXmaNnxwE/1Su6B02CKelxfKrYqgjjYnEUdYaH5lXNS
      xvwoC1Jy72tcu42li+fvlNtuK4oZ9eqGrZEsQ4hzdxL2AFYmyVwGEEdjOppe/bMf
      xJeqZ3wiDZigWRMXYBsX3e54bqZZiJUBkGyWQGDloTWvSTQ1TvMlFHxxzAOdrpOs
      puxi3+AfYUF43/8KYxHVXLrVRl4tCHOa6L90skigKB2hh0gURlGLYgQHsF+BofCP
      iMwCrRhI5aVz9Am+NUtenFfql0LjDtGNEuD65ziJK9JEASgdMCyDKYnXRl0fS8qG
      dL4R8ZwMpP2L70RiMPPRGsa/MXDXg1YuK8unYUkQt2y+KLevqHrKe7hZ9xwIu5Zm
      FvUs2Ms=
      =nKEk
      -----END PGP MESSAGE-----
    model: TL-WR740N
    location: Farbwerk
    lan-access: priv12
    radios:
      'platform/ar933x_wmac':
        channel: 6
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub
          'farbwerk':
            net: priv12
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf+IPiScue8N9DGdOEELn01o1UhcIbtAUvEQ/nGSvzTpp/w
              0+h/i/TfaGsXmJh+RvuwactFWG416TKShAaHkintL6SU3hrxwRuFpSeoU7rIVm88
              W7h/jr7FTXmGUka3UV8nCaGBOzXMZ6Vmn7zubr5q6v2bzPkAdG0RRhjyyRZSV/Ab
              p73OyR8LNpjBlComlF8+/8+Q1bmqBYJrt3kKfP7LYLxk0PNZDSmVx3W/dXMPGBBx
              5baGwT+Ab1QO2qApXN3IT3RT4ljyhhjLNNsonZjwhe14Tn3vhiJfB7GruSv3kVsc
              mYDp/KPUJOSn99wu+d3TqbTQTC1QwxEFsYmfgHZVGdJGAS1NhkAXnuqox4K+ZIIN
              YajjQ95DqiyNliNAyrvW9Lo948EekRksULkAQokvClg92Rjz7R8768ZGuSiBNy5Z
              75+9TF3imA==
              =eVje
              -----END PGP MESSAGE-----

  ap25:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+MAk8ac92dR6ZebVtC2MeuAiqIla9KADwA9Xx0g8x/B03
      4LOt2SDGKq5L0hjDq1Ex8eQSNDwGyaXWu6BfF1yJnNbdXaBrzLArd7mQ+yvahZB1
      S4NDPHyR19Mtjv0aUfgnmpA6q6+6Tmi8u3bMPDfKW/fiq7+m5TgCRb6XFeS3U+RF
      wdbrMtvw1XoGhnJZ+kpM6TSceTae3Ttam0UzAVhS2n+UAf+pIU3hDLoa+xj3vA37
      AqWAQZ6MqNUoMpcrSHI3hCMc0h2IBJ/DKNIR5Bjyo7SwrzWMIAcgLVr19XJZgGTQ
      GkUxfjlFJeg7VkO3KNDWdhiR9vegP0CObC1TyMXf+NJEAfgYscLlFm57mSYa10mX
      rNRqIYYlgp9E5JMoxDV5UbStKHQCpxHGb5BZ2MgfWsR28ow7U6Bu7iMbPzhUjBs+
      rmWoaCk=
      =Lj6m
      -----END PGP MESSAGE-----
    model: TL-WR740N
    location: Farbwerk
    lan-access: priv12
    radios:
      'platform/ar933x_wmac':
        channel: 6
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub
          'farbwerk':
            net: priv12
            psk: |
              -----BEGIN PGP MESSAGE-----
              
              hQEMA2PKcvDMvlKLAQf+IPiScue8N9DGdOEELn01o1UhcIbtAUvEQ/nGSvzTpp/w
              0+h/i/TfaGsXmJh+RvuwactFWG416TKShAaHkintL6SU3hrxwRuFpSeoU7rIVm88
              W7h/jr7FTXmGUka3UV8nCaGBOzXMZ6Vmn7zubr5q6v2bzPkAdG0RRhjyyRZSV/Ab
              p73OyR8LNpjBlComlF8+/8+Q1bmqBYJrt3kKfP7LYLxk0PNZDSmVx3W/dXMPGBBx
              5baGwT+Ab1QO2qApXN3IT3RT4ljyhhjLNNsonZjwhe14Tn3vhiJfB7GruSv3kVsc
              mYDp/KPUJOSn99wu+d3TqbTQTC1QwxEFsYmfgHZVGdJGAS1NhkAXnuqox4K+ZIIN
              YajjQ95DqiyNliNAyrvW9Lo948EekRksULkAQokvClg92Rjz7R8768ZGuSiBNy5Z
              75+9TF3imA==
              =eVje
              -----END PGP MESSAGE-----

  ap26:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf9EOhVrZ5rdUXxF8wLfkDsag+sgPkhZHffQuTbbtJT/kdZ
      pT9po4TklwWBMQ+X8XqLN2EFxN5k2ViM9INoqOnWlP42whYu1Y3GWVv9RrrJrgDo
      z4Bf+MLZ/1XudYQtfqCtVlEWwtz4UZCYWHkszuiCGPU4baTj0tKibUP63XkbVtpe
      cqC53aMBN4ZSTbhzzoJeZiIHvl6I5hTQRvL38SSF4MTz6MqFqz1O7Ip1MCWFJHlO
      XW4dsNhe6GYpFg+ei8bp//IvrfHhsRADZDKcUuNxrMkljOH9Z76y4wI7IONw9Acb
      ZLFVC8alv0FQ8cVmIRL74zYMvZtys9/l7UbpZ4Cgu9JFAROwEUdGUXE5QFgQGGJQ
      Esz/Ou+ovkApM9+AO/KBqKN5NsoncLvfIfWwfAxYO1Vfb3aC/iETh496s0MD12WI
      lorv3GDp
      =C8xr
      -----END PGP MESSAGE-----
    model: TL-WR740N
    location: Turm C, 3. Etage
    lan-access: pub
    radios:
      'pci0000:00/0000:00:00.0':
        channel: 11
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub

  ap27:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+OfzMobYnaGMzLr2H1RQaka2FcYsAiYuoP7/yNWppUGdY
      2pZK+yhVInxTOMc3c40oBRfEPSL2yLKsHxJRKYNQKze+gsPgL4OSHIa4dfyNYr+Q
      PlYoFf/xCdug6kKyLK9Ka/BLuVU/sOEAoLQlXvPy+67u40TFZi6P+KEcwsaF0+Cl
      YghJ7vFQaMqOoFBmPUIXG/FBt2C9pEyTkRJGcJu2EnXNyUPxo5I2ufrESmZhFqEl
      LRf0JMBjOadrGhBNWgwxIOFWbK5V+UJqYQP2irtHWNv7bcUtqyzUtLM5URDGthoR
      U4e3G2JjVRqbGJwBL3NbbQz/hAQH0X6Ga67CtEeGIdJDAVqd/YvqMnibllu57Zcx
      rdTX9iPbjkHmX/7HVSrdv0mDYEA3GAqxV6/C7gte0u5Yqz3lNVCdzrIX/7K0uPXO
      8jprrw==
      =dnNO
      -----END PGP MESSAGE-----
    model: TL-WR841N
    location: Turm C, 1. Etage (EG)
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub


  ap28:
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+KrhJQfg2IAJ2SHEL8x0iAAn1ZYJ4kFVGYkmoEbN6iM4O
      d2/0f8/2voMHChSTheQ5Y+Vp8op5gzOhROOShfJG1khugiEPhza+4sV0WD8Oa6Vm
      FPXTr1HJdF/LZkCAVBvJOgsUC1U1PrSiSeKp3ziZyByKw6Rox6Krw6fkR2miuixs
      fV0EW/H9bIVGru7Dtrgw1zq4QopxuFikMp/YWbmX0TEff6ntFCVwrGRN8Iluyaoy
      aLon/Wh4DW8KQkw+s0SWxq/lIkCdvXj8TnGY3h1HNSXEfPE4hWGgwGwhLgNcNGPb
      MC3IYHbmy/640GGl/tmqSnKZFuCVebMdIQ/j2iLLM9JHAe57w79qwwXIlUZ4/0I8
      gaGTRjFyub+6lP9cdR6nd4FuGZanXQAEND/bwIOQtt1+jgcrgaaF3uv3gWO6Mckl
      BEELWgTZJzE=
      =ECvx
      -----END PGP MESSAGE-----
    model: TL-WR841Nv8
    location: Vorrat
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 6
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub

  ap29:
    firstboot: true
    password: |
      -----BEGIN PGP MESSAGE-----
      
      hQEMA2PKcvDMvlKLAQf+ILp1HB9Y8e9j2ZB8CCDcZVLPoG44lWrqUx9iBpL96voq
      V+meMGvnfwO2CJLKtGEN1CHngA7z273RlZRfIWLnDH2GPtuZ1yhijIzrzZVJEU8r
      ZAKvtv3r6CqJlWQerSskAewyMJrTcGDL/Y5bLIea7Q54insJWGw9S4p5hnd89gql
      G6D0/B1aQVJs4nFsGGO8975reB0J9oA0UaaNkw+WcbOYIIINyr4sSy6wB13oIRmy
      579fAiMdgUklq2gXjA0Hif7EyjTuGlHi86IsM1uhlTCi+RBHkI81ZANxOxtHE0Ew
      LoJACvgeby1RJcHV9OK+zTQOoRHlw8gTFrfvCh7LDtJEAQ8xPDDw1A4WS0TS616A
      Mvw+O+oT2QkyhyP4epznkGilUlc63SzND7tqvO9POFgYSXFDNMrnStQVPohpeD35
      9O/WOZo=
      =NOEY
      -----END PGP MESSAGE-----
    model: TL-Archer-C7v2
    location: B1.05.07
    lan-access: priv13
    radios:
      'platform/qca956x_wmac':
        channel: 6
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'jungnickel-fotografie':
            net: priv13
            psk: |
              -----BEGIN PGP MESSAGE-----
      
              hQEMA2PKcvDMvlKLAQf/Vs+PSo+K0zA5dQz8zcQwsIqOn5ZL7JthytWOruNNAPlY
              aVyr/7yNIVD2WH4gEbE0ybHEekaQ1CPJHqr1VaV2Y9JFDVCeXEr1xQwRcWB8qQkL
              pBtthyhq56x6110/mdTeuXIZYvTckQx1hCdZBMxAiY9pSyaKjyLsmlE6oAIQC2zs
              UoNVIuhuef2IW7079Sqt3DMzfgfAJp54TrXg3qMzluq43hy/aMtx0hKcIKbjriUw
              0SawpZs4cmuBQ/dihT6vQBYWYRx3YErgq1TSV+51mussOaMzqJhVfEZPeTP3nf3s
              Tv1j5KVCtkMGT34q0l4g3mJL9s9osdbDtiN5/MFePtJIAVZ56Wi1oGIngP7sLlE7
              h4xeXKW18GaSvKRiHvo5dq1Jbi5k9YhTMvVEZcwjJxkTAhznRoD6VTLZG9WPjEhf
              KG4bgv2L+n0w
              =Pjej
              -----END PGP MESSAGE-----
      'pci0000:00/0000:00:00.0':
        channel: 36
        htmode: VHT80
        ssids:
          'ZW public':
            net: pub
          'jungnickel-fotografie':
            net: priv13
            psk: |
              -----BEGIN PGP MESSAGE-----
      
              hQEMA2PKcvDMvlKLAQf/Vs+PSo+K0zA5dQz8zcQwsIqOn5ZL7JthytWOruNNAPlY
              aVyr/7yNIVD2WH4gEbE0ybHEekaQ1CPJHqr1VaV2Y9JFDVCeXEr1xQwRcWB8qQkL
              pBtthyhq56x6110/mdTeuXIZYvTckQx1hCdZBMxAiY9pSyaKjyLsmlE6oAIQC2zs
              UoNVIuhuef2IW7079Sqt3DMzfgfAJp54TrXg3qMzluq43hy/aMtx0hKcIKbjriUw
              0SawpZs4cmuBQ/dihT6vQBYWYRx3YErgq1TSV+51mussOaMzqJhVfEZPeTP3nf3s
              Tv1j5KVCtkMGT34q0l4g3mJL9s9osdbDtiN5/MFePtJIAVZ56Wi1oGIngP7sLlE7
              h4xeXKW18GaSvKRiHvo5dq1Jbi5k9YhTMvVEZcwjJxkTAhznRoD6VTLZG9WPjEhf
              KG4bgv2L+n0w
              =Pjej
              -----END PGP MESSAGE-----


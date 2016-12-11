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
    location: In stock
    lan-access: pub
    radios:
      'platform/qca953x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: priv1
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
    lan-access: priv1
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: priv1
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
      'pci0000:01/0000:01:00.0':
        channel: 36
        htmode: VHT80
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: priv1
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
    lan-access: priv1
    radios:
      'platform/ar934x_wmac':
        channel: 13
        htmode: HT40-
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: priv1
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
        channel: 149
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2':
            net: priv1
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
    location: In stock
    lan-access: priv1
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: priv1
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
    location: In stock
    lan-access: priv1
    radios:
      'platform/qca955x_wmac':
        channel: 1
        htmode: HT40+
        ssids:
          'ZW public':
            net: pub
          'C3D2 legacy':
            net: priv1
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

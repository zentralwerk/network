hosts-inet:
  mgmt:
    server1: 10.0.0.1
    server2: 10.0.0.2
    switch-b1: 10.0.0.10
    switch-b2: 10.0.0.11
    switch-c1: 10.0.0.12
    switch-d1: 10.0.0.13
    switch-c3d2-main: 10.0.0.14
    ap1: 10.0.0.41
    ap2: 10.0.0.42
    ap3: 10.0.0.43
    ap4: 10.0.0.44
    ap5: 10.0.0.45
    ap6: 10.0.0.46
    ap7: 10.0.0.47
    ap8: 10.0.0.48
    ap9: 10.0.0.49
    ap10: 10.0.0.50
    ap11: 10.0.0.51
    ap12: 10.0.0.52
    ap13: 10.0.0.53
    ap14: 10.0.0.54
    ap15: 10.0.0.55
    ap16: 10.0.0.56
    ap17: 10.0.0.57
    ap18: 10.0.0.58
    ap19: 10.0.0.59
    ap20: 10.0.0.60
    ap21: 10.0.0.61
    ap22: 10.0.0.62
    ap23: 10.0.0.63
    ap24: 10.0.0.64
    ap25: 10.0.0.65
    ap26: 10.0.0.66
    ap27: 10.0.0.67
    ap28: 10.0.0.68
    ap29: 10.0.0.69
    ap30: 10.0.0.70
    ap31: 10.0.0.71
    ap32: 10.0.0.72
    ap33: 10.0.0.73
    ap34: 10.0.0.74
    ap35: 10.0.0.75
    ap36: 10.0.0.76
    ap37: 10.0.0.77
    ap38: 10.0.0.78
    ap39: 10.0.0.79
    ap40: 10.0.0.80
    ap41: 10.0.0.81
    ap42: 10.0.0.82
    ap43: 10.0.0.83
    ap44: 10.0.0.84
    ap45: 10.0.0.85
    ap46: 10.0.0.86
    ap47: 10.0.0.87
    ap48: 10.0.0.88
    ap49: 10.0.0.89
    ap50: 10.0.0.90
    ap51: 10.0.0.91
    ap52: 10.0.0.92
    ap53: 10.0.0.93
    ap54: 10.0.0.94
    ap55: 10.0.0.95
    ap56: 10.0.0.96
    ap57: 10.0.0.97
    ap58: 10.0.0.98
    ap59: 10.0.0.99
    ap60: 10.0.0.100
    ap61: 10.0.0.101
    ap62: 10.0.0.102
    ap63: 10.0.0.103
    ap64: 10.0.0.104
    monit: 10.0.0.250
    mgmt-gw: 10.0.0.254

  core:
    server1: 172.20.72.1
    server2: 172.20.72.102
    serv-gw: 172.20.72.2
    pub-gw: 172.20.72.3
    priv1-gw: 172.20.72.4
    priv2-gw: 172.20.72.5
    upstream1: 172.20.72.6
    anon1: 172.20.72.7
    c3d2-gw: 172.20.72.8
    c3d2-anon: 172.20.72.9
    upstream2: 172.20.72.10
    upstream3: 172.20.72.11
    upstream4: 172.20.72.12
    priv3-gw: 172.20.72.13
    priv4-gw: 172.20.72.14
    priv5-gw: 172.20.72.15
    priv6-gw: 172.20.72.16
    priv7-gw: 172.20.72.17
    priv8-gw: 172.20.72.18
    priv9-gw: 172.20.72.19
    priv10-gw: 172.20.72.20
    priv11-gw: 172.20.72.21
    priv12-gw: 172.20.72.22
    priv13-gw: 172.20.72.23
    priv14-gw: 172.20.72.24
    priv15-gw: 172.20.72.25
    priv16-gw: 172.20.72.26
    bgp: 172.20.72.27
    mgmt-gw: 172.20.72.28
    radio-gw: 172.20.72.29
    priv17-gw: 172.20.72.30
    priv18-gw: 172.20.72.31
    priv19-gw: 172.20.72.32
    priv20-gw: 172.20.72.33
    priv21-gw: 172.20.72.34
    priv22-gw: 172.20.72.35
    priv23-gw: 172.20.72.36
    priv24-gw: 172.20.72.37

  pub:
    pub-gw: 172.20.76.1
{%- for i in range(2, 256) %}
    guest{{ i }}: 172.20.76.{{ i }}
{%- endfor %}
{%- for i in range(0, 255) %}
    guest{{ 256 + i }}: 172.20.77.{{ i }}
{%- endfor %}
  serv:
    serv-gw: 172.20.73.1
    dns: 172.20.73.2
    stats: 172.20.73.3
    radius: 172.20.73.4
    zeit: 172.20.73.5
  priv1:
    priv1-gw: 172.20.74.1
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 1 + i }}
{%- endfor %}
  priv9:
    priv9-gw: 172.20.74.33
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 33 + i }}
{%- endfor %}
  priv5:
    priv5-gw: 172.20.74.65
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 65 + i }}
{%- endfor %}
  priv10:
    priv10-gw: 172.20.74.97
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 97 + i }}
{%- endfor %}
  priv3:
    priv3-gw: 172.20.74.129
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 129 + i }}
{%- endfor %}
  priv11:
    priv11-gw: 172.20.74.161
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 161 + i }}
{%- endfor %}
  priv6:
    priv6-gw: 172.20.74.193
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 193 + i }}
{%- endfor %}
  priv12:
    priv12-gw: 172.20.74.225
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 225 + i }}
{%- endfor %}
  priv2:
    priv2-gw: 172.20.75.1
{%- for i in range(1, 31) %}
    dhcp{{ i }}: 172.20.75.{{ 1 + i }}
{%- endfor %}
  priv13:
    priv13-gw: 172.20.75.33
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 33 + i }}
{%- endfor %}
  priv7:
    priv7-gw: 172.20.75.65
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 65 + i }}
{%- endfor %}
  priv14:
    priv14-gw: 172.20.75.97
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 97 + i }}
{%- endfor %}
  priv4:
    priv4-gw: 172.20.75.129
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 129 + i }}
{%- endfor %}
  priv15:
    priv15-gw: 172.20.75.161
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 161 + i }}
{%- endfor %}
  priv8:
    priv8-gw: 172.20.75.193
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 193 + i }}
{%- endfor %}
  priv16:
    priv16-gw: 172.20.75.225
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 225 + i }}
{%- endfor %}
  priv17:
    priv17-gw: 172.20.74.17
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 17 + i }}
{%- endfor %}
  priv18:
    priv18-gw: 172.20.74.49
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 49 + i }}
{%- endfor %}
  priv19:
    priv19-gw: 172.20.74.81
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 81 + i }}
{%- endfor %}
  priv20:
    priv20-gw: 172.20.74.113
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 113 + i }}
{%- endfor %}
  priv21:
    priv21-gw: 172.20.74.145
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 145 + i }}
{%- endfor %}
  priv22:
    priv22-gw: 172.20.74.177
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 177 + i }}
{%- endfor %}
  priv23:
    priv23-gw: 172.20.74.209
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 209 + i }}
{%- endfor %}
  priv24:
    priv24-gw: 172.20.74.241
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 241 + i }}
{%- endfor %}

  radio:
    radio-gw: 172.20.73.129

  c3d2:
    c3d2-anon: 172.22.99.1
    c3d2-gw: 172.22.99.4
    bgp: 172.22.99.250

hosts-inet6:
  dn42:
    mgmt:
      server1: fd23:42:c3d2:580::1
      server2: fd23:42:c3d2:580::2
      switch-b1: fd23:42:c3d2:580::10
      switch-b2: fd23:42:c3d2:580::11
      switch-c1: fd23:42:c3d2:580::12
      switch-d1: fd23:42:c3d2:580::13
      switch-c3d2-main: fd23:42:c3d2:580::14
      ap1: fd23:42:c3d2:580::4:1
      ap2: fd23:42:c3d2:580::4:2
      ap3: fd23:42:c3d2:580::4:3
      ap4: fd23:42:c3d2:580::4:4
      ap5: fd23:42:c3d2:580::4:5
      ap6: fd23:42:c3d2:580::4:6
      ap7: fd23:42:c3d2:580::4:7
      ap8: fd23:42:c3d2:580::4:8
      ap9: fd23:42:c3d2:580::4:9
      ap10: fd23:42:c3d2:580::4:a
      ap11: fd23:42:c3d2:580::4:b
      ap12: fd23:42:c3d2:580::4:c
      ap13: fd23:42:c3d2:580::4:d
      ap14: fd23:42:c3d2:580::4:e
      ap15: fd23:42:c3d2:580::4:f
      ap16: fd23:42:c3d2:580::4:10
      ap17: fd23:42:c3d2:580::4:11
      ap18: fd23:42:c3d2:580::4:12
      ap19: fd23:42:c3d2:580::4:13
      ap20: fd23:42:c3d2:580::4:14
      ap21: fd23:42:c3d2:580::4:15
      ap22: fd23:42:c3d2:580::4:16
      ap23: fd23:42:c3d2:580::4:17
      ap24: fd23:42:c3d2:580::4:18
      ap25: fd23:42:c3d2:580::4:19
      ap26: fd23:42:c3d2:580::4:1a
      ap27: fd23:42:c3d2:580::4:1b
      ap28: fd23:42:c3d2:580::4:1c
      ap29: fd23:42:c3d2:580::4:1d
      ap30: fd23:42:c3d2:580::4:1e
      ap31: fd23:42:c3d2:580::4:1f
      ap32: fd23:42:c3d2:580::4:20
      ap33: fd23:42:c3d2:580::4:21
      ap34: fd23:42:c3d2:580::4:22
      ap35: fd23:42:c3d2:580::4:23
      ap36: fd23:42:c3d2:580::4:24
      ap37: fd23:42:c3d2:580::4:25
      ap38: fd23:42:c3d2:580::4:26
      ap39: fd23:42:c3d2:580::4:27
      ap40: fd23:42:c3d2:580::4:28
      ap41: fd23:42:c3d2:580::4:29
      ap42: fd23:42:c3d2:580::4:2a
      ap43: fd23:42:c3d2:580::4:2b
      ap44: fd23:42:c3d2:580::4:2c
      ap45: fd23:42:c3d2:580::4:2d
      ap46: fd23:42:c3d2:580::4:2e
      ap47: fd23:42:c3d2:580::4:2f
      ap48: fd23:42:c3d2:580::4:30
      ap49: fd23:42:c3d2:580::4:31
      ap50: fd23:42:c3d2:580::4:32
      ap51: fd23:42:c3d2:580::4:33
      ap52: fd23:42:c3d2:580::4:34
      ap53: fd23:42:c3d2:580::4:35
      ap54: fd23:42:c3d2:580::4:36
      ap55: fd23:42:c3d2:580::4:37
      ap56: fd23:42:c3d2:580::4:38
      ap57: fd23:42:c3d2:580::4:39
      ap58: fd23:42:c3d2:580::4:3a
      ap59: fd23:42:c3d2:580::4:3b
      ap60: fd23:42:c3d2:580::4:3c
      ap61: fd23:42:c3d2:580::4:3d
      ap62: fd23:42:c3d2:580::4:3e
      ap63: fd23:42:c3d2:580::4:3f
      ap64: fd23:42:c3d2:580::4:40
      monit: fd23:42:c3d2:580::250
      mgmt-gw: fd23:42:c3d2:580:ffff:ffff:ffff:ffff

    core:
      server1: fd23:42:c3d2:581::1
      server2: fd23:42:c3d2:581::102

      anon1: fd23:42:c3d2:581::9:1
      serv-gw: fd23:42:c3d2:581::8:1
      pub-gw: fd23:42:c3d2:581::8:2
      c3d2-gw: fd23:42:c3d2:581::c3d2:1
      c3d2-anon: fd23:42:c3d2:581::c3d2:a
      bgp: fd23:42:c3d2:581::c3d2:b
      mgmt-gw: fd23:42:c3d2:581::8:3

      upstream1: fd23:42:c3d2:581::b:0
      upstream2: fd23:42:c3d2:581::b:1
      upstream3: fd23:42:c3d2:581::b:2
      upstream4: fd23:42:c3d2:581::b:3

      priv1-gw: fd23:42:c3d2:581::c:0
      priv2-gw: fd23:42:c3d2:581::c:1
      priv3-gw: fd23:42:c3d2:581::c:2
      priv4-gw: fd23:42:c3d2:581::c:3
      priv5-gw: fd23:42:c3d2:581::c:4
      priv6-gw: fd23:42:c3d2:581::c:5
      priv7-gw: fd23:42:c3d2:581::c:6
      priv8-gw: fd23:42:c3d2:581::c:7
      priv9-gw: fd23:42:c3d2:581::c:8
      priv10-gw: fd23:42:c3d2:581::c:9
      priv11-gw: fd23:42:c3d2:581::c:a
      priv12-gw: fd23:42:c3d2:581::c:b
      priv13-gw: fd23:42:c3d2:581::c:c
      priv14-gw: fd23:42:c3d2:581::c:d
      priv15-gw: fd23:42:c3d2:581::c:e
      priv16-gw: fd23:42:c3d2:581::c:f
      priv17-gw: fd23:42:c3d2:581::c:10
      priv18-gw: fd23:42:c3d2:581::c:11
      priv19-gw: fd23:42:c3d2:581::c:12
      priv20-gw: fd23:42:c3d2:581::c:13
      priv21-gw: fd23:42:c3d2:581::c:14
      priv22-gw: fd23:42:c3d2:581::c:15
      priv23-gw: fd23:42:c3d2:581::c:16
      priv24-gw: fd23:42:c3d2:581::c:17

    serv:
      serv-gw: fd23:42:c3d2:582::1
      dns: fd23:42:c3d2:582:2:0:0:2
      stats: fd23:42:c3d2:582:2:0:0:3
      radius: fd23:42:c3d2:582:2:0:0:4
      zeit: fd23:42:c3d2:582:2:0:0:5
    pub:
      pub-gw: fd23:42:c3d2:583::1
    priv1:
      priv1-gw: fd23:42:c3d2:5c0::1
    priv2:
      priv2-gw: fd23:42:c3d2:5c1::1
    priv3:
      priv3-gw: fd23:42:c3d2:5c2::1
    priv4:
      priv4-gw: fd23:42:c3d2:5c3::1
    priv5:
      priv5-gw: fd23:42:c3d2:5c4::1
    priv6:
      priv6-gw: fd23:42:c3d2:5c5::1
    priv7:
      priv7-gw: fd23:42:c3d2:5c6::1
    priv8:
      priv8-gw: fd23:42:c3d2:5c7::1
    priv9:
      priv9-gw: fd23:42:c3d2:5c8::1
    priv10:
      priv10-gw: fd23:42:c3d2:5c9::1
    priv11:
      priv11-gw: fd23:42:c3d2:5ca::1
    priv12:
      priv12-gw: fd23:42:c3d2:5cb::1
    priv13:
      priv13-gw: fd23:42:c3d2:5cc::1
    priv14:
      priv14-gw: fd23:42:c3d2:5cd::1
    priv15:
      priv15-gw: fd23:42:c3d2:5ce::1
    priv16:
      priv16-gw: fd23:42:c3d2:5cf::1
    priv17:
      priv17-gw: fd23:42:c3d2:5d0::1
    priv18:
      priv18-gw: fd23:42:c3d2:5d1::1
    priv19:
      priv19-gw: fd23:42:c3d2:5d2::1
    priv20:
      priv20-gw: fd23:42:c3d2:5d3::1
    priv21:
      priv21-gw: fd23:42:c3d2:5d4::1
    priv22:
      priv22-gw: fd23:42:c3d2:5d5::1
    priv23:
      priv23-gw: fd23:42:c3d2:5d6::1
    priv24:
      priv24-gw: fd23:42:c3d2:5d7::1

    radio:
      radio-gw: fd23:42:c3d2:586::1

    c3d2:
      c3d2-anon: fd23:42:c3d2:523::c3d2:1
      c3d2-gw: fd23:42:c3d2:523::c3d2:4
      bgp: fd23:42:c3d2:523::c3d2:ff0b

  up1:
    core:
      server1: 2a02:8106:208:5281::1
      server2: 2a02:8106:208:5281::102

      anon1: 2a02:8106:208:5281::9:1
      serv-gw: 2a02:8106:208:5281::8:1
      pub-gw: 2a02:8106:208:5281::8:2
      c3d2-gw: 2a02:8106:208:5281::c3d2:1
      c3d2-anon: 2a02:8106:208:5281::c3d2:a
      bgp: 2a02:8106:208:5281::c3d2:b
      mgmt-gw: 2a02:8106:208:5281::8:3

      upstream1: 2a02:8106:208:5281::b:0
      upstream2: 2a02:8106:208:5281::b:1
      upstream3: 2a02:8106:208:5281::b:2
      upstream4: 2a02:8106:208:5281::b:3

      priv1-gw: 2a02:8106:208:5281::c:0
      priv2-gw: 2a02:8106:208:5281::c:1
      priv3-gw: 2a02:8106:208:5281::c:2
      priv4-gw: 2a02:8106:208:5281::c:3
      priv5-gw: 2a02:8106:208:5281::c:4
      priv6-gw: 2a02:8106:208:5281::c:5
      priv7-gw: 2a02:8106:208:5281::c:6
      priv8-gw: 2a02:8106:208:5281::c:7
      priv9-gw: 2a02:8106:208:5281::c:8
      priv10-gw: 2a02:8106:208:5281::c:9
      priv11-gw: 2a02:8106:208:5281::c:a
      priv12-gw: 2a02:8106:208:5281::c:b
      priv13-gw: 2a02:8106:208:5281::c:c
      priv14-gw: 2a02:8106:208:5281::c:d
      priv15-gw: 2a02:8106:208:5281::c:e
      priv16-gw: 2a02:8106:208:5281::c:f
      priv17-gw: 2a02:8106:208:5281::c:10
      priv18-gw: 2a02:8106:208:5281::c:11
      priv19-gw: 2a02:8106:208:5281::c:12
      priv20-gw: 2a02:8106:208:5281::c:13
      priv21-gw: 2a02:8106:208:5281::c:14
      priv22-gw: 2a02:8106:208:5281::c:15
      priv23-gw: 2a02:8106:208:5281::c:16
      priv24-gw: 2a02:8106:208:5281::c:17

    serv:
      serv-gw: 2a02:8106:208:5282::1
      dns: 2a02:8106:208:5282:2:0:0:2
      stats: 2a02:8106:208:5282:2:0:0:3
      radius: 2a02:8106:208:5282:2:0:0:4
      zeit: 2a02:8106:208:5282:2:0:0:5
    pub:
      pub-gw: 2a02:8106:208:5283::1
    priv1:
      priv1-gw: 2a02:8106:208:52c0::1
    priv2:
      priv2-gw: 2a02:8106:208:52c1::1
    priv3:
      priv3-gw: 2a02:8106:208:52c2::1
    priv4:
      priv4-gw: 2a02:8106:208:52c3::1
    priv5:
      priv5-gw: 2a02:8106:208:52c4::1
    priv6:
      priv6-gw: 2a02:8106:208:52c5::1
    priv7:
      priv7-gw: 2a02:8106:208:52c6::1
    priv8:
      priv8-gw: 2a02:8106:208:52c7::1
    priv9:
      priv9-gw: 2a02:8106:208:52c8::1
    priv10:
      priv10-gw: 2a02:8106:208:52c9::1
    priv11:
      priv11-gw: 2a02:8106:208:52ca::1
    priv12:
      priv12-gw: 2a02:8106:208:52cb::1
    priv13:
      priv13-gw: 2a02:8106:208:52cc::1
    priv14:
      priv14-gw: 2a02:8106:208:52cd::1
    priv15:
      priv15-gw: 2a02:8106:208:52ce::1
    priv16:
      priv16-gw: 2a02:8106:208:52cf::1
    priv17:
      priv17-gw: 2a02:8106:208:52d0::1
    priv18:
      priv18-gw: 2a02:8106:208:52d1::1
    priv19:
      priv19-gw: 2a02:8106:208:52d2::1
    priv20:
      priv20-gw: 2a02:8106:208:52d3::1
    priv21:
      priv21-gw: 2a02:8106:208:52d4::1
    priv22:
      priv22-gw: 2a02:8106:208:52d5::1
    priv23:
      priv23-gw: 2a02:8106:208:52d6::1
    priv24:
      priv24-gw: 2a02:8106:208:52d7::1

    radio:
      radio-gw: 2a02:8106:208:5286::1

    c3d2:
      c3d2-anon: 2a02:8106:208:5201::c3d2:1
      c3d2-gw: 2a02:8106:208:5201::c3d2:4
      bgp: 2a02:8106:208:5201::c3d2:ff0b

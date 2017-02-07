hosts-inet:
  mgmt:
    server1: 10.0.0.1
    server2: 10.0.0.2
    switch-b1: 10.0.0.10
    switch-b2: 10.0.0.11
    switch-c1: 10.0.0.12
    switch-d1: 10.0.0.13
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
  priv1:
    priv1-gw: 172.20.74.1
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 1 + i }}
{%- endfor %}
  priv9:
    priv9-gw: 172.20.74.33
  priv5:
    priv5-gw: 172.20.74.65
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 65 + i }}
{%- endfor %}
  priv10:
    priv10-gw: 172.20.74.97
  priv3:
    priv3-gw: 172.20.74.129
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 129 + i }}
{%- endfor %}
  priv11:
    priv11-gw: 172.20.74.161
  priv6:
    priv6-gw: 172.20.74.193
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.74.{{ 193 + i }}
{%- endfor %}
  priv12:
    priv12-gw: 172.20.74.225
  priv2:
    priv2-gw: 172.20.75.1
{%- for i in range(1, 31) %}
    dhcp{{ i }}: 172.20.75.{{ 1 + i }}
{%- endfor %}
  priv13:
    priv13-gw: 172.20.75.33
  priv7:
    priv7-gw: 172.20.75.65
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 65 + i }}
{%- endfor %}
  priv14:
    priv14-gw: 172.20.75.97
  priv4:
    priv4-gw: 172.20.75.129
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 129 + i }}
{%- endfor %}
  priv15:
    priv15-gw: 172.20.75.161
  priv8:
    priv8-gw: 172.20.75.193
{%- for i in range(1, 14) %}
    dhcp{{ i }}: 172.20.75.{{ 193 + i }}
{%- endfor %}
  priv16:
    priv16-gw: 172.20.75.225

  c3d2:
    c3d2-anon: 172.22.99.1
    c3d2-gw: 172.22.99.4
    bgp: 172.22.99.250

hosts-inet6:
  mgmt:
    server1: fd23:42:c3d2:580::1
    server2: fd23:42:c3d2:580::2
    switch-b1: fd23:42:c3d2:580::10
    switch-b2: fd23:42:c3d2:580::11
    switch-c1: fd23:42:c3d2:580::12
    switch-d1: fd23:42:c3d2:580::13
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
    priv16-gw: fd23:42:c3d2:581::c:d

  serv:
    serv-gw: fd23:42:c3d2:582::1
    dns: fd23:42:c3d2:582:2:0:0:2
    stats: fd23:42:c3d2:582:2:0:0:3
    radius: fd23:42:c3d2:582:2:0:0:4
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

  c3d2:
    c3d2-anon: fd23:42:c3d2:523::c3d2:1
    c3d2-gw: fd23:42:c3d2:523::c3d2:4
    bgp: fd23:42:c3d2:523::c3d2:ff0b

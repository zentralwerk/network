containers:
  pub-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:16:00
      pub:
        type: veth
        hwaddr: 0A:14:48:01:16:01

  serv-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
        gw6: upstream1
        hwaddr: 0A:14:48:01:06:01
      serv:
        type: veth
        hwaddr: 0A:14:48:01:06:00

  priv1-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:19:00
      priv1:
        type: phys
        hwaddr: 0A:14:48:01:19:01

  priv2-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
        hwaddr: 0A:14:48:01:18:00
      priv2:
        type: phys
        hwaddr: 0A:14:48:01:18:01

  priv3-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:08:00
      priv3:
        type: phys
        hwaddr: 0A:14:48:01:08:01

  priv4-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:17:01
      priv4:
        type: phys
        hwaddr: 0A:14:48:01:17:00

  priv5-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:12:00
      priv5:
        type: phys
        hwaddr: 0A:14:48:01:12:01

  priv6-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:11:00
      priv6:
        type: phys
        hwaddr: 0A:14:48:01:11:01

  priv7-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
        hwaddr: 0A:14:48:01:10:00
      priv7:
        type: phys
        hwaddr: 0A:14:48:01:10:01

  priv8-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
        hwaddr: 0A:14:48:01:09:00
      priv8:
        type: phys
        hwaddr: 0A:14:48:01:09:01

  priv9-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:20:00
      priv9:
        type: phys
        hwaddr: 0A:14:48:01:20:01

  priv10-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
        hwaddr: 0A:14:48:01:13:02
      priv10:
        type: phys
        hwaddr: 0A:14:48:01:13:03

  priv11-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
        hwaddr: 0A:14:48:01:29:00
      priv11:
        type: phys
        hwaddr: 0A:14:48:01:29:01

  upstream1:
    interfaces:
      core:
        type: veth
        hwaddr: 0A:14:48:01:26:00
      up1:
        type: phys
        # Change (eg. auto-generation) requires reboot of the cable
        # modem that is bridge mode
        hwaddr: 00:23:74:D7:2D:7C

  upstream2:
    interfaces:
      core:
        type: veth
        hwaddr: 0A:14:48:01:27:00
      up2:
        type: phys
        # Change (eg. auto-generation) requires reboot of the cable
        # modem that is bridge mode
        hwaddr: 00:23:74:D7:42:7C

  anon1:
    interfaces:
      core:
        type: veth
        hwaddr: 0A:14:48:01:14:00

  c3d2-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
        hwaddr: 0A:14:48:01:21:00
      c3d2:
        type: veth
        hwaddr: 0A:14:48:01:21:01

  c3d2-anon:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
        hwaddr: 0A:14:48:01:07:01
      c3d2:
        type: veth
        hwaddr: 0A:14:48:01:07:00

  bgp:
    interfaces:
      core:
        type: veth
        gw: upstream1
        hwaddr: 0A:14:48:01:22:00
      c3d2:
        type: veth
        hwaddr: 0A:14:48:01:22:01

  dns:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw
        hwaddr: 0A:14:48:01:23:00

  stats:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw
        hwaddr: 0A:14:48:01:15:00

  radius:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw
        hwaddr: 0A:14:48:01:13:00

  mgmt-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
        gw6: anon1
        hwaddr: 0A:14:48:01:24:01
      mgmt:
        type: veth
        hwaddr: 0A:14:48:01:24:00

  zeit:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw
        hwaddr: 0A:14:48:01:25:00

  radio-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
        hwaddr: 0A:14:48:01:06:02
      radio:
        type: veth
        hwaddr: 0A:14:48:01:06:00

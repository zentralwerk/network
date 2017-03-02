containers:
  pub-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      pub:
        type: veth

  serv-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
        gw6: upstream1
      serv:
        type: veth

  priv1-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv1:
        type: phys

  priv2-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
        gw6: upstream2
      priv2:
        type: phys

  priv3-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv3:
        type: phys

  priv4-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv4:
        type: phys

  priv5-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv5:
        type: phys

  priv6-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv6:
        type: phys

  priv7-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv7:
        type: phys

  priv8-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      priv8:
        type: phys

  upstream1:
    interfaces:
      core:
        type: veth
      up1:
        type: phys
        # Change (eg. auto-generation) requires reboot of the cable
        # modem that is bridge mode
        hwaddr: 00:23:74:D7:2D:7C

  upstream2:
    interfaces:
      core:
        type: veth
      up2:
        type: phys
        # Change (eg. auto-generation) requires reboot of the cable
        # modem that is bridge mode
        hwaddr: 00:23:74:D7:42:7C

  anon1:
    interfaces:
      core:
        type: veth

  c3d2-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
      c3d2:
        type: veth

  c3d2-anon:
    interfaces:
      core:
        type: veth
        gw: anon1
        gw6: anon1
      c3d2:
        type: veth

  bgp:
    interfaces:
      core:
        type: veth
        gw: upstream1
      c3d2:
        type: veth

  dns:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw

  stats:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw

  radius:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw

  mgmt-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
        gw6: anon1
      mgmt:
        type: veth

  zeit:
    interfaces:
      serv:
        type: veth
        gw: serv-gw
        gw6: serv-gw

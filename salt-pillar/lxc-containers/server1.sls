containers:
  pub-gw:
    interfaces:
      core:
        type: veth
        gw: anon1
      pub:
        type: veth

  serv-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
      serv:
        type: veth

  priv1-gw:
    interfaces:
      core:
        type: veth
        gw: upstream1
      priv1:
        type: phys

  priv2-gw:
    interfaces:
      core:
        type: veth
        gw: upstream2
      priv2:
        type: phys

  upstream1:
    interfaces:
      core:
        type: veth
      up1:
        type: phys
        # Change (eg. auto-generation) requires reboot of the cable modem
        hwaddr: 00:23:74:D7:2D:7C

  upstream2:
    interfaces:
      core:
        type: veth
      up2:
        type: phys

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
      c3d2:
        type: veth

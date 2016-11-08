dhcp:
  serv:
    start: 172.20.73.2
    end: 172.20.73.63
    time: 7776000
    max-time: 31536000
    opts:
      domain-name: serv.zentralwerk.online
      #domain-name-servers:
      routers: 172.20.73.1

  pub:
    start: 172.20.76.2
    end: 172.20.77.254
    time: 300
    max-time: 3600
    opts:
      domain-name: pub.zentralwerk.online
      routers: 172.20.76.1

  priv1:
    start: 172.20.74.2
    end: 172.20.74.14
    time: 3600
    max-time: 86400
    opts:
      domain-name: priv1.zentralwerk.online
      routers: 172.20.74.1

  priv2:
    start: 172.20.75.2
    end: 172.20.75.14
    time: 3600
    max-time: 86400
    opts:
      domain-name: priv2.zentralwerk.online
      routers: 172.20.75.1

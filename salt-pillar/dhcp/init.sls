dhcp:
  serv:
    start: 172.20.73.2
    end: 172.20.73.63
    time: 300
    max-time: 31536000
    opts:
    host-opts:
      routers: serv-gw.serv
      domain-name-servers: upstream1.core
    string-opts:
      domain-name: serv.zentralwerk.online

  pub:
    start: 172.20.76.2
    end: 172.20.77.254
    time: 30
    max-time: 3600
    lower-max-time: 50
    opts:
    host-opts:
      routers: pub-gw.pub
      domain-name-servers: upstream1.core
    string-opts:
      domain-name: pub.zentralwerk.online

  priv1:
    start: 172.20.74.2
    end: 172.20.74.14
    time: 120
    max-time: 86400
    opts:
    host-opts:
      routers: priv1-gw.priv1
      domain-name-servers: upstream1.core
    string-opts:
      domain-name: priv1.zentralwerk.online

  priv2:
    start: 172.20.75.2
    end: 172.20.75.31
    time: 120
    max-time: 86400
    opts:
    host-opts:
      routers: priv2-gw.priv2
      domain-name-servers: upstream2.core
    string-opts:
      domain-name: priv2.zentralwerk.online

  priv3:
    start: 172.20.74.130
    end: 172.20.74.142
    time: 120
    max-time: 86400
    opts:
    host-opts:
      routers: priv3-gw.priv3
      domain-name-servers: upstream1.core
    string-opts:
      domain-name: priv3.zentralwerk.online

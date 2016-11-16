unbound:
  pkg.installed: []

/etc/unbound/unbound.conf.d/listen.conf:
  file.managed:
    - source: salt://unbound/listen.conf

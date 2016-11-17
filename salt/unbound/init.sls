unbound:
  pkg.installed: []
  service:
    - running
    - watch:
        - pkg: unbound
        - file: /etc/unbound/unbound.conf.d/listen.conf

/etc/unbound/unbound.conf.d/listen.conf:
  file.managed:
    - source: salt://unbound/listen.conf

unbound:
  pkg.installed: []
  service:
    - running
    - watch:
        - pkg: unbound
        - file: /etc/unbound/unbound.conf.d/listen.conf

dns-root-data:
  pkg.installed: []

/etc/unbound/unbound.conf.d/listen.conf:
  file.managed:
    - source: salt://unbound/listen.conf

/etc/unbound/unbound.conf.d/root.conf:
  file.managed:
    - source: salt://unbound/root.conf

/etc/unbound/unbound.conf.d/verbose.conf:
  file.managed:
    - source: salt://unbound/verbose.conf

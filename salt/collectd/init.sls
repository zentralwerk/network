collectd-core:
  pkg.installed: []

liboping0:
  pkg.installed: []

collectd:
  service:
    - running
    - watch:
        - pkg: collectd-core
        - file: /etc/collectd/collectd.conf

/etc/collectd/collectd.conf:
  file.managed:
    - source: salt://collectd/collectd.conf
    - template: 'jinja'

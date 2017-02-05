collectd:
  network: server
  disk: True
  df: True
  rrdtool:
    DataDir: "/var/lib/collectd/rrd"
    CacheTimeout: 300
    CacheFlush: 600

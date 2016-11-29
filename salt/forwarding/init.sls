procps:
  pkg.installed: []

/etc/sysctl.d/80-forwarding.conf:
  file.managed:
    - source: "salt://forwarding/forwarding.conf"

apply-forwarding:
  cmd.run:
    - name: sysctl -p /etc/sysctl.d/80-forwarding.conf
      require:
        - file: /etc/sysctl.d/80-forwarding.conf
        - pkg: procps

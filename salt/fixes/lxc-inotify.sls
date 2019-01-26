/etc/sysctl.d/20-lxc-inotify.conf:
  file.managed:
    - source: "salt://fixes/lxc-inotify.conf"

apply-lxc-inotify:
  cmd.run:
    - name: sysctl -p /etc/sysctl.d/20-lxc-inotify.conf
      require:
        - file: /etc/sysctl.d/20-lxc-inotify.conf
        - pkg: procps

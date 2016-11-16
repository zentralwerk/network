lxc:
  pkg.installed: []

{% for id, container in pillar['containers'].items() %}

/var/lib/lxc/{{ id }}:
  cmd.run:
    - name: lxc-create -n {{ id }} -B dir -t debian -- -r stretch --packages=salt-minion
    - require:
        - pkg: lxc
    - creates: /var/lib/lxc/{{ id }}

/var/lib/lxc/{{ id }}/config:
  file.managed:
    - source: salt://lxc-containers/config
    - template: 'jinja'
    - context:
        id: {{ id }}
        container: {{ container }}
    - require:
        - cmd: /var/lib/lxc/{{ id }}

/var/lib/lxc/{{ id }}/rootfs/dev/net:
  file.directory:
    - mode: 0755

/var/lib/lxc/{{ id }}/rootfs/dev/net/tun:
  file.mknod:
    - ntype: 'c'
    - major: 10
    - minor: 200
    - mode: 0666
    - require:
      - file: /var/lib/lxc/{{ id }}/rootfs/dev/net

/var/lib/lxc/{{ id }}/rootfs/etc/hosts:
  file.managed:
    - source: salt://lxc-containers/hosts
    - template: 'jinja'
    - context:
        id: {{ id }}
        container: {{ container }}
    - require:
        - cmd: /var/lib/lxc/{{ id }}

autostart-{{ id }}:
  service.enabled:
      - name: lxc@{{ id }}
        require_in:
          file: /var/lib/lxc/{{ id }}/config

start-{{ id }}:
  service.running:
      - name: lxc@{{ id }}
        require:
          - service: autostart-{{ id }}

{% endfor %}

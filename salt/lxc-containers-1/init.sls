{%- import_yaml "lxc-containers-1/containers.yaml" as containers -%}

lxc:
  pkg.installed: []

{% for id, container in containers.items() %}

/var/lib/lxc/{{ id }}:
  cmd.run:
    - name: lxc-create -n {{ id }} -B dir -t debian -- -r stretch --packages=salt-minion
    - require:
        - pkg: lxc
    - creates: /var/lib/lxc/{{ id }}

/var/lib/lxc/{{ id }}/config:
  file.managed:
    - source: salt://lxc-containers-1/config
    - template: 'jinja'
    - context:
        id: {{ id }}
        container: {{ container }}
    - require:
        - cmd: /var/lib/lxc/{{ id }}

/var/lib/lxc/{{ id }}/rootfs/etc/hosts:
  file.managed:
    - source: salt://lxc-containers-1/hosts
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

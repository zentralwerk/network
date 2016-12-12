{%- import_yaml "netmasks.yaml" as netmasks -%}
{% set bond_slaves = ['eno1', 'eno2', 'eno3', 'eno4', 'ens3f0', 'ens3f1'] %}

/etc/modules-load.d/server1.conf:
  file.managed:
    - source: salt://modules.conf
    - mode: 644

/etc/network/if-up.d/bond-slaves:
  file.managed:
    - source: salt://bond-slaves
    - mode: 755

bond0:
  network.managed:
    - name: bond0
      proto: manual
      type: bond
      mode: 802.3ad
      slaves: {{ ' '.join(bond_slaves) }}
      miimon: 100
      updelay: 1000
      downdelay: 1000
      lacp_rate: 1
      xmit_hash_policy: layer3+4
      require:
        - file: /etc/network/if-up.d/bond-slaves

{% for name, vlan in pillar['vlans'].items() %}
bond0.{{ vlan }}:
  network.managed:
    - type: vlan
      proto: manual
      use:
        - network: bond0
      require:
        - network: bond0
{% endfor %}

{%- set bridge_nets = ['mgmt', 'core', 'serv', 'pub', 'c3d2'] %}
{%- for net in bridge_nets %}
{%- set vlan = pillar['vlans'][net] %}
br-{{ net }}:
  network.managed:
    - type: bridge
      ports: bond0.{{ vlan }}
      delay: 0
{%- set ip_addr = pillar['hosts-inet'].get(net) and pillar['hosts-inet'][net].get('server1') %}
{%- if ip_addr %}
{%- set prefix_len = pillar['subnets-inet'][net].split('/')[1] %}
      proto: static
      address: {{ ip_addr }}
      netmask: {{ netmasks[prefix_len] }}
{%- if net == 'core' %}
      gateway: {{ pillar['hosts-inet']['core']['upstream1'] }}
      dns-nameservers: "{{ pillar['hosts-inet']['core']['upstream1'] }} {{ pillar['hosts-inet']['core']['upstream2'] }}"
{%- endif %}
{%- else %}
      proto: manual
      ipv6_autoconf: no
      enable_ipv6: false
{%- endif %}
      use:
        - network: bond0.{{ vlan }}
      require:
        - network: bond0.{{ vlan}}
{%- endfor %}

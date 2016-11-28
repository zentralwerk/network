{%- import_yaml "netmasks.yaml" as netmasks -%}
{% set bond_slaves = ['eno1', 'eno2', 'eno3', 'eno4'] %}

/etc/network/if-up.d/bond-slaves:
  file.managed:
    - source: salt://bond-slaves
    - mode: 744

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

{%- set nets = ['mgmt', 'core', 'serv', 'pub'] %}
{%- for i in range(1, 9) %}
{%-   set nets_ = nets.append('priv' ~ i) %}
{%-   set nets_ = nets.append('up' ~ i) %}
{%- endfor %}
{%- for net in nets %}
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
    

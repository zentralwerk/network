{%- import_yaml "netmasks.yaml" as netmasks -%}
{% set bond_slaves = ['eth1', 'eth2'] %}

{% for slave in bond_slaves %}
{{ slave }}:
  network.managed:
    - enabled: True
      type: slave
      master: bond0
{% endfor %}

bond0:
  network.managed:
    - name: bond0
      proto: manual
      type: bond
      mode: 802.3ad
      slaves: {{ ' '.join(bond_slaves) }}
      miimon: 100

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

{%- for net in ['core'] %}
{%- set vlan = pillar['vlans'][net] %}
br-{{ net }}:
  network.managed:
    - type: bridge
      ports: bond0.{{ vlan }}
{%- set ip_addr = pillar['hosts-inet'][net].get('server1') %}
{%- if ip_addr %}
{%- set prefix_len = pillar['subnets-inet'][net].split('/')[1] %}
      proto: static
      address: {{ ip_addr }}
      netmask: {{ netmasks[prefix_len] }}
{%- else %}
      proto: manual
{%- endif %}
      use:
        - network: bond0.{{ vlan }}
      require:
        - network: bond0.{{ vlan}}
{%- endfor %}
    

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

{% for vlan in range(1, 15) %}
bond0.{{ vlan }}:
  network.managed:
    - type: vlan
      use:
        - network: bond0
      require:
        - network: bond0
{% endfor %}

br-core:
  network.managed:
    - type: bridge
      ports: bond0.1
      proto: manual
      bypassfirewall: True
      use:
        - network: bond0.1
      require:
        - network: bond0.1
    

br-public:
  network.managed:
    - type: bridge
      ports: bond0.2
      proto: manual
      bypassfirewall: True
      use:
        - network: bond0.2
      require:
        - network: bond0.2
    

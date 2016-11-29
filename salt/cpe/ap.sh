#!/usr/bin/env bash -e

{%- if conf.get('firstboot') %}
ssh-keygen -R 192.168.1.1

ssh root@192.168.1.1 \
    "ash -e" <<__SSH__
{%- else %}
ssh root@{{ pillar['hosts-inet']['mgmt'][hostname] }} \
    "ash -e" <<__SSH__
{%- endif %}

# Set root password
echo -e "{{ conf['password'] }}\n{{ conf['password'] }}" | passwd

# TODO: add ssh pubkey

# System configuration
uci batch <<__UCI__
set system.@system[0].hostname={{ hostname }}
set dhcp.@dnsmasq[0].enabled=0

delete network.globals.ula_prefix
delete network.lan
delete network.wan
delete network.wan6
delete wireless.default_radio0
delete wireless.default_radio1

{%- if conf['model'] == 'TL-WDR4300' %}
# These models have a shared Ethernet chip for LAN/WAN and therefore
# need switching
set network.@switch[0]=switch
set network.@switch[0].reset=1
set network.@switch[0].enable=1
set network.@switch[0].enable_vlan=1
set network.@switch[0].name=switch0
set network.@switch_vlan[0]=switch_vlan
set network.@switch_vlan[0].device='switch0'
set network.@switch_vlan[0].vlan='1'
set network.@switch_vlan[0].ports='0t 2 3 4 5'
set network.@switch_vlan[0].comment='LAN ports'
set network.@switch_vlan[1]=switch_vlan
set network.@switch_vlan[1].device='switch0'
set network.@switch_vlan[1].vlan='2'
set network.@switch_vlan[1].ports='0t 1'
set network.@switch_vlan[1].comment='WAN port'
{%- set lan_port = 'eth0.1' %}
{%- set wan_port = 'eth0.2' %}

{%- else %}
# All other models may have separate Ethernet chips for LAN/WAN
set network.@switch[0].reset=1
set network.@switch[0].enable=1
set network.@switch[0].enable_vlan=0
{%- set lan_port = 'eth0' %}
{%- set wan_port = 'eth1' %}

{%- endif %}

set network.mgmt=interface
set network.mgmt.ifname={{ wan_port }}.1
set network.mgmt.proto=static
set network.mgmt.ipaddr={{ pillar['hosts-inet']['mgmt'][hostname] }}
set network.mgmt.netmask=255.255.255.0

{%- set bridges = {} %}
{%- if conf.get('lan-access') %}
{%-   do bridges.__setitem__(conf['lan-access'], True) %}
{%- endif %}
{%- for path, radio in conf['radios'].items() %}
{%-   for ssid, ssidconf in radio['ssids'].items() %}
{%-     do bridges.__setitem__(ssidconf['net'], True) %}
{%-   endfor %}
{%- endfor %}

{%- for net in bridges.keys() %}

set network.{{ net }}=interface
set network.{{ net }}.type=bridge
set network.{{ net }}.proto=static
{%- set ports = [wan_port ~ '.' ~ pillar['vlans'][net]] %}
{%- if conf.get('lan-access') == net %}
{%-   do ports.append(lan_port) %}
{%- endif %}
set network.{{ net }}.ifname='{{ ' '.join(ports) }}'
{%- endfor %}

{%- set radionum = 0 %}
{%- set ifnum = 0 %}
{%- for path, radio in conf['radios'].items() %}
set wireless.radio{{ radionum }}=wifi-device
set wireless.radio{{ radionum }}.type=mac80211
set wireless.radio{{ radionum }}.channel={{ radio['channel'] }}
set wireless.radio{{ radionum }}.path={{ path }}
set wireless.radio{{ radionum }}.hwmode={{ radio.get('hwmode') or '11n' }}
set wireless.radio{{ radionum }}.htmode={{ radio.get('htmode') or 'HT20' }}
set wireless.radio{{ radionum }}.noscan=1
delete wireless.radio{{ radionum }}.disabled

{%-   for ssid, ssidconf in radio['ssids'].items() %}
{%-     set ifnum = ifnum + loop.index0 %}
set wireless.wifi{{ ifnum }}=wifi-iface
set wireless.wifi{{ ifnum }}.device=radio{{ radionum }}
set wireless.wifi{{ ifnum }}.ssid='{{ ssid }}'
set wireless.wifi{{ ifnum }}.mode=ap
set wireless.wifi{{ ifnum }}.network={{ ssidconf['net'] }}
{%-     if ssidconf.get('psk') %}
set wireless.wifi{{ ifnum }}.encryption=psk2
set wireless.wifi{{ ifnum }}.key='{{ ssidconf['psk'] }}'
{%-     else %}
set wireless.wifi{{ ifnum }}.encryption=none
{%-     endif %}

{%-   endfor %}

{%-   set ifnum = ifnum + radio['ssids'].items()|length %}
{%-   set radionum = radionum + 1 %}
{%- endfor %}

commit
__UCI__

# TODO: install pkgs (collectd...)

{%- if conf.get('firstboot') %}
reboot
{%- endif %}

__SSH__

echo "All done \\o/"

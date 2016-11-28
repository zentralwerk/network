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

set network.@switch[0].reset=1
set network.@switch[0].enable=1
set network.@switch[0].enable_vlan=0

set network.mgmt=interface
set network.mgmt.ifname=eth1.1
set network.mgmt.proto=static
set network.mgmt.ipaddr={{ pillar['hosts-inet']['mgmt'][hostname] }}
set network.mgmt.netmask=255.255.255.0

{%- set bridges = {} %}
{%- if conf.get('access-ports') %}
{%-   do bridges.__setitem__(conf['access-ports'], True) %}
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
{%- set ports = ['eth1.' ~ pillar['vlans'][net]] %}
{%- if conf.get('access-ports') == net %}
{%-   do ports.append('eth0') %}
{%- endif %}
set network.{{ net }}.ifname='{{ ' '.join(ports) }}'
{%- endfor %}

{%- set radionum = 0 %}
{%- for path, radio in conf['radios'].items() %}
set wireless.radio{{ radionum }}=wifi-device
set wireless.radio{{ radionum }}.type=mac80211
set wireless.radio{{ radionum }}.channel={{ radio['channel'] }}
set wireless.radio{{ radionum }}.path={{ path }}
set wireless.radio{{ radionum }}.hwmode={{ radio.get('hwmode') or '11n' }}
set wireless.radio{{ radionum }}.htmode={{ radio.get('htmode') or 'HT20' }}
set wireless.radio{{ radionum }}.noscan=1
delete wireless.radio{{ radionum }}.disabled

{%-   set ifnum = 0 %}
{%-   for ssid, ssidconf in radio['ssids'].items() %}
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

{%-     set ifnum = ifnum + 1 %}
{%-   endfor %}

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

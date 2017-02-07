#!/bin/bash

for HOST in $@ ; do
    ssh root@$HOST \
        "ash -e -x" <<__SSH__
opkg update
opkg install collectd collectd-mod-interface collectd-mod-load collectd-mod-cpu collectd-mod-iwinfo collectd-mod-network
cat > /etc/collectd.conf <<EOF
Hostname "\$HOSTNAME"
FQDNLookup false
Interval 10

BaseDir "/var/run/collectd"
Include "/etc/collectd/conf.d"
PIDFile "/var/run/collectd.pid"
PluginDir "/usr/lib/collectd"
TypesDB "/usr/share/collectd/types.db"

LoadPlugin cpu
LoadPlugin load
LoadPlugin interface
LoadPlugin iwinfo
LoadPlugin network
<Plugin network>
        Server "{{ pillar['hosts-inet6']['serv']['stats']  }}" "25826"
</Plugin>

EOF

/etc/init.d/collectd restart
/etc/init.d/collectd enable

__SSH__
done

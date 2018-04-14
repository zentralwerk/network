#!/bin/sh

curl https://{{ username }}:{{ key }}@ipv4.tunnelbroker.net/nic/update?hostname={{ tunnel_id }}

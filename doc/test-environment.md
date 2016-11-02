# Create a Virtual Machine

```shell
dd if=/dev/zero of=salt.hda bs=1M count=1 seek=10239
wget http://cdimage.debian.org/debian-cd/8.6.0/amd64/iso-cd/debian-8.6.0-amd64-netinst.iso
kvm -hda salt.hda -m 1024 -smp 2 -net nic,model=e1000 -net user -cdrom
```

Now run the Debian installation. Hostname: `server1`

# Bootstrap

Configure a recent version, eg. *stretch*

```shell
apt-get install salt-master salt-minion
```

Set `master` to `localhost` in `/etc/salt/minion`, restart the
minion. `salt-key -A` to accept the minion in the master.

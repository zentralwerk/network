# Provisionierung eines WLAN-Routers

Sofern der Router durch uns provisioniert wird (ansonsten siehe unten)

1. Kontaktdaten und Dosennummer in `contacts.md` vermerken
2. Nachbar will Privatnetz (verschlüsseltes WLAN)?

   1. privX allokieren
   2. `privX-gw` in `salt-pillar/lxc-containers` anlegen
   3. Erweitere `salt-pillar/dhcp/init.sls` um das Netz anhand [der
      Subnets](subnets.md). Erste IPv4-Adresse muss für den `privX-gw`
      frei bleiben, siehe `salt-pillar/hosts/init.sls`
   4. `salt server1 state.apply lxc-containers`
   5. `salt-key -A`
   6. `salt privX-gw state.apply`

3. AP provisionieren in `salt-pillar/cpe/aps`

    1. Frisches OpenWRT/LEDE? `firstboot: True`
    2. Feld `model`
    3. Feld `location`
    4. LAN-Dosen in `lan-access` auf *privX* legen
    5. WLANs anpassen:
        1. SSID festlegen
        2. `net` auf *privX*
        3. `psk` vom Benutzer eingeben lassen, verschlüsselt
           abspeichern
    6. Kanäle je nach Umgebung des Nachbars optimieren
        * Ist der Nachbar auf Kanal 1 mag man eher zum Kanal 6
        * als weitere Option gibt es noch Kanal 11
    7. mit root@server1 `salt server1 state.apply cpe` ausführen
        * das generiert `/root/apX.sh`
    8. mit root@server1 `/root/apX.sh` ausführen zum Anwenden des Konfigurationsskripts
    9. Wenn Fehler gezeigt werden
        * `entry not found` ist nicht schlimm
        * `invalid` hingegen schon!
        * dann "commit" entfernen und den Fehler suchen.
    10. collectd installieren wie beim Ende des letzten Skripts angezeigt
    11. Falls noch Platz ist, ist das Paket `tcpdump` pratisch
    12. EAP-Netze brauchen große Features: `opkg remove wpad-mini && opkg install wpad`

4. Switch-Port konfigurieren in `salt-pillar/switches`

    1. Switch raussuchen, z.B. *switch-b1* oder *switch-b2* im Haus B
    2. Eintrag `apX` anlegen
    3. `mode: trunk`
    4. Der Port in welchen das Kabel gesteckt wird kommt unter `ports:`
        * z.B.: `- GigabitEthernet 1/0/36`
    5. `vlans:` immer *mgmt* und *pub*, sowie das *privX*
    6. `salt server1 state.apply switches`
    7. `/root/switch-X.sh` zum Anwenden des Konfigurationsskripts

Wenn wir nicht provisionieren, sondern ein mitgebrachter Router verwendet wird:
* kein ZW public konfigurieren!
* bridge-mode verwenden, dhcpd aus
* wenn VLAN möglich: switchport mode auf "trunk"; wenn VLAN nicht möglich: switchport mode auf "access"

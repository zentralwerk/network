# Provisionierung eines WLAN-Routers

Sofern der Router durch uns provisioniert wird (ansonsten siehe unten)

0.  Salt installieren
1.  Kontaktdaten und Dosennummer in `contacts.md` vermerken
2.  Nachbar will Privatnetz?
   
   1. priv${n} allokieren
   2. `priv${n}-gw` in `salt-pillar/lxc-containers/server1.sls` anlegen
   echo "  priv8-gw:\n    interfaces:\n      core:\n        type: veth\n        gw: anon1\n        gw6: anon1\n      priv8:\n        type: phys" (und git commit …)
   3. `salt server1 state.apply lxc-containers` (auf server1 ausführen: salt $target $funktion $datei, `test=True` zum Testen; gelbes prüfen)
   4. `salt-key -A` (akzeptiert ausstehende Keys)
   5. DHCP Ranges aus `subnets.md` heraussuchen und in `salt-pillar/dhcp/init.sls` für priv${n} eintragen
   6. `salt priv${n}-gw state.apply`

3.  AP provisionieren in `salt-pillar/cpe/aps`

    1. Frisches OpenWRT/LEDE? `firstboot: True`
    2. Feld `model`
    3. Feld `location`
    4. LAN-Dosen in `lan-access` auf *priv${n}* legen
    5. WLANs anpassen:
        1. SSID festlegen
        2. `net` auf *priv${n}*
        3. `psk` vom Benutzer eingeben lassen, verschlüsselt
           abspeichern (s.a. [encryption](encryption.md))
    6. Kanäle je nach Umgebung des Nachbars optimieren
    7. `salt server1 state.apply cpe` (generiert `ap${k}.sh`)
    8. `/root/ap${k}.sh` zum Anwenden des Konfigurationsskripts (auf lokalem Rechner kopieren und ausführen)
    9. Wenn Fehler gezeigt werden (entry not found ist nicht schlimm, invalid schon!) dann "commit" entfernen und den Fehler suchen.

4.  Switch-Port konfigurieren in `salt-pillar/switches`

    1. Switch raussuchen, z.B. *switch-b1* oder *switch-b2* im Haus B
    2. Eintrag `ap${k}` anlegen
    3. `mode: trunk`
    4. Der Port in welchen das Kabel gesteckt wird kommt unter `ports:`
    5. `vlans:` immer *mgmt* und *pub*, auch das *priv${k}*
    6. `salt server1 state.apply switches`
    7. `/root/switch-${k}.sh` zum Anwenden des Konfigurationsskripts

Wenn wir nicht provisionieren, sondern ein mitgebrachter Router verwendet wird:
* kein ZW public konfigurieren!
* bridge-mode verwenden, dhcpd aus
* wenn vlan möglich: switchport mode auf "trunk"; wenn vlan nicht möglich: switchport mode auf "access"

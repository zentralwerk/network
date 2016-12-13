# Provisionierung eines WLAN-Routers

1.  Kontaktdaten und Dosennummer in `contacts.md` vermerken
2.  Nachbar will Privatnetz?
   
   1. priv* allokieren
   2. `privX-gw` in `salt-pillar/lxc-containers` anlegen
   3. `salt server1 state.apply lxc-containers`
   4. `salt-key -A`
   5. `salt privX-gw state.apply`
   
3.  AP provisionieren in `salt-pillar/cpe/aps`
    
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
    
4.  Switch-Port konfigurieren in `salt-pillar/switches`

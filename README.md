Dies sind Daten und Skripte zur automatischen Replikation des
Netzwerk-Setups im [Zentralwerk](http://www.zentralwerk.de/).


## Ich brauche Internet!

Lies das: [Hallo, neuer Nachbar!](doc/hello.md)


### Inhaltsverzeichnis

* [Verkabelung zwischen Netzwerkdosen und Schränken](cabling.md)
* [Planung der IP-Adressbereiche](subnets.md)
* [Kontaktdaten der Nutzer](contact.md.gpg), verschlüsselt
* Dokumentation
  * [WiFi-Provisionierung](doc/wifi-provisioning.md)
  * [Einrichtung einer Testumgebung für Entwickler](doc/test-environment.md)
* Unterverzeichnis [salt/](salt): Skripte (*salt states*) zum Aufbau des zentralen Services
* Unterverzeichnis [salt-pillar/](salt-pillar) enthält individuelle Konfigurationsdaten
  * **vlans** bildet Netznamen auf VLAN-IDs ab
  * **subnets** enthält unsere IP-Netzplanung
  * **hosts** sind alle statisch konfigurierten IP-Adressen
  * **switches** dient zur Konfigurationserzeugung für alle Managed Switches
  * **cpe** sind Daten für Konfiguration des *Customer Premise Equipment* (WiFi Access Points)


## Warum ist hier alles einsehbar?

Für maximale Transparenz. Wir sind kein Unternehmen das Geheimnisse
schützen muss. Stattdessen wollen wir freie Kommunikation für alle!

Keine Sorge, wo private Daten stehen, haben wir sie
verschlüsselt. Über den Geheimschlüssel zur Entschlüsselung verfügt
nur der Kreis der Hausnetztechniker.

Willkommen bei der Datenvernetzung im Zentralwerk!

## Unsere Ziele

* Internet-Grundversorgung
* Öffentlich zugängliches Gäste-WLAN
* Datenverkehr zwischen Nachbarn ermöglichen und fördern (kein NAT, sondern Ende-zu-Ende-Erreichbarkeit)
* Teilen von Internetanschlüssen zwischen Nachbarn
* Geschwindigkeit (Latenz und Bandbreite)
* Lokale Dienste mit 1000 Mbit/s anbieten

## Du hast eine Datendose im Raum

Sie ist der Anschluß und damit Voraussetzung.

![Datendose mit zwei RJ45-Anschlüssen](https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/UAE_AP_geschlossen.JPG/240px-UAE_AP_geschlossen.JPG)

Wir können darüber erstmal das Gästenetz anbieten. Daran kannst du
einen PC, einen Router oder ein Switch anschliessen. Sag uns die
Nummer die auf der Dose steht!

Wir können dir auch ein eigenes Subnetz auf die Dose legen. Dadurch
wird etwas Abtrennung von Gästenetz erreicht, wobei Geräte über
IP-Adressen weiterhin miteinander kommunizieren können.

Mit deinem eigenen Netz kannst du auf Wunsch auch eine Firewall haben,
welche eingehende Verbindungen verbietet. Wenn du keine Serverdienste
für deine Nachbarn betreiben möchtest, wären deine Computer damit so
abgeschottet wie hinter einem gewöhnlichen Internetzugang.


## WLAN

Du könntest irgendwelche Altgeräte weiterbetreiben, aber eigentlich
wollen wir gern überall auch das Gäste-WLAN anbieten. Deshalb möchten
wir dir gern einen WLAN-Router konfigurieren mit:

* öffentlich zugänglichem Gäste-WLAN
* verschlüsseltem WLAN für dein privates Subnetz
* Kabelzugang in dein privates Subnetz

Von geeigneten Routern haben wir stets zuwenige übrig, so dass wir sie
gemeinsam kaufen und bezahlen müssen. Such dir einen aus, dann
bestellen und konfigurieren wir ihn.

* TP-Link Archer C7 v2 (schnell, 85€)
* TP-Link TL-1043ND v1/v2/v3 (okay, 45€)
* TP-Link TL-WR841N (billigst, 20€)

![TL-WR841N](https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/TP-Link_TL-WR841N-2920.jpg/240px-TP-Link_TL-WR841N-2920.jpg)


## Mehr Geschwindigkeit mit einem eigenen Internetanschluß

Der Internetzugang des Gästenetzes wird zu Stoßzeiten intensiv genutzt
werden. Wer einen eigenen Vodafone-Vertrag hat, ist davon nicht
betroffen. Schau die
[Kabelangebote](https://zuhauseplus.vodafone.de/internet-telefon/kabel/)
selbst durch! Kabelanschlüsse landen zwar in den Wohneinheiten, aber bei
den Gewerbeeinheiten im Keller. Wir übernehmen die Einwahl und routen
euer privates Subnetz über diesen Internetanschluß, so dass ihr euch
nur an eure Datendose anstecken braucht.

Selbstverständlich können auch mehrere Parteien einen Anschluß
teilen. Wir sorgen für eine faire Verteilung der Bandbreite. Schließt
euch dazu in Gruppen zusammen, zum Beispiel über die
[Mailingliste](https://lists.c3d2.de/cgi-bin/mailman/listinfo/zw).

Bei der Bestellung nehmt ihr das billigste Kabelmodem, nicht die
Fritzbox. Um WLAN kümmern wir uns schließlich.


# Alternative: Isolation

Du trägst Bedenken und fühlst dich ohne uns im Internet besser aufgehoben?

Du kannst die Datenkabel zu den Kabelinternetzugängen im Keller
mitnutzen indem wir dir ein VLAN konfigurieren, welches nur dein
Kabelmodem und deine Datendose bekommen.


# Sprechstunden

Dienstags und Donnerstags 16:00-18:00 Uhr

[C3D2](https://www.c3d2.de/space.html), Haus B Souterrain, genau in der Mitte

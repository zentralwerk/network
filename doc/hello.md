Willkommen zur (groben) Vorstellung der Gegebenheiten und Möglichkeiten vom Netzwerk im [Zentralwerk](http://zentralwerk.de).

## Projekt

Als Zentralwerk betreiben wir gemeinsam das Netzwerk in unserem Haus. Es gibt eine Gruppe von Menschen im Zentralwerk, die das Netzwerk aufbaut und verwaltet. Maßgeblich findet das Engagement beim [C3D2](https://c3d2.de/) - als eine der Gruppen im Zentralwerk - statt. Menschen, die sich gern zum Betreiben des Netzewrkes mit einbringen möchten, sind selbstverständlich willkommen.

**Ziele**

* Zugang zum Internet
* gute Abdeckung mit WLAN, wo WLAN verfügar sein soll
* barrierearmer Zugang zum Netzwerk (mit Zugang zum Internet)
 * etwa öffentliches WLAN (freier Zugang ohne die Notwendigkeit von Anmeldedaten)
 * etwa kein Aufwändiges Konfigurieren von Geräten
* Möglichkeit zum Datenaustausch zwischen einzelnen Anschlüssen im Haus
 * Ende-zu-Ende-Erreichbarkeit (nicht NAT)
* gemeinschaftliches Nutzen von Anschüsseln ans Internet
* gute Geschwindigkeit (etwa hinsichtlich Latenz und Bandbreite)
* Anbieten von gemeinsamen lokale Diensten
 * mit 1000 Mbit/s

## Anschluss

Alle Räume im Haus sollten bis zu einer Datendose im Raum angebunden sein, die Voraussetzung für einen Anschluss ans Netzwerk ist.

![Datendose mit zwei RJ45-Anschlüssen](https://upload.wikimedia.org/wikipedia/commons/thumb/6/63/UAE_AP_geschlossen.JPG/240px-UAE_AP_geschlossen.JPG)

Grundsätzlich erscheinen bisher folgende Fälle vorstellbar.

1. Pauschal kann erst einmal zu jedem Raum das (allgemeine) gemeinschaftliche Netz angeschlossen werden. Daran können dann einzelne Rechner, ein Router oder ein Switch angeschlossen werden. Hierfür braucht nur einfach - mit Benennung des Raumes - Bescheid gegeben werden.
1. Es kann dem Anschluss auch ein eigenes Netz zugeordnet werden. Mit einem solchen eigenen Netz wäre dann ein bewusstes Abtrennen vom allgemeinen Netz möglich. Ein Kommunizieren mit den Geräten im allgemeinen Netz ist weiterhin möglich.
1. Bei einem eigenen Netz für den Anschluss kann auch das pauschale oder gezielte Abschotten von Verbindungen mit dem Netzwerk (eine Firewall) eingerichtet werden. Das ist der Fall, wenn du keine Dienste mit Anderen im Haus betreiben oder nutzen willst. Der Anschluss vom Computer wäre dann so isoliert, wie wenn er allein an einem alleinigen Zugang zum Internet angebunden wäre.

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

### Netzverteilung

Auch möglich sind diese Konfigurationen:

* Ihr wohnt nebenan und möchtet euch einen WLAN-Router teilen? Dann
  könnt ihr trotzdem individuell verschlüsselte private Subnetze
  haben.
  
* Du hast mehrere Büros oder Büro und Wohnung im Haus? Auf diese
  Datendosen und WLAN-Router können wir dein Subnetz legen, auch wenn
  sie an verschiedenen Orten im Haus sind. In einem Subnetz sind
  Geräte wie zum Beispiel Drucker direkt auffindbar.


### Alternative: Eigener alter WLAN-Router

Selbstverständlich wollen wir nichts brauchbares wegwerfen. Zuerst
würden wir uns das Gerät anschauen und uns für einen der folgenden
Wege entscheiden:

1. Entweder das Gerät wird
   von [OpenWRT](https://wiki.openwrt.org/toh/start)
   oder [LEDE](https://lede-project.org/toh/views/toh_available_864)
   unterstützt, dann können wir das Gerät analog zu den obigen
   Modellen mit privatem und Gäste-WLAN einrichten.
   
2. Alternativ versuchen wir einfach Kabelanschlüsse und WLAN direkt zu
   verbinden. Damit könnten wir entweder Gästenetz oder dein privates
   Netz auf WLAN und Kabelanschlüsse legen.


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


### Warum Internetanschluß routen lassen…

…statt direkt das Kabelmodem zu verwenden?

* Wir optimieren die ausgehende Bandbreite um
  das [Bufferbloat](https://en.wikipedia.org/wiki/Bufferbloat)-Problem
  zu umgehen.
* Du könntest deinen Internetanschluß mit Nachbarn teilen.
* Wir ermöglichen gleichzeitig Zugang zum internen Zentralwerk-Netz.


### Kabeldose in der Wohnung?

…und nicht im Keller? Wir können die oben genannten Ziele trotzdem
erreichen wenn du einen der von uns konfigurierten Router nutzt.


## Statische IPv6-Adressen

Du willst weltweit erreichbar sein mit dem Internet-Protokoll der
Zukunft? Kein Problem: wir verfügen über eine Menge statischer
IPv6-Adressen über den Tunnel-Broker [SixXS](https://www.sixxs.net/)
mit mehreren schnellen Zugangspunkten in geographischer Nähe.


# Alternative: Isolation

Du trägst Bedenken und fühlst dich ohne uns im Internet besser aufgehoben?

Du kannst die Datenkabel zu den Kabelinternetzugängen im Keller
mitnutzen indem wir dir ein VLAN konfigurieren, welches nur dein
Kabelmodem und deine Datendose bekommen.


# Sprechstunden

Dienstags und Donnerstags 16:00-18:00 Uhr

[C3D2](https://www.c3d2.de/space.html), Haus B Souterrain, genau in der Mitte

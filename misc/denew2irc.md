---
title: The IRC Prelude
author: David Caraballo (DC-itsme) and Joseph Lo (Jolo)
layout: default
datecreated: 9 September 1996
dateupdated: 4 January 2020
license: irchelp
redirect_from: /irchelp/denew2irc.html
---
# The IRC Prelude
Übersetzt ins Deutsche von Faber... 9/17/96
minor updates by Jolo 12/18/97

The original version of this page is at <http://www.irchelp.org/faq/new2irc.html>

{% include new2irc_translations.md %}

## Inhalt

  1. [Was ist IRC, und wie funktioniert es ?](#was)
  2. [Ein paar Einzelheiten](#ein)
  3. [Reden und Eingeben von Kommandos.](#reden)
  4. [Wo sollte man hingehen](#wo)
  5. [Smilies und Jargon](#jargon)
  6. [Ein paar Hinweise](#hinweise)
  7. [Probleme mit IRC servern, und wie man sich einen Server aussucht](#server)
  8. [Ausführlichere Hilfe](#hilfe)
  9. [Ein paar Warnungen](#warnungen)

## 1. Was ist IRC, und wie funktioniert es ?
{:#was}

IRC (Internet Relay Chat) stellt einen Weg zur Verfügung, mit der ganzen Welt
zu kommunizieren, und das in sog. Echtzeit. Es besteht aus mehreren
unabhängigen [Netzwerken](/irchelp/networks/) von IRC Servern, Maschinen die es den Usern erlauben,
sich im IRC anzumelden.  Die größten Netze sind dabei das [EFNet](http://www.efnet.org/) (das Original
IRC Netz, mit oft über 32.000 Benutzern),
[Undernet](http://www.undernet.org/), 
[DALnet](http://www.dal.net/) und 
[freenode](https://freenode.net/).
{% comment %}
[NewNet](http://www.newnet.net/)
[IRCnet](http://www.funet.fi/~irc/)
{% endcomment %}

Allgemein gilt: Der User (also Du) benutzt ein Programm (genannt Client) um
sich mit dem einem Server eines [IRCNetzes](/irchelp/networks/) zu verbinden.
Der Server dient dabei als Relais, um Informationen an andere und von anderen
Servern des gleichen Netzes weiterzugeben. Empfehlenswert als ClientProgramm
sind folgende:

* [UNIX/Linux Clients](/clients/unix/)
  * [irssi](/clients/unix/irssi/) - Client für das Terminal
  * [HexChat](/clients/cross/hexchat.html) - graphischer Client
  * [xchat](/clients/unix/xchat/) - X11 (graphical) client
* [Windows Clients](/clients/windows/)
  * [mIRC](/clients/windows/mirc/)
* [Macintosh clients](/clients/mac/)

Bitte lies die Dokumentation zu dem jeweiligen Client genau!

Sobald man mit dem IRC verbunden ist, wird man normalerweise einen oder
mehrerer sog. Channels (Kanäle) betreten. Auf [EFNet](http://www.efnet.org/)
gibt es oft mehr als 12.000 [Channels](/irchelp/chanlist/), aber nur ein paar
werden hier genannt werden, genug um sie für den Start zu benutzen.
Die Gespräche laufen entweder öffentlich ab (d.h. jeder in dem gleichen Channel
sieht was du schreibst) oder privat (Nachrichten, die zwischen 2 ausgetauscht
werden, ohne das sie jemand anderes sieht, unabhängig davon wer in welchem
Channel ist.)
IRC ist kein Computerspiel, und ich empfehle doch sehr, alle Leute, die du auf
IRC triffst, genau so zu behandelt als wenn du dich im "echten Leben" mit ihnen
unterhalten würdest.

## 2. Ein paar Einzelheiten
{:#ein}

Die Namen der Channels beginnen normalerweise mit einem #, wie z.B. in
 #irchelp. Die Channels sind auf allen Servern genau gleich, man braucht also
nicht den gleichen Server zu verwenden wie diejenigen, mit denen man sich
unterhalten möchte.
{% comment %}
(There are also channels with names beginning
with a & instead of a #. These channels are not shared by all servers on the
net but exist locally on that server only.)
{% endcomment %}

Jeder User ist auf IRC unter seinem Pseudonym bekannt, dem sogenannten "nick",
wie z.B. _smartgal_ oder _funguy_. Am besten benutzt man einen nicht allzu
trivialen Nicknamen, um Konflikte zu vermeiden. "John" wäre meist also eine
unpassende Wahl. Auf den meisten IRC Netzen (mit Ausnahme von z.B. DALNet) ist
ein Nick nicht geschützt, er gehört weder fest zu einer Person, noch zu einem
Channel. Das kann zu Konflikten führen, so daß man aus dem Grunde vielleicht
das DALNet vorzieht.
{% comment %}
you may prefer networks with "services" like
[Undernet](http://www.undernet.org/), [DALnet](http://www.dal.net/), or other
[smaller networks](/irchelp/networks/).
{% endcomment %}

Channels haben Moderatoren, sogenannte Channel Operators oder kurz chanops oder
einfach ops genannt. Sie kontrollieren den Channel, indem sie bestimmen wer den
Channel betreten darf (sog. Channel Bans), wer ihn verlassen muß (sog. Channel
Kicks) und auch, wer sprechen darf. Channel Operators haben die komplette
Kontrolle über den Kanal, und ihre Entscheidungen sind endgültig. Sollte man
vom Betreten eines Channels durch einen Bann gehindert sein, kann man einen
Channel Op freundlich via /msg fragen, ob er einen nicht wieder hereinfallen
kann. (Siehe nächstes Kapitel über /who um rauszufinden, wie man die Channel
Operators eines Channels findet.)
{% comment %}
because the channel is in secret mode (+s), just go somewhere else
where you are more welcome.
{% endcomment %}


[IRC Server](/ircd/) werden gewartet und gepflegt von den
[IRC Operators](/ircd/ircopguide.html) oder auch "IRC ops". 
IRC Operators sind also nur für den Server (technisch gesehen)
verantwortlich, und mischen sich nicht in Channel-Gespräche ein. Sie sind vor
allem _keine_ IRC Polizei o.ä.

## 3. Reden und Eingeben von Kommandos.
{:#reden}

Kommandos und Text werden beide in der selben Stelle eingegeben. Normalerweise
kennzeichnet man Kommandos dadurch, daß man sie mit dem / Zeichen beginnen
läßt. Solltest du einen grafischen Client haben, wie z.B.
[mIRC](/irchelp/mirc/), so lassen sich viele Kommandos per Mausklick aufrufen.
Jedoch ist es sehr zu empfehlen, das du dir die grundsätzlichen IRC Kommandos
trotzdem aneignest. Bei der Kommandoeingabe achte man genauestens auf die
Benutzung von Sonderzeichen, Leerzeichen sowie kleinund Großschrift. Die
grundsätzlichen Kommandos funktionieren auf fast jedem Client.

Es folgen einige Beispiele. Angenommen, dein nick sei "yournick", und du bist
auf dem Channel #coolness.

Dein(e) Freund(in) "MaryN" ist mit dir auf #coolness, und dein(e) Freund(in)
"Tomm" ist auch auf IRC, aber nicht mit dir auf einem Channel. Dann kannst du
folgende Beispiele anwenden, in der Praxis sind dann eben die Nick- und
Channelnamen entsprechend zu ersetzen. Sobald du in einem Channel bist, kannst
du einfach am Gespräch teilnehmen, oder einfach zuhören, wenn du möchtest. Hier
ein paar nützliche Kommandos:

	Eingabe                Ergebnis
	-------------          ------------
	/join #coolness        Du betrittst den Channel.
	/who #coolness         Gibt einige Informationen über die User des Channels
	                       @ = Channel Op, und * bedeutet IRC op.
	/ping #coolness        Gibt Informationen über die Laufzeit einer Nachricht
	                       zwischen dir und jedem einzelnen User auf #coolness
	hallo erstmal          Jeder auf #coolness sieht
	                           <yournick> hallo erstmal
	                       (Den eigenen Nick braucht man nicht einzugeben)
	/me hat Spaß           Jeder auf #coolness sieht
	                           * yournick hat Spaß
	/leave #coolness       Du verläßt den Channel.
	/whois Tomm   ODER
	/whois MaryN           Ermittelt einige Informationen über Tomm bzw. MaryN
	/whois yournick        Das ist, was andere über dich via /whois sehen.
	/nick newnick          Ändert deinen Nick in "newnick"
	/nick yournick         Ändert deinen Nick zurück zu "yournick"
	/msg Tomm Tag auch.    Nur Tomm sieht deine Begrüßung. 
	                       /msg MaryN Tag auch. Nur MaryN sieht deine Begrüßung, etc.
	/ping Tomm             Gibt Informationen über die Laufzeit (hin- und
	                       rückweg) zwischen Tomm und dir.
	/help                  Gibt bei vielen IRC Clients Hilfe aus. Ausprobieren!
	/quit comment          Du beendest IRC, mit einem Abschiedskommentar für
	                       die anderen.

{% comment %}
 /dcc chat MaryN
 This sends MaryN a request for a dcc chat session. MaryN types /dcc chat
yournick to complete the connection. DCC chat is faster (lag free) and more
secure than /msg.

 /msg =MaryN Hi there!
 Once a DCC connection has been established, use the /msg =nick message
format to exchange messages (note the = sign). DCC does not go through
servers, so it are unaffected by server lag, net splits, etc.
{% endcomment %}

  *   **Hinweis:** Wenn man sich in keinem Channel aufhält, ist in dem sogenannten
      Null-Channel (Channel 0). Das ist kein wirklicher Channel, und alle Zeilen, die
      nicht mit einem / anfangen, haben keine Wirkung, außer eine Fehlermeldung.
      Andere Kommandos können anders wirken, oder auch nicht funktionieren, aber alle
      Channel-Unabhängige Kommandos (wie z.B. /msg /quit /ping) funktionieren
      natürlich trotzdem.

## 4. Wo sollte man hingehen
{:#wo}

Man bekommt schon viel mit dadurch, daß man einfach in einen Channel geht und
zuhört, dann nach einer kurzen Weile mitredet. Für Anfänger (die der englischen
Sprache mächtig sind) gibt es z.B. #new2irc, #newuser, #newbies, #chatback
(etwas voller ist es in #chat, #ircbar). Deutschsprachige Anfängerkanäle gibt
es in der Form nicht, aber man kann natürlich nach #germany gehen, und dort
Kontakt suchen. Ein "ich bin neu hier" vermittelt einem in der Regel einen
netten Hilfswilligen, der die Ein- oder andere Frage beantwortet.

[mIRC](/irchelp/mirc/) Hilfe bekommt man auf #new2mirc oder #mirchelp,
allgemeine IRC-Hilfe auf #irchelp. Auch dort ist Englisch die Regel, und
Deutsch nur wenn deutschsprachige Helfer anwesend sind.

Um einen eigenen Channel mit dem Namen #mychannel zu eröffnen (vorausgesetzt,
 #mychannel existiert noch nicht), benutzt man wie beim Betreten von schon
vorhandenen Channel /join, also tippt man /join #mychannel. Man bekommt in
einem neueröffneten Channel automatisch Channel Op Status.

## 5. Smilies und Jargon
{:#jargon}

:-) ist ein lächelndes Gesicht, und :-( ist ein trauriges oder ärgerliches. ;-)
ist ein zwinkerndes Gesicht, zur Andeutung von Ironie o.ä. :~~( ist weinend,
während :-P zungeherrausstreckend ist. :-P ~~ ist lechzend. (-:
linkshänder-Smiley, etc. Es gibt natürlich hunderte dieser Smileys.

Hier sind IRC typische Abkürzungen, ihre Bedeutung sowie Übersetzung:

	brb =  be right back                    bin gleich zurück
	bbiaf = be back in a flash              bin sofort zurück
	bbl =  be back later                    komme später wieder
	ttfn = ta ta for now                    bis später
	np  =  no problem                       kein Problem
	imho = in my humble opinion             meiner bescheidenen Meinung nach
	lol =  laughing out loud                laut auflachend
	j/k = just kidding                      ich mache nur Witze / Spass
	re  =  hi again, as in "re hi"          hallo nochmal, bin wieder da oder
	                                        willkommen zurück
	wb   = welcome back                     Willkommen zurück
	wtf =  what the f--k                    Was zum Teufel..
	rtfm = read the f--king manual          Lies das verdammte Handbuch
	                                        (Help file, Readme, etc..)
	rotfl = rolling on the floor laughing   über den Boden rollend
                                           (=auf dem Boden liegend), lachend

## 6. Ein paar Hinweise
{:#hinweise}

Text in Großbuchstaben, **WIE DAS HIER**, wird als laut rufend angesehen, und
sollte nur selten benutzt werden. Weiterhin sollte man die korrekte
Terminologie verwenden, also Channel und nicht Chat room, und Nick und nicht
Handle (aus diesem Grund wurden die Begriffe auch nicht ins Deutsche
übersetzt).

In einem Channel ist es meist eine Gute Idee, sich den Regeln der Channel
Operators entsprechend zu verhalten. Wenn man sich mit Ihnen "anlegt", wird man
möglicherweise vom Channel geworfen (gekickt) und eventuell auch am
Wiederbetreten gehindert (gebannt). Auf der anderen Seite sind manche Channel
Ops auch einfach machthungrig, und kicken/bannen ohne Grund. In diesem Fall
sollte man den Channel einfach hinter sich lassen, und sich einen anderen
suchen, auf dem die Leute freundlicher sind, es gibt schließlich tausende von
Channels :)

{% comment %}
**Registration**   On many networks. services exist for the registration of
nicknames and/or channels. These services vary greatly between networks, but
are useually mentioned in the server's message of the day (MOTD) which is shown
when you first connect. You can show the MOTD again at any time by typing /motd
in most clients.

THe network's home page will also detail any services offered on that network.

Nickname registration allows you to "own" a nickname, and prevent others from
using it on that network. Consequently, if you try to use a nickname that
someone else already has reserved on such a network, you will recieve a warning
message from the network, and after a few seconds, your nickname will be
changed or your will be disconnected.  In the event that this happens, simply
change your nickname until you find one that's not taken. Consult the MOTD or
network homepage for details if you want to register your nickname.
{% endcomment %}

Da das /list Kommando zum Einsehen der Channelliste sehr oft aus verschiedenen
Gründen nicht funktioniert, ist eine Channelliste verfügbar auf
<http://www.irchelp.org/irchelp/chanlist/> .

{% comment %}
 **Harrassment and attacks**     If someone starts harassing or flooding you,
leave the channel or use the /ignore command. For more details,
[mIRC](/irchelp/mirc/) users see our [flood
protection](/irchelp/mirc/flood.html) page, [ircII](/irchelp/ircii/) users
type [/help ignore](/irchelp/ircii/commands/IGNORE). It is a good idea to set
your user mode to +i (invisible) to avoid unsolicited messages and harrassment
-- if you are "invisible" generally only users on a channel with you can
determine what nick you are using.


 If somebody else is crashing or disconnecting you, see our [Denial of
Service or "Nuke" Attacks](/irchelp/nuke/) page. You can also [log and report
abuse](/irchelp/misc/irclog.html) when it violates server rules, which you can
read by typing /motd.
{% endcomment %}

## 7. Probleme mit IRC servern, und wie man sich einen Server aussucht
{:#server}

An diesem Punkt bist du in der Lage, dich auf dem IRC zu unterhalten. Die
Kommandos, die bis jetzt erklärt sind, sollten für Anfänger und "alltägliches"
Chatten ausreichen, aber es können durchaus mal außergewöhnliche Probleme
auftreten.

IRC-Netzwerke können plötzlich zerteilt werden (sog. **"Netsplits"**), d.h.
plötzlich werden eine ganze Reihe von Usern von dir getrennt, und tauchen dann
normalerweise gesammelt ein paar Minuten später wieder auf. Manchmal dauern
Netsplits allerdings auch Tage.

Ein öfters auftretendes Phänomen ist der sogenannte **"lag"**, d.h. es gibt eine
deutlich merkbare Zeitspanne zwischen dem Abschicken der Textzeilen und dem
Erscheinen selbiger auf dem Bildschirmen der Empfänger. Einen Irc-server in der
Nähe zu wählen, minimiert diesen Lag, und messen läßt sich der lag mit Hilfe
des Kommandos /ctcp nickname/#channel ping. Dann wird auf dem Bildschirm
dargestellt, wie lang die Laufzeiten zwischen dir und den anderen sind. Bei dem
Channel-Ping bekommt man von jedem Teilnehmer ein sog. Ping-Reply mit der
Zeitangabe.

mIRC User: Ping? Pong! im Statusfenster zeigt nur an, das der Server deinen Irc
Client "gepingt" hat, um festzustellen, ob der noch "lebt". Der Client
bestätigt dies mit einem "Pong", und zeigt das in dem Statusfenster an. Keinen
Grund sich Sorgen zu machen oder was zu unternehmen, das ist ganz normal.

Das Kommando zum Wechseln der Server ist /server NamedesServers

Die meisten Clients geben mit /links eine liste von Servern deines aktuellen
IRC-Netzes aus.

**Hinweis:** Das /dcc chat Kommando kann verwendet werden, um eine Direktverbindung
zwischen 2 Clients aufzubauen, welches den Lag verhindert, und auch bei
Netsplits (dem Zusammenbruch von Server-Server Verbindungen) erhalten bleibt.
Bitte sieh in der Dokumentation nach, wie dcc chat verwendet wird. In ircII
wird dcc chat mit Hilfe von /dcc chat nickname gestartet, und mit /msg
=nickname (also dem zusätzlichen = vor dem nicknamen) benutzt. Geschlossen wird
die Verbindung mit /dcc close nickname.

## 8. Ausführlichere Hilfe
{:#hilfe}

Für weiter Informationen zu allen genannten Punkten, sowie zu vielen weiteren
Kommandos (Liste der Channels, Ignorieren von Usern, Übertragen von Files) lese
man den IRC-Primer und FAQ (Frequently Asked Questions = Häufig gestellte
Fragen), auf <http://www.irchelp.org> .

Für noch weitergehende Informationen zu dem IrcII client (z.B. das erstellen
von IRC-Skripten), siehe die Dateien <http://www.deware.com/misc/ircii/irciiman.txt>, 
server-numerics und [RFC1459](https://www.ietf.org/rfc/rfc1459.txt).

Automatisierte Hilfe ist erreichbar über FreeSoft's client ai- auf EFNet.
Einfach /msg ai- help eingeben. (Es sei erwähnt, daß zum Zeitpunkt der
Übersetzung kein deutscher IRC-Server dem EFNet angehört.

## 9. Ein paar Warnungen
{:#warnungen}

**IRC Scripte** sind gesammelte Kommandos, die von deinem Client ausgeführt
werden. Eine nicht unerhebliche Anzahl von (ansonsten gutmütigen) IRC-Scripts
wurden verändert, so daß sie erheblichen Schaden anrichten können. (z.B. so daß
jemand in deinen Account einbrechen kann, oder alle Dateien gelöschte werden,
deine Mails gelesen werden, etc.). Es gab schon sehr viele Vorfälle dieser Art,
nicht nur ein paar wenige. Lasse NIEMALS ein Skript laufen, daß du nicht vorher
GENAUESTENS Zeile für Zeile überprüft hast, auch nicht, wenn du das Skript von
einem Freund hast, da der Freund möglicherweise nicht die Erfahrung hat,
eingebaute "Trojanische Pferde" zu erkennen.

{% comment %}
 **Automatic DCC get** is a very bad idea! Once it is on, you are susceptible
to dangers ranging from disconnection from your server to giving someone else
control of your computer. Quite a few people have run into serious problems
because of the DCC autoget setting.
{% endcomment %}

* * *

Originaldokument-Informationen:
DC-itsme (carabalo@hilbert.geom.umn.edu) CREDITS: Much of the credit belongs to

FreeSoft, Prysm,
hershey, Jolo
turtle,
and other #irchelp helpers on EFnet, from whose many very
helpful suggestions this file has greatly benefited.

Übersetzt von / Translated by faber 


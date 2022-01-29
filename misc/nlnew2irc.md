---
title: The IRC Prelude
author: Wedlock
layout: default
datecreated: 3 May 1998
license: irchelp
redirect_from: /irchelp/nlnew2irc.html
---
# The IRC Prelude

door David Caraballo (DC-itsme) en Joseph Lo (Jolo)  
vertaalt in het Nederlands door Wedlock... 3/5/98

The original version of this page is at
<http://www.irchelp.org/irchelp/new2irc.html>  

{% include new2irc_translations.md %}

## 1\. Wat is IRC, en hoe gaat het in zijn werk?

IRC (Internet Relay Chat) geeft de mogelijkheid om real-time te
communiceren met mensen over gans de wereld. Het bestaat uit
verschillende [netwerken](/networks/) (of "netten") van IRC
servers, machines die gebruikers toelaten om te verbinden naar het IRC.
De grootste netwerken zijn [EFNet](http://www.efnet.org/) (het originele
IRC Netwerk, met regelmatig meer dan 32000 bezoekers),
[Undernet](http://www.undernet.org/),
[IRCnet](https://www.ircnet.com/), [DALnet](http://www.dal.net/), en
[Libera.Chat](https://libera.chat/).

Het komt er op neer dat een gebruikers (zoals jij) een programma opstart
(een "client" heet dat) om te verbinden naar een server op een van de
[IRC netwerken](/networks/). De server speelt informatie door
van en naar andere servers van hetzelfde netwerk. Aanbevolen clients
zijn:

  - UNIX/shell: [ircii](/clients/unix/ircii/)
  - Windows: [mIRC](/clients/windows/mirc/) of PIRCH
  - [Macintosh](/clients/mac/): [Ircle](/clients/mac/ircle_setup.html)

Laat alsjeblief niet na om de documentatie te lezen die bij de clients
meegeleverd wordt.

Eens je verbonden bent met een IRC server op een IRC netwerk, zal je
meestal een of meerdere "kanalen" vervoegen, en met andere personen
conversren daar. Op [Efnet](http://www.efnet.org) zijn er meer dan 12000
[kanalen](/chanlist/), allemaal gewijd aan een ander onderwerp.
Gesprekken kunnen openbaar zijn (waarbij iedereen op het kanaal kan zien
wat je zegt) of privŽ (gesprekken tussen 2 personen, die al dan niet
zich op hetzelfde kanaal bevinden). IRC is geen "spelletje", en ik zou
heel sterk aanbevelen om personen die je op IRC ontmoet, op dezelfde
manier te behandelen als een persoon waar je mee telefoneert, of waar je
persoonlijk mee praat. Indien niet, zouden er ernstige gevolgen kunnen
aan gegeven worden.

## 2\. Enkele details

Kanaalnamen beginnen meestal met een \#, zoals bijvoorbeeld \#irchelp.
Dezelfde kanalen zijn gedeeld door alle IRC servers op het zelfde
netwerk, dus je hoeft je niet op hetzelfde netwerk te bevinden als je
vrienden. (Er zijn ook kanalen die beginnen met & in plaats van \#. Deze
kanalen zijn niet gedeeld door alle servers op het netwerk, maar bestaan
enkel lokaal op die server).

Elke gebruiker is op het IRC bekend als een "nick", zoals smartgal of
funguy. Om conflicten te vermijden met andere gebruikers, is het beter
om een nick te gebruiken die niet zo veel voorkomt. Bv. "John" zou een
slechte keuze zijn. Op bepaalde netwerken, behoren de nicks, noch de
kanalen aan niemand toe. Dit kan ook tot conflicten leiden, dus als je
hevig je "eigendom" opeist, kan je beter naar netwerken verbinden die
"services" bieden, zoals [Undernet](http://www.undernet.org/),
[DALnet](http://www.dal.net/), en enkele kleine 
[IRC netwerken](/networks/).

[IRC Server](/ircd/) worden onderhouden door IRC Admins en 
[IRC Operators](/ircd/ircopguide.html), of "IRC Ops". IRC Ops
onderhouden de servers zelf, en op EFnet en vele andere netwerken,
zullen ze zich niet mengen in persoonlijke vetes, kanaal takeovers,
verloren ops recupereren, etc... Ze zijn GEEN "IRC Cops".

## 3\. Praten, en commando's gebruiken

Commando's en tekst worden in hetzelfde veld ingegeven. Standaard
beginnen commando's met een /. Als je een grafische client hebt, zoals
[mIRC](/clients/windows/mirc/) voor Windows, kunnen vele commando's worden
uitgevoerd door ikonen aan te klikken met de muis. Maar het is sterk
aanbevolen dat je eerst de basis commando's leert te typen. Wanneer je
commando's intypt, hou dan ook de aandacht gericht op de spaties en de
hoofdletters. De basiscommando's werken op alle goeie clients.

Enkele voorbeelden worden hieronder gegeven. Veronderstel hierbij dat je
nick "jenick" is en dat je je in kanaal \#cool bevindt.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>What you type<br />
</th>
<th>What happens</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>/join #cool<br />
</td>
<td>Je vervoegt het kanaal #cool.</td>
</tr>
<tr class="even">
<td>/who #coolness<br />
</td>
<td>Geeft informatie over de gebruikers op het kanaal.<br />
@ = kanaal op, terwijl * een IRC op voorstelt.</td>
</tr>
<tr class="odd">
<td>hoi iedereen<br />
</td>
<td>Iedereen op #cool ziet <em>&lt;jenick&gt; hoi iedereen</em>. (Je hoeft je eigen nick niet in te geven.)</td>
</tr>
<tr class="even">
<td>/me is de paashaas<br />
</td>
<td>Iedereen in #cool ziet <em>* jenick is de paashaas</em></td>
</tr>
<tr class="odd">
<td>/leave #coolness<br />
</td>
<td>Je verlaat het kanaal.</td>
</tr>
<tr class="even">
<td>/whois Tomm<br />
</td>
<td>Je krijgt informatie over Tomm, of welke nick je ook ingeeft.</td>
</tr>
<tr class="odd">
<td>/whois jenick<br />
</td>
<td>Dit is wat anderen over jou zien.</td>
</tr>
<tr class="even">
<td>/nick newnick<br />
</td>
<td>verandert je nick naar "newnick"</td>
</tr>
<tr class="odd">
<td>/msg Tomm hi there.<br />
</td>
<td>Enkel Tomm ziet je bericht (Je hoeft niet op een kanaal te zitten opdat dit zou werken).</td>
</tr>
<tr class="even">
<td>/ping #cool<br />
</td>
<td>Geeft informatie over de vertraging tussen jou en iedereen op #cool.</td>
</tr>
<tr class="odd">
<td>/ping Tomm<br />
</td>
<td>Geeft informatie over de ve rtraging tussen jou en Tomm alleen.</td>
</tr>
<tr class="even">
<td>/dcc chat MaryN<br />
</td>
<td>TDit stuurt MaryN een DCC CHAT aanvraag. MaryN typt /dcc chat jenick om de connecite toe te staan. DCC chat is sneller (en zonder lag/vertraging) en veiliger dan /msg.</td>
</tr>
<tr class="odd">
<td>/msg =MaryN Hi there!<br />
</td>
<td>Eens een DCC verbinding is tot stand gebracht, gebruik dan het /msg =nick message om berichten uit te wisselen (let op het = teken). DCC gaat niet via de servers, en is dus onafhankelijk van server vertragingen, net splits, enz.</td>
</tr>
<tr class="even">
<td>/help<br />
</td>
<td>Dit werkt in de meeste clients.. probeer het!</td>
</tr>
<tr class="odd">
<td>/quit good night!<br />
</td>
<td>Je verlaat IRC volledig, met de vertrekboodschap zodat anderen "&#42;&#42;&#42; Signoff: jenick (good night!)" zien.</td>
</tr>
</tbody>
</table>

**Opmerking**: Als je je in geen kanaal bevindt, zullen lijnen niet
voorafgegaan door ene / geen enkele reactie hebben, en vele commando's
zullen anders werken, of gewoon niet werken. Hinweis: Wenn man sich in
keinem Channel aufhŠlt, ist in dem sogenannten

## 4\. Waar kan je heengaan?

Je kan heel veel leren, door een kanaal te vervoegen, en gewoon te
luisteren en een beetje te praten voor een tijdje. Probeer bijvoorbeeld
eens deze kanalen: \#new2irc, \#newuser, \#newbies, of \#chatback. Deze
zijn dan wel iets drukker: \#chat, en \#ircbar.

Voor hulp met [mIRC](/clients/windows/mirc) client, probeer
[\#new2mirc](https://www.mirc.co.uk/install.html) of
[\#mirchelp](https://www.mirc.co.uk/help.html). Voor hulp met
algemene IRC vragen, ga je naar \#irchelp.

Om je eigen kanaal te vormen, met de naam \#mijnkanaal (als \#mijnkanaal
nog niet bestaat), typ je /join \#mijnkanaal. Het channel wordt
aangemaakt, en je wordt automatisch op.

## 5\. Smilies en Jargon

:-) is een lachend gezicht, en :-( droef gezicht. ;-) is een knipoogje,
om onder andere ironie aan te geven :\~\~( is wenend :-P is de tong
uitsteken. :-P \~\~ is kwijlen (-: linkshandige smiley, enz.. Er zijn
natuurlijk honderden smileys.

Hier zijn enkele veelgebruikte IRC afkortingen:

``` 
   brb =  be right back                    ik ben zo terug
   bbiaf = be back in a flash              ik ben op een knipoog terug
   bbl =  be back later                    ik kom later wel terug
   ttfn = ta ta for now                    tot binnekort
   np  =  no problem                       geen probleem
   imho = in my humble opinion             in mijn bescheiden mening
   lol =  laughing out loud                luid lachend
   j/k = just kidding                      het was maar een grapje
   re  =  hi again, as in "re hi"          hallo
   wb   = welcome back                     welkom terug
   wtf =  what the f--k                    wat zullen we nu krijgen?
   rtfm = read the f--king manual          lees de f* handleiding
                                           (Help file, Readme, etc..)
   rotfl = rolling on the floor laughing   over de vloer rollend van het lachen
```

## 6\. Een goeie raad

**Etiquette**

**Verbinding verbroken door /list ?**

**Lastiggevallen worden, en aanvallen**

## 7\. Problemen met IRC servers, en een server kiezen

Op dit punt, ben je klaar om te gaan "chatten" op IRC. Voor het grootste
deel, zullen de commando's eerder vermeld op deze pagina, volstaan voor
beginners, maar er kunnen nog andere dingen mislopen in IRC.

**Netsplits**

**Lag**

**[Server lijsten](/networks/)**

**PING? PONG\!**

**Een herinnering over DCC CHAT**

## 8\. Meer gedetailleerde hulp

Voor verdere informatie over deze onderwerpen, en ook over andere
commando's, kan je onze website bezoeken op <http://www.irchelp.org/>.
Daar kan je hulpbestanden vinden zoals:

  - [IRC-Primer](/faq/ircprimer.html)
  - [FAQ (veelgestelde vragen)](/faq/altircfaq.html)
  - [IRC Tutorial](/faq/irctutorial.html)

Op de web site zul je ook geavanceerde informatie vinden voor specifieke
IRC clients, zoals:

  - [ircII client](/clients/unix/ircii/) en 
    [ircII scripts](/script/).
  - [Mac clients](/clients/mac/)
  - [mIRC client](/clients/windows/mirc/) voor Windows

{% comment %}
Ben je op zoek naar andere clients? De meest volledige lijts van clients
staat op het 
[Undernet FTP archive](ftp://ftp.undernet.org/pub/irc/clients/) of 
[Undernet WWW archive](http://clients.undernet.org/). De clients staan verdeeld in
groepen, zoals Windows, Macintosh, DOS, Amiga, Java, etc.
{% endcomment %}

De [mIRC](/clients/windows/mirc/) client heeft ook uitstekende ingebouwde help
files geschreven door Tjerk Vonck (mirc@dds.nl). Selecteer
*Ircintro.hlp* vanuit het *Help* menu.

{% comment %}
Goeie geautomatiseerde help is beschikbaar via FreeSoft's client ai- op
EFnet. Typ /msg ai- help voor een [keuzemenu](/irchelp/helpirc.html).
{% endcomment %}

## 9\. Een waarschuwing

**IRC scripts** zijn een verzameling van commando's die je client *zal*
uitvoeren. Vele goeie scripts zijn gehacked, zodat wanneer je ze laad,
je de veiligheid ernstig kan in gedrang brengen (iemand kan op je
account toegang krijgen, al je bestanden wissen, je mail lezen, enz..).
Er zijn ook boosdoeners die mensen proberen virussen en andere slechte
dingen proberen door te sturen. Net zoals in het dagelijkse leven, neem
niets aan van een vreemdelijk. Er zijn al vele incidenten geweest van
deze aard, en niet slechts enkelen. Start **nooit** een script op,
tenzij je weet wat elke lijn doet, zelfs niet als het je werd gegeven
door je vriend, aangezien je vriend misschien de moeite niet heeft
gedaan om te zoeken naar goed-verstopte "trojans".

**Automatische DCC GET** is een heel slecht idee. Eens het aanstaat, sta
je open voor gevaren die gaan van de verbinding verbreken met de server,
tot iemand anders controle geven over je computer. Heel veel mensen
hebben al ernstige problemen moeten doorstaan omwille van deze DCC
autoget instelling.


Origineel Document-Informatie:  
DC-itsme (carabalo@hilbert.geom.umn.edu) CREDITS: Much of the credit
belongs to

``` 
         FreeSoft, Prysm,
         hershey (rmullen@gmx1.com), Jolo 
         turtle (dhansen@baltic.cis.usouthal.edu),
         and other #irchelp helpers on EFnet, from whose many very
         helpful suggestions this file has greatly benefited.
```

Vertaald door / Translated by Wedlock (<adepette@venturi.net>)


---
title: "CHANFIX: EFnet Kanal Fiksing"
author: Andreas Bach
datecreated: 20 March 2003
status: historical
layout: default
---
# CHANFIX: EFnet Kanal Fiksing

<span class="small">av Jolo, tiggergrm og mange andres  
Original version på <http://www.irchelp.org/irchelp/ircd/chanfix.html>  
oppdatert Mar 28, 2003 Oversatt av Andreas Bach aka falxx, Mar 31,
2003</span>

CHANFIX er en service på EFnet som kan gi tilbake op til "orginale ops"
på en stabil kanal. CHANFIX er ikke det samme som chanserv eller andre
lignende registrasjons \!\!services\!\!, hvor kanalens grunnlegger eier
kanalen for alltid. I stedet, overvåker CHANFIX hele nettverket, og
oppdaterer en [database](#score) over hvor mye hver person har hatt op
på hver kanal. Både opene og selve kanalen må kvalifisere til noen
spesielle regler, som beskrevet i et avsnitt lenger nede på siden. Opene
er de som kvalifiserer og har hatt op lengst i følge databasen, de to
siste ukene. Hvis du kvalifiserer, vil du få høyere score i denne
databasen jo lengre du har vært op. Hvis en kanal mister op, vil CHANFIX
automatisk re-op'e de opene som både er på kanalen og kvalifiserer.
CHANFIX bruker poengsummen til å velge hvem som får op automatisk; vi
kan ikke sjalte ut denne ordningen og gi eller ta vekk op-status til
noen. CHANFIX er en siste utvei; den er ikke til for din behagelighet,
eller for å erstatte ordentlig kanal-administrering.

Denne guiden vil presentere CHANFIX og og fortelle deg hvordan du kan få
hjelp fra den. Denne siden er lagt ut i en form der de mest spurte
spørsmålene er øverst. Vennligst se etter ditt spesielle spørsmål, og
les svaret, og på denne måten forsøk å forstå hva vi prater om når vi
snakker til deg på \#CHANFIX.

Vennligst forstå, vi ødela ikke kanalen din, det er ikke vår feil, så
ikke la din frustrasjon gå utover oss. Vi er bare frivillige som
forsøker å hjelpe, så vennligst behandle oss med respekt.

  - [1. Hvordan registrerer jeg en kanal i CHANFIX, eller får den til å komme på min kanal?](#register)
  - [2. Det er ingen som er op på kanalen min, hvordan får jeg op igjen?](#opless)
      - [2A. Betingelser for at CHANFIX gir op til en opløs kanal](#qualify)
      - [2B. Hvorfor vil ikke CHANFIX gi op til min opløse kanal?](#sol)
      - [2C. Hvorfor kan du ikke bare gi meg op?](#justopme)
  - [3. Vi har folk med op på kanalen, men de er ikke ved tastaturet, kan du ikke ope meg i stedet??](#onefriend)
  - [4. Kanalen min ble tatt over, hjelp meg, vær så snill?](#manual)
  - [5. Hvordan gir CHANFIX poeng i databasen?](#score)
  - [6. Mer informasjon](#more)

<span id="register"></span>

## 1\. Hvordan registrerer jeg en kanal i CHANFIX, eller får den til å komme på min kanal?

Du kan ikke registrere kanalen din i CHANFIX. Du må bare sørge for at
den møter noen spesifike kvalifikasjoner. CHANFIX vil da automatisk
følge med og registrere hvem som er op på kanalen. Likedan, hvis
kanalen din kvalifiserer og det ikke er noen op'er på den kanalen, er
det ingenting du trenger å gjøre for å få CHANFIX til å komme til
kanalen, den kommer selv, og gir op til de som kvalifiserer. Se neste
spørsmål om kvalifikasjoner og opløse kanaler.
<span id="opless"></span>

## 2\. Det er ingen som er op på kanalen min, hvordan får jeg op igjen?

Hvis det ikke er **NOEN** op'er igjen på kanalen din, vil CHANFIX komme
og gi op, så lenge kanalen din møter **ALLE** kvalifikasjonene listet
nedenfor. Denne prosessen kan ta noen minutter, eller kanskje over en
time, avhengig av hvor mye de kvalifiserende opene på kanalen har hatt
op totalt de to siste ukene. Personer som har op hele tiden (hele døgnet
(CHANFIX følger med hele døgnet)) pleier å bli op'et raskt. Du kan ikke
invitere eller utløse CHANFIX til å gjøre sin jobb. Hvis CHANFIX joiner
kanalen og går ut igjen, uten å gi op, kvalifiserer ingen på kanalen til
å få op. Les videre for å finne ut hvorfor. <span id="qualify"></span>

### 2A. Betingelser for at CHANFIX gir op til en opløs kanal:

**Du/dere må møte ALLE betingelsene**, ingen unntak.

1.  Kanalen må ha eksistert i minst en halvtime. Selv om dette er det
    tekniske minimum, vær realistisk. Hvilken som helst kanal som er
    yngre enn et par dager er sannsynligvis for ny til å bli reparert,
    fordi du ikke har klart å lage et sett med stabile op'er. Enten bør
    du lage en ny kanal, eller chatte på en eksisterende kanal, siden du
    kanskje ikke er klar for å administrere din egen.
2.  Kanalen må ha hatt minst 4 personer i den samtidig. Igjen, dette er
    et teknisk minimum, men med mindre du har hatt masse folk på
    kanalen, er det oftest raskest å reparere kanalen ved å cycle den
    (få alle til å gå ut av kanalen, og så starte den på nytt fra
    bunn).
3.  Du må ha minst 1, og aller helst 5 eller flere kvalifiserende
    tidligere op'er på kanalen akkurat nå. Kvalifikasjoner for personer
    er nevnt nedenfor.
4.  Disse tidligere opene må ha en fungerende
    [identd](/networks/connectprob.html#43-no-identd), slik at `/whois
    nickname` **ikke** viser en **`~`** (tilde) foran brukernavnet. For
    eksempel, hvis du får "`nickname is ~blah@whatever.com`" er din
    identd ikke-fungerende, og CHANFIX vil aldri kjenne deg igjen,
    uansett hvor lenge du har vært op.
5.  De tidligere opene var op jevnlig de to siste ukene. "Jevnlig"
    trenger ikke å være 24/7, men det betyr at de vanligvis er op - ikke
    bare noen få timer annenhver dag. Alt eldre enn to uker er
    irrelevant, fordi CHANFIX ikke holder orden på noen lengre tid av
    gangen enn det. Det betyr at det også er irrelevant hvem som laget
    kanalen, eller hvem som tror de "eier" den.
6.  IP'en til opene må være "statisk", hvilket betyr at den ikke har
    forandret seg i det hele tatt de to siste ukene. Hostnavn som
    inneholder nøkkelord som "ppp" eller "dialup" er alltid behandlet
    som dynamisk. Spesifikke domener er alltid dynamisk, slik som
    bb.online.no og AOL.com.
7.  Nick'et har ingenting å si, men brukernavnet kan ikke ha blitt
    forandret. CHANFIX bruker brukernavn@hostnavn for å holde styr på
    poengene.

Hvis du innfrir **ALLE** disse betingelsene, sørg for at disse
kvalifiserende opene kommer tilbake til kanalen. CHANFIX vil da
automatisk gi op til de som har høyest poengsum først, deretter nedover
listen til det er 5 klienter med op på kanalen. Den kan komme og gå
opptil flere ganger før den er ferdig, avhengig av hvor høye
poengsummene er. Høyere poengsum betyr at du får op tidligere.

Hvis du rett og slett ikke klarer å innfri disse betingelsene og ikke
får op automatisk, les neste avsnitt. <span id="sol"></span>

### 2B. Hvorfor vil ikke CHANFIX gi op til min opløse kanal?

Hvis det ikke er **noen** op'er og CHANFIX ikke kommer på kanalen din
automatisk innen fem minutter, betyr det at kanalen din ikke
kvalifiserer i følge de betingelsene som ble listet opp ovenfor.

Hvis du mister **alle** opene og CHANFIX kommer på kanalen, om CHANFIX
fortsetter å joine kanalen uten å gi op til noen, så betyr det at du
ikke har kvalifiserende op'er på kanalen som også er i databasen. Den
leter etter 5 klienter å op'e, men ingen i kanalen kvalifiserer. Hold
deg rolig, og les betingelsene i forrige kapittel, og forsøk å få disse
kvalifiserende opene tilbake. For eksempel har du kanskje en bot eller
et botnet som hadde op, som sannsynligvis har de høyeste poengsummene,
få den/de tilbake på kanalen.

Hvis du rett og slett ikke klarer å innfri disse betingelsene, for
eksempel om du har for liten/ny kanal, eller om du har vært opløs i over
to uker, har ikke CHANFIX noen styring på kanalen din, og du må klare
deg på egen hånd. Du må cycle kanalen (få alle ut av kanalen og så
starte den på nytt) for å få tilbake op på kanalen. Se på dette som din
første utfordring: Hvis du ikke engang klarer å administrere en kanal
ordentlig(det vil si ha op'er eller cycle kanalen) når du kun har noen
få folk i den, se for det hvilket kaos det hadde vært om du får 50
eller 500 klienter i framtiden. Det enlke faktum er, å ha en kanal på
EFnet krever minst 10 personer (ikke bot'er) som kvalifiserer i følge
det forrige kapitlet. Hvis du ikke har det, hva er poenget med å ha en
kanal uansett? Besøkere kommer ikke til å komme til en slik liten og
dårlig organisert kanal når det er tusenvis av 
[større kanaler](/chanlist/) allerede. Hvis du insisterer på å ha en kanal
uansett, vurder å flytte den nye/lille kanalen din til et
[nettverk](/networks/) med registring. <span id="justopme"></span>

### 2C. Hvorfor kan du ikke bare gi meg op?

På EFnet, **kan ingen bare gi deg op** på hvilken som helst kanal, ikke
engang IRC operatører ("opere") eller administratorer av servere. Det er
ingen hemmelig kommando. EFnet er ikke slik som andre nettverk som
DALnet, hvor de har tiltak som gir opere slik makt. For mer informasjon,
se [Why EFnet has no registration services](/networks/noserv.html)
(Hvorfor EFnet ikke har noen registrasjons-tilbud) 
og [The Myths of Opers](/ircd/opermyth.html)(Myter
om Opere)(Begge kun på engelsk). <span id="onefriend"></span>

## 3\. Vi har folk med op på kanalen, men de er ikke ved tastaturet, kan du ikke ope meg i stedet?

Så lenge minst en vanlig op (en som har høy poengsum) er op på kanalen,
er det ingenting CHANFIX kan gjøre. Du må da kontakte den personen. Det
har ingenting å si om han kommer til å være borte fra maskinen i flere
uker eller ikke vil gi deg op, du burde ha tenkt over det før du gav
ham/henne op i utgangspunktet. CHANFIX er en siste utvei, og kun når du
ikke har NOEN op'er igjen på kanalen, eller blir tatt over av folk fra
utsiden. EFnet har ikke tilbud for din behagelighet. Som kanal-operatør,
lat som det ikke er noen CHANFIX, og lær deg å drive kanalen din på et
ordentlig vis, som også inkluderer å sette opp skript/bot'er for å
sikkert kunne be om eller gi op. <span id="manual"></span>

## 4\. Kanalen min ble tatt over, hjelp meg, vær så snill?

CHANFIX kan bli utløst manuelt for å reversere en nylig takeover. En
takeover er definert ved at det fremdeles er op'er på kanalen, men de
hadde ikke op før (eksempel: du gir op til en du tror er en av de som
pleier være op på kanalen, og han de-oper alle). Vi går **IKKE** inn i
interne op-krangler, hvor originale op'er på kanalen krangler med
hverandre om kontroll på kanalen (eksempel: det er en uenighet om
hvordan kanalen bør bli drevet, så en av opene bestemmer seg for å
de-ope alle andre). Med andre ord, hvis noen var en av dine topp 10
aktive op'er, de siste to ukene (alt før det er irrelevant, det betyr
ingenting om du laget kanalen eller om du har hatt op der i årevis), han
kan gjøre hva han vil, inkludert å de-ope alle andre. Det skjer
dessverre når du op'er feil person, men hverken CHANFIX eller noen andre
kan hjelpe deg da. Vennligst ta deg av det selv, eller start en ny
kanal.

Om du hadde en faktisk takeover av en som ikke pleide å ha op, må du
finne ut hvordan han/de faktisk fikk op (uhell, "hacket" bot/shell,
[denial of service attack](/nuke/) som sendte alle sammen offline,
etc.). Deretter må du sørge for at det ikke skjer igjen. Vi reparerer
ikke kanaler før du har demonstrert at du ikke blir tatt over igjen med
en gang. Du bør ha så mange som mulig som er [kvalifiserte](#qualify)
vanlige op'er og ved tastaturet, enten på kanalen, eller klar til å
joine den på et øyeblikks advarsel. Vær klar til å sikre kanalen med en
gang etter at repareringen er startet.

Hvordan fungerer repareringen? Med en gang vi har verifisert at det er
en takeover, kan CHANFIX bli utløst manuelt. CHANFIX vil da de-ope alle
og ta vekk alle modereringer som holder folk utenfor kanalen (+b bans,
+i invite-only, +k keyword-required, +l limit). Dette betyr at du må
rejoine kanalen raskt. Så vil CHANFIX senere komme tilbake og gi op til
de originale opene som om det var en opløs kanal.

**For å reversere en takeover, om du innfrir alle
[kvalifiserings-betingelsene](#qualify) for opløse kanaler, gå inn på
kanalen \#CHANFIX på EFnet, og fortell oss navnet på kanalen, hva som
gikk feil, hva du har gjort for at det ikke skal skje igjen, og vent
stille på hjelp.** Vi hjelper deg så raskt vi kan.

Om du ikke kvalifiserer, se det[relevante kapitlet](#sol) ovenfor. Lykke
til, du trenger det. <span id="score"></span>

## 5\. Hvordan gir CHANFIX poeng i databasen?

CHANFIX følger med på hvem som har op på en kanal, ved å bruke en
poengdatabase. For å få poeng, må kanalen din innfri alle
[kvalifikasjons-betingelsene](#qualify) ovenfor. Disse betingelsene
inkluderer å ha et minimum antall op'er med identd og statisk
hostnavn/IP i et minimum tidsrom. Hvis du kvalifiserer, trenger du ikke
registrere eller logge inn noe sted, og det betyr ingenting om du har
skiftet nick eller vil skifte nick. Poengsummen er basert på
brukernavn@hostnavn.

Om kanalen kvalifiserer, vil du få ett poeng hvert femte minutt du har
op på en kanal. Jo lengre du har op på en kanal, jo høyere vil
poengsummen din bli. Poengene beholder du kun i to uker. De beste
poengsummene pleier tilhøre folk (eller bot'er) som kvalifiserer, og har
24/7 tilkobling, og som får op autmatisk med en gang de går inn på
kanalen. En stabil kanal bør i helst ha minst 10 eller flere op'er med
høy poengsum, altså som har op 25-50% av tiden. På den måten vil det,
selv om noe går feil, være klart for oss hvem som er de vanlige opene og
CHANFIX kan gjøre sin jobb lett. Poeng informasjon er tilgjengelig for
IRC-operatører, men kan ikke bli gitt til deg, selv om du er en av de
topp 10 mest aktive opene. Dette er for å beskytte deg og din kanal mot
mulige angrep siktet mot de av opene dine med høyest poengsum.

For en mer teknisk forklaring om hvordan poengsystemet fungerer, les
"[What CHANFIX really is and isn't](http://www.qurve.com/efnet/chanfix/)" 
\[ekstern link\](engelsk).
<span id="more"></span>

## 6\. Mer informasjon

**Original dokumentering**: les 
"[What CHANFIX really is and isn't](http://www.qurve.com/efnet/chanfix/)" 
\[ekstern link\](engelsk)
guiden, som inneholder et eksempel som beskriver hvordan CHANFIX
virkelig fungerer, inkludert detaljer om poengsystemet, og det den
[originale FAQ'en](http://services.efnet.broken.com/chanfix/chanfix-faq.html)
\[ext. link\] som ikke inneholder den siste utviklingen, som for
eksempel manuell reparering muligheten.

**Historie**: CHANFIX (opprinnelig navn: JUPES) ble stemt inn av en
overvekt av EFnet admins i april 2001, og startet driften i begynnelsen
av juli 2001. Du kan lese 
[forslaget her](https://voting.blackened.com/pastvotes/0014.shtml) 
\[ekstern link\]
(hvis browseren din ikke takler https:// sider, vennligst les 
[vår lokale kopi](/ircd/vote0014.html)). Dette forslaget inneholder også en del
tekniske sammenligninger med lignende kanal-reparerings-konsepter.

\[[Tilbake til hovedmappem: IRC daemon / IRC server software](index.html)\]


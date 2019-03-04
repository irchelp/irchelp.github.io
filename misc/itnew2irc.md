---
title: itnew2irc
layout: default
redirect_from:
  - /irchelp/misc/itnew2irc.html
---
# The IRC Prelude

By David Caraballo (DC-itsme) and Joseph Lo (Jolo)

version 1.1.4, updated 3/20/98

translation by Alessio Roberti Vittory

La versione originale di questa pagina si trova a: <[http://www.irchelp.org/ir
chelp/new2irc.html](http://www.irchelp.org/irchelp/new2irc.html)>

Altre versioni: [Español](/irchelp/misc/esnew2irc.html) |
[Français](/irchelp/misc/frnew2irc.html) |
[Deutsch](/irchelp/misc/denew2irc.html) |
[Greek](/irchelp/misc/grnew2irc.html) |
[Indonesia](/misc/idnew2irc.html) |
[Italiano](/misc/itnew2irc.html) |
[Nederlands](/irchelp/misc/nlnew2irc.html) |
[Portugues](/misc/ptnew2irc.html) |
[Turkce](/misc/trnew2irc.html)

## Contenuti

  1. Cosa e' IRC, e come funziona?
  2. Alcuni dettagli
  3. Parlare, e inviare comandi
  4. Dove andare
  5. Alcune faccette e il gergo
  6. Qualche consiglio
  7. Problemi con i server IRC, e scegliere un server
  8. Aiuto piu' dettagliato
  9. Un ultimo avvertimento

* * *

## 1. Cosa e' IRC, e come funziona?

> IRC (Internet Relay Chat) fornisce un modo per comunicare in tempo reale con
persone di ogni parte del mondo. Consiste di un certo numero indipendente di
[networks](/irchelp/networks/) (o "nets") formati da IRC servers, macchine che
consentono agli utenti di connettersi a IRC. I nets piu' grandi sono
[EFnet](http://www.efnet.org/) (Il primo IRC net, frequentato spesso piu' di
32.000 persone contemporaneamente), [Undernet](http://www.undernet.org/),
[IRCnet](http://www.funet.fi/~irc/), [DALnet](http://www.dal.net/), e
[NewNet](http://www.newnet.net/).

>

> Generalmente, l'utente (come te) lancia un programma (chiamato "client") per
connettersi ad un server appartenente ad uno dei [net
IRC](/irchelp/networks/). Il server gestisce informazioni a e da altri server
sullo stesso net. I client consigliati sono:

>

>   * UNIX/shell: [ircII](http://www.irchelp.org/irchelp/ircii/)

>   * Windows: [mIRC](http://www.irchelp.org/irchelp/mirc/) o
[PIRCH](http://www.bcpl.lib.md.us/~frappa/pirch.html)

>   * [Macintosh](http://www.irchelp.org/irchelp/mac/):
[Ircle](http://www.xs4all.nl/~ircle)

>

> Assicurati di leggere la documentazione relativa al tuo client!

>

> Una volta connesso ad un server IRC appartenente ad un network IRC, sarai in
grado di entrare (join) in uno o piu' "canali" (channels) e di conversare con
le altre persone presenti. Su [EFnet](http://www.efnet.org/), ci sono spesso
piu' di 12.000 [canali](/irchelp/chanlist/), ognuno con un proprio argomento
(topic). Le conversazioni possono essere pubbliche (cioe' ognuno presente nel
canale puo' leggere quello che scrivi) o private (i messaggi sono visti solo
da due persone, che possono o non possono essere nello stesso canale). IRC non
e' un "gioco", e ti raccomando di trattare le persone che incontrerai su IRC
con la stessa cortesia con cui parleresti di persona o al telefono, altrimenti
ci potrebbero essere delle serie conseguenze.

>

> [ Contenuti ]

* * *

## 2. Alcuni dettagli

> I nomi dei canali di solito iniziano con il simbolo #, come nel caso di
#irchelp.Gli stessi canali sono divisi tra tutti i server IRC sullo stesso
net, percio' non e' necessario collegarsi allo stesso server IRC dei tuoi
amici. (Esistono anche dei canali i cui nomi iniziano con un & invece di un #.
Questi canali non sono divisi da tutti i server sul net ma sono presenti
localmente, solo su quel particolare server.)

>

> Ogni utente e' conosciuto su IRC tramite il suo "soprannome" (nick), come ad
esempio _smartgal_ o _FunGuy_. Per evitare conflitti con altri utenti, e'
meglio utilizzare un nick che non sia troppo comune, ad esempio "john" non e'
una buona scelta. Su alcuni net, i nick non appartengono a nessuno, e neanche
i canali. Questo puo' causare dei conflitti, se tieni in modo particolare ad
essere l'unico proprietario del tuo nick, potresti preferire dei network che
utilizzano dei "servizi" (services) come ad esempio
[Undernet](http://www.undernet.org/), [DALnet](http://www.dal.net/), o altri
[network minori](/irchelp/networks/nets/).

>

> I canali sono mantenuti da operatori, chiamati comunemente "ops" che
controllano il canale decidendo chi puo' unirsi (effettuando un "ban", un
esilio verso alcuni utenti indesiderati, impedendo loro l'accesso), chi deve
andarsene (effettuando un "kick", buttando fuori la persona dal canale), in
alcuni casi anche chi puo' parlare (i cosidetti canali "moderati")! Gli
operatori (ops) hanno il pieno controllo del proprio canale, e le loro
decisioni sono inopinabili. Se ti capita di essere in ban (esiliato) da un
canale, spedisci un /msg all'operatore del canale chiedendo gentilmente di
rientrare (consulta il comando /who nella sezione seguente per imparare come
rintracciare gli ops). Se gli operatori ti ignorano o il tuo /who non da
risposta perche' il canale e' in modalita' segreta (+s), non ti resta che
cercare un altro posto ove tu sia benvenuto.

>

> [Gli IRC servers](/ircd/) sono gestiti da amministratori IRC (IRC
admins) e da [IRC operators](/ircd/ircopguide.html), o "IRC ops". Gli
IRC ops gestiscono i propri server e, su EFnet ed altri networks, non sono
coinvolti in dispute personali, takeover dei canali, fornire privilegi
operatore perduti, etc. _Non _sono "IRC cops." (poliziotti IRC)

>

> [ Contenuti]

* * *

## 3. Parlare, e inviare comandi

> Comandi e testo sono digitati nello stesso posto. Per definizione, i comandi
sono preceduti dal simbolo / . Se possiedi un client dotato di interfaccia
grafica come [mIRC](/irchelp/mirc/) per Windows, alcuni comandi possono essere
eseguiti cliccando semplicemente delle icone con il puntatore del mouse. In
ogni caso, si consiglia vivamente, di imparare prima i comandi base di IRC.
Quando stai inserendo un comando, devi prestare attenzione alle spaziature e
alle maiuscole. I comandi di base funzionano su tutti i maggiori client.

>

> Sotto ci sono alcuni esempi. In questi, si suppone che il tuo nick sia
"yournick", e che tu sia presente sul canale #coolness.

>

> La tua amica "MaryN" si trova su #coolness insieme a te, mentre il tuo amico
"Tomm" e' su IRC ma non e' presente nel tuo stesso canale. Puoi utilizzare
questi esempi generali sostituendo i nick e i nomi dei canali.

>

> Quello che scrivi

Quello che succede

>

> /join #coolness

> Entri nel canale #coolness.

>

> /who #coolness

> Ottieni alcune informazioni sugli utenti che sono nel canale.

@ = op del canale, mentre * significa IRC op.

>

> hello everyone

> Tutti quelli in #coolness vedono _<yournick> hello everyone_. (Non occorre
che tu scriva il tuo nick.)

>

> /me is a pink bunny

> Tutti quelli in #coolness vedono _* yournick is a pink bunny_

>

> /leave #coolness

> Lasci il canale.

>

> /whois Tomm

> Ottieni alcune informazioni su Tomm o qualsiasi altro nick tu abbia
specificato.

>

> /whois yournick

> Queste sono le informazioni che gli altri possono ottenere su di te.

>

> /nick newnick

> Cambia il tuo nick in "newnick"

>

> /msg Tomm hi there.

> Solo Tomm vede il tuo messaggio (non e' necessario essere presenti sullo
stesso canale per far si che questo comando venga eseguito).

>

> /ping #coolness

> Ottieni informazioni sul ritardo (chiamato anche lag) tra te e tutti quelli
su #coolness.

>

> /ping Tomm

> Ottieni informazioni sul ritardo solo fra te e Tomm.

>

> /dcc chat MaryN

> Questo spedisce a MaryN una richiesta per una sessione di chat dcc. MaryN
scrive /dcc chat yournick per completare la connessione. La chat DCC e' piu'
veloce (senza lag) e piu' sicura del /msg.

>

> /msg =MaryN Hi there!

> Una volta che la connessione DCC e' stata stabilita, utilizza la sintassi
/msg =nick message per scambiare mesaggi (nota il segno uguale =).La DCC non
passa attraverso i server, percio' non e' influenzata dal lag del server, dai
net splits, ecc.

>

> /help

> Questo funziona sulla maggior parte dei client. Provalo!

>

> /quit good night!

> Chiudi IRC completamente, con il messaggio di uscita (part) in maniera che
gli altri vedano "*** Signoff: yournick (good night!)".

>

> **NOTA:** Quando non sei dentro un canale, le linee inserite che sono prive
del simbolo / iniziale, non hanno effetto, e alcuni comandi possono funzionare
in maniera differente oppure non funzionare affatto.

>

> [ Contenuti ]

* * *

## 4. Dove andare

> Puoi imparare molto entrando in un canale (join) e semplicemente ascoltando
e parlando con altri per un po'. Chi inizia puo' provare con questi canali:
#new2irc, #newuser, #newbies, o #chatback. Alternative piu' affollate sono:
#chat, e #ircbar.

>

> Per avere aiuto sul client [mIRC](/irchelp/mirc/), prova a entrare in
[#new2mirc](http://www.mirc.co.uk/chat/n2mircef.chat) oppure
[#mirchelp](http://www.mirc.co.uk/chat/mircheef.chat). Per avere aiuto su
argomenti generali legati a IRC, entra in #irchelp.

>

> Per formare un tuo canale con il nome #mychannel (dove #mychannel non e'
gia' presente), digita /join #mychannel. Il canale e' creato e tu vieni
automaticamente eletto come op.

>

> [ Contenuti ]

* * *

## 5. Alcune faccette e il gergo

> :-) e' una faccetta sorridente, piega la testa a sinistra per vederla. Allo
stesso modo, :-( e' una faccetta triste ;-) e' un occhiolino :~~( e' un
pianto, mentre :-P e' qualcuno che ti sta facendo una linguaccia. :-P ~~ e'
una pernacchia. (-: e' un sorriso a sinistra, ecc. Ci sono centinaia di queste
faccette.

>

> Questi sono alcuni degli acronimi piu' comunemente utilizzati in IRC:

>

>

>     brb =  be right back      (torno subito)

>     bbiaf = be back in a flash

>     bbl =  be back later

>     ttfn = ta ta for now

>     np  =  no problem   (nessun problema)

>     imho = in my humble opinion (secondo me)

>     lol =  laughing out loud (ridere ad alta voce)

>     j/k = just kidding (per indicare che si sta scherzando)

>     re  =  hi again, as in 're hi' (ciao di nuovo)

>     wb = welcome back (bentornato)

>     wtf =  what the f--k

>     rtfm = read the f--king manual

>     rotfl = rolling on the floor laughing (rotolare a terra dalle risate)

>

> &nbsp_place_holder;

>

> [ Contenuti ]

* * *

## 6. Qualche consiglio

> **Etichetta**

>     Scrivere utilizzando solo lettere maiuscole, IN QUESTO MODO, e'
considerato "urlare" e dovrebbe essere evitato. Allo stesso modo, cerca di non
ripetere le stesse frasi oppure di "floddare" il canale con molte linee di
testo alla volta. Assicurati di utilizzare la terminologia corretta, per
esempio "channel", e non "chat room", e "nick", non "handle".

>

> Mentre sei in un canale, segui la liena adottata dagli op presenti. Se entri
in antagonismo con loro, puoi essere "kicked" (cacciato) fuori dal canale ed
e' possibile anche che tu venga "banned" (esiliato) cioe' impedito a
rientrare. D'altra parte, alcuni ci sono channel operator che sono facilmente
irrascibili e possono effettuare su di te un kick o un ban senza una ragione
valida. In questi casi, o se qualcuno in canale ti sta scocciando, lascia
semplicemente quel canale, ce ne sono altri migliaia. .

>

> **Disconnesso utilizzando /list?**

>     Se vieni disconnesso mentre utilizzi il comando /list command, prova a
cambiare server, altrimenti, liste recenti dei canali sono disponibili sul WWW
all'indirizzo
<[http://www.irchelp.org/irchelp/chanlist/](/irchelp/chanlist/)>.

> **Imbarazzo e attacchi personali **

>     Se qualcuno inizia a metterti in imbarazzo o a floddarti (grandi
porzioni di testo in una sola volta), lascia il canale oppure utilizza il
comando /ignore. Per ulteriori dettagli, gli utenti [mIRC](/irchelp/mirc/)
possono consultare la pagina relativa al [flood
protection](/irchelp/mirc/flood.html), gli utenti [ircII](/irchelp/ircii/)
possono digitare [/help ignore](/irchelp/ircii/commands/IGNORE). E' una buona
idea quella di settare il proprio user mode (modalita' utente) in +i
(invisibile) per evitare messaggi indesiderati e imbarazzanti, se sei
"invisibile" generalmente solo gli utenti che sono sul tuo stesso canale
possono determinare quale nick stai attualmente utilizzando.

>

> Se qualcun altro cerca di bloccare il tuo sistema o di disconnetterti,
consulta la pagina [Denial of Service or "Nuke" Attacks](/irchelp/nuke/). Puoi
anche realizzare dei file di log registrando l'accaduto e realizzare un [log
and report abuse](/irchelp/misc/irclog.html) quando questo viola le regole del
server, che puoi consultare digitando /motd.

>

> [ Contenuti ]

* * *

## 7. Problemi con i server IRC, e scegliere un server

> A questo punto, sei pronto per "chattare" su IRC. Per la maggior parte, i
comandi elencati sopra sono sufficienti ai principianti, ma le cose possono
anche andare storte su IRC.

>

> **Net splits**

>     I [Networks](/irchelp/networks/) possono dividersi (si ha allora un "net
split"), col risultato di dividerti dagli utenti con cui stavi parlando.
Questi split di solito sono di breve durata, e molto frequenti alcuni giorni.

> **Lag**

>     Un problema molto piu' frequente e' quello del "lag" (ritardo), si ha
quando e' presente un notevole ritardo tra il momento in cui tu scrivi
qualcosa e quello in cui qualcun altro riesce a leggerlo. [Scegliere un
server](/irchelp/networks/servermap.html) vicino a te e' uno dei modi per
ridurre il lag. Il lag puo' essere misurato utilizzando il comando /ping
(consulta la sezione comandi sopra). Una volta trovato un server migliore, il
comando per cambiare server e' /server server.name.here.

> [**Lista dei server**](/irchelp/networks/)

>     Sulla maggior parte dei client, scrivendo /links si ottiene una lista
dei server presenti sul net scelto al momento. Usa questo comando con
moderazione, non piu' di due volte consecutive, o potresti essere scambiato
per un "link looking" (cioe' una persona che causa intenzionalmente
rallentamenti utilizzando inutilmente dei comandi).

> &nbsp_place_holder;

> **Ping? Pong!**

>     Utenti [mIRC](/irchelp/mirc/) : _Ping? Pong!_ nella vostra status window
significa soltanto che il server vi ha inviato un ping per assicurarsi che voi
siate ancora connessi, e il vostro client ha risposto automaticamente con un
pong. Non c'e' niente di anormale in questo.

> **Note sulla chat DCC **

>     Il comando di chat /dcc puo' essere utilizzato per stabilire una
connessione uno-a-uno che non risenta del lag e non sia interrotta dai net
split! Controlla la tua documentazione per informazioni sul corretto utilizzo.
Nella maggior parte dei client, si puo' stabilire una DCC chat scrivendo /dcc
chat nick_of_other_person. Per parlare attraverso la connessione, scrivere
/msg =nick whatever (ricorda il segno uguale = ). Con [mIRC](/irchelp/mirc/),
e' possibile inoltre iniziare una sessione di chat DCC selezionando la voce
_DCC_ e poi la voce _Chat_ dal menu presente in alto e inserendo poi il nick
della persona con cui si desidera chattare. Una nuova finestra verra' aperta
per la sessione di chat DCC.

>

> [ Contenuti ]

* * *

## 8. Aiuto piu' dettagliato

> Per altre informazioni circa gli argomenti trattati qui, cosi' come per
informazioni inerenti gli altri comandi, visita il sito web
<[http://www.irchelp.org](http://www.irchelp.org)>. Potrai trovare diversi
[help files](faq.html), come ad esempio:

>

>   * [IRC Primer](/irchelp/ircprimer.html)

>   * [FAQ (Frequently Asked Questions)](/irchelp/altircfaq.html) per il
newsgroup [alt.irc](news:alt.irc)

>   * [IRC tutorial](/irchelp/irctutorial.html)

>

> Su quel sito web potrai trovare inoltre delle informazioni avanzate relative
agli specifici client IRC, inclusi:

>

>   * [ircII client](/irchelp/ircii/) e [ircII scripts](/irchelp/script/).

>   * [Mac clients](/irchelp/mac/)

>   * [mIRC client](/irchelp/mirc/) per Windows

>

> In cerca di altri client? La migliore raccolta si client si trova nel
[Undernet FTP archive](ftp://ftp.undernet.org/pub/irc/clients/) o [Undernet
WWW archive](http://clients.undernet.org/). I client sono organizzati in
gruppi come Windows, Macintosh, DOS, Amiga, Java, etc.

>

> Il client [mIRC](/irchelp/mirc/) possiede inoltre degli eccellenti file di
help scritti da Tjerk Vonck (mirc@dds.nl). Seleziona _Ircintro.hlp_ dal menu
_Help_.

>

> [ Contenuti ]

* * *

## 9. Un ultimo avvertimento

> **Gli script ****IRC **sono dei set di comandi che il tuo client _puo'
eseguire_. Ci sono in circolazione dei buoni script che pero' sono stati
modificati in maniera che una volta caricati, possono seriamente compromettere
la sicurezza del tuo sistema (qualcuno potrebbe impadronirsi del tuo account,
cancellare tutti i tuoi file, leggere la tua posta, ecc.).Ci sono anche dei
loschi personaggi che cercano di spedire virus e altre cose simili.Proprio
come nella vita reale, non accettare nulla da uno sconosciuto. Si sono
verificati molte volte incidenti di questo tipo, non solo pochi casi. **Non
utilizzare mai** uno script sino a che non sei sicuro di quale sia lo scopo di
ogni singola linea, anche se a dartelo e' un tuo amico, il tuo amico puo' non
essere in grado di accorgersi di un "trojans" (cavallo di troia) ben nascosto
nello script.

>

> **Automatic DCC get** (una delle opzioni DCC) e' davvero una cattiva idea!
Quando questa opzione e' settata, sei suscettibile a pericoli che vanno dalla
semplice disconnessione dal server fino a cedere ad un altro il controllo del
tuo computer. Non poche persone sono incorse in seri problemi proprio a causa
del settaggio di questa opzione.

>

> [ Contenuti ]

* * *

Special thanks to FreeSoft, prysm, hershey, turtle, Ariell, and other #irchelp
helpers on EFnet for their many helpful suggestions.

Adesso che hai letto questa guida per principianti, vai su IRC e divertiti!
Oppure se sei interessato a imparare dell'altro, dai un'occhiata ai documenti
presenti sulla [#IRChelp home page](http://www.irchelp.org/).

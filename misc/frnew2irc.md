---
title: The IRC Prelude
author: Michel-Ange Camhi (LeMac)
layout: default
datecreated: 3 May 1998
dateupdated: 3 May 1998
license: irchelp
redirect_from: /irchelp/frnew2irc.html
---
# Une introduction à IRC

<span class="small">Par David Caraballo (DC-itsme) et Joseph bas (Jolo)
version 1,1,2, mise à jour 12/19/97  
Revu et corrigé par Michel-Ange Camhi (LeMac), 03/05/98</span>

La version initiale de cette page est disponible sur :
<http://www.irchelp.org/faq/new2irc.html>

{% include new2irc_translations.md %}

<span id="contents"></span>

## Sommaire

1.  [Qu'est-ce qu'IRC, et comment ca marche?](#what)
2.  [Quelques détails](#detail)
3.  [Comment discuter, et les principales commandes](#talking)
4.  [Où aller](#where)
5.  [Les smileys et le jargon d'irc](#smiley)
6.  [Quelques conseils](#advice)
7.  [Comment choisir son serveur](#server)
8.  [Une aide plus détaillée](#help)
9.  [Avertissement](#warning)


## 1\. Qu'est-ce qu'IRC, et comment ca marche?
{:#what}

IRC (Internet Relay Chat) fournit un moyen de communiquer en temps
réel avec des personnes dans le monde entier. Sous cette appellation
sont regroupés divers [réseaux](/networks/) (ou "nets") de
serveurs d'IRC, les machines qui permettent aux utilisateurs de se
relier à IRC. Les plus grands réseaux sont
[EFnet](http://www.efnet.org/) (le réseau initial d'IRC, comptant
souvent plus de 35.000 personnes simultanément connectées),
[Undernet](http://www.undernet.org/),
[IRCnet](https://www.ircnet.com/), [DALnet](http://www.dal.net/), et
[Libera.Chat](https://libera.chat/).

D'une façon générale, l'utilisateur (vous) exécute un programme
(appelé un "client") pour se relier à un serveur sur un des [réseaux
d'IRC](/networks/). Le serveur relaie l'information à et
d'autres serveurs sur le même réseau.  
Clients recommandés:

  - UNIX/shell: [ircII](/clients/unix/ircii/)
  - Windows: [mIRC](/clients/windows/mirc/) ou
    [PIRCH](http://webarchive.loc.gov/all/20020914162855/http://www.pirchat.com/) ou Visual
    IRC
  - [Macintosh](/clients/mac/):
    [Ircle](/clients/mac/ircle_setup.html)

Lisez bien l'aide qui accompagne votre client\!

Une fois relié à un serveur d'IRC sur un réseau, vous rejoindrez
habituellement un ou plusieurs canaux ou "channels" et converserez
avec d'autres utilisateurs comme vous à l'intérieur de ces canaux. Sur
EFnet, il y a souvent plus de 12.000 [canaux](/chanlist/),
chacun consacré à un sujet différent. Les conversations peuvent être
publiques (lorsque chacun dans un canal peut voir ce que vous tapez)
ou privées (messages entre seulement deux personnes, qui peuvent ou
non être sur le même canal). IRC n'est pas un "jeu", et nous vous
recommandons fortement de traiter les personnes que vous rencontrez
sur l'IRC avec la même courtoisie que si vous parliez directement (ou
au téléphone) avec la personne, le contraire entra”nant parfois des
conséquences graves.

<span class="small">\[ [Sommaire](#contents) \]</span>

## 2\. Quelques détails
{:#detail}

Les noms de canaux commencent habituellement par un \#, comme dans
\#irchelp. Les canaux sont communs à tous les serveurs d'IRC d'un même
réseau, c'est pourquoi vous n'êtes pas obligés d'etre sur le même
serveur IRC que vos amis. (Il y a également des canaux avec des noms
commençant par un & au lieu de \#. Ces canaux ne sont pas partagés par
tous les serveurs sur le réseau mais existent localement sur ce
serveur seulement.)

Chaque utilisateur est connu sur l'IRC par un pseudo ou "nickname" ou
(plus souvent) "nick", comme smartgal ou FunGuy. Pour éviter des
conflits avec d'autres utilisateurs, le mieux est d'employer un "nick"
qui n'est pas trop courant, par exemple, "John" est un mauvais choix .
Sur certains réseaux, les nicks  
n'appartiennent pas à n'importe qui, ni les canaux. Ceci peut mener à
des conflits, aussi, si vous avez un fort sentiment de propriété pour
de telles choses, vous préférerez peut-etre des réseaux avec des
"services" comme Undernet, DALnet, ou d'autres 
[réseaux plus petits](/networks/).

Les canaux sont tenus par des opérateurs de canal, ou plus simplement
"ops", qui contrôlent le canal en choisissant qui peut le rejoindre
(en "bannissant" certains utilisateurs), qui doit partir (en les
jetant hors du channel, c'est ce qu'on appelle le "kick"), et même
éventuellement qui peut parler (en rendant le canal "modéré")\! Les
ops du channel ont le contrôle complet de leur canal, et leurs
décisions sont ultimes. Si vous êtes banni d'un canal, envoyez un
/msg à un op du canal et demandez gentiment d'être réadmis (cf. la
commande /who dans la section suivante pour apprendre à trouver des
ops). S'ils vous ignorent ou si /who ne donne aucune réponse parce que
le canal est en mode secret (+s), allez juste autre part (sur un autre
canal) où vous serez plus le bienvenu.

Les [serveurs IRC](/ircd/) sont dirigés par des
[administrateurs IRC](/ircd/ircopguide.html) et régis par des
opérateurs IRC, ou "opers". Les opers contrôlent les serveurs
eux-mêmes et, sur EFnet et beaucoup d'autres réseaux, ne s'impliquent
pas dans des conflits personnels, de canaux, ils ne restaurent pas les
ops perdus, etc... Ce ne sont PAS des flics, des "IRC cops".

<span class="small">\[ [Sommaire](#contents) \]</span>

## 3\. Comment discuter, et les principales commandes
{:#talking}

Les commandes et le texte sont introduits au même endroit, au moyen du
clavier . Par défaut, les commandes commencent par le caractère /. Si
vous avez un client graphique tel que [mIRC](/clients/windows/mirc/) pour
Windows, on peut exécuter beaucoup de commandes en cliquant sur des
icônes avec la souris. Il est, cependant, fortement recommandé que
vous apprenez d'abord à saisir au clavier les commandes de base d'IRC.
Quand vous saisissez des commandes, attachez une attention
particulière aux espaces et à la capitalisation (majuscules,
minuscules). Les commandes de base sont communes à tous les bons
clients.

Quelques exemples sont donnés ci-dessous. Dans ces exemples, supposez
que votre "nick" est "yournick", et que vous êtes sur le canal
\#coolness.

Votre ami "MaryN" est sur \#coolness avec vous, et votre ami "Tomm"
est sur IRC mais n'est pas sur un canal avec vous. Vous pouvez
appliquer ces exemples en général en substituant les noms appropriés
de nick ou de canal.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Ce que vous tapez<br />
</th>
<th>Ce qui se produit</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>/join #coolness<br />
</td>
<td>Vous rejoignez le canal #coolness.</td>
</tr>
<tr class="even">
<td>/who #coolness<br />
</td>
<td>Donne certaines informations sur les utilisateurs qui sont dans le canal.<br />
@ = operateur de canal ("op"), * = operateur IRC ("oper")</td>
</tr>
<tr class="odd">
<td>bonjour à tous<br />
</td>
<td>Tous ceux qui sont sur #coolness voient <em>&lt;yournick&gt; bonjour à tous</em>. (vous n'avez pas besoin de saisir votre propre nick.)</td>
</tr>
<tr class="even">
<td>/me est un lapin rose<br />
</td>
<td>Tous ceux qui sont sur #coolness voient <em>* yournick est un lapin rose</em></td>
</tr>
<tr class="odd">
<td>/leave #coolness<br />
</td>
<td>Vous quittez le canal #coolness.</td>
</tr>
<tr class="even">
<td>/whois Tomm<br />
</td>
<td>Vous obtenez certaines informations sur Tomm ou sur le nick que vous avez tapé.</td>
</tr>
<tr class="odd">
<td>/whois yournick<br />
</td>
<td>Ce sontt les informations que les autres voient sur vous.</td>
</tr>
<tr class="even">
<td>/nick newnick<br />
</td>
<td>Change votre nick en "newnick"</td>
</tr>
<tr class="odd">
<td>/msg Tomm salut!<br />
</td>
<td>Tomm est le seul à voir votre message (vous n'avez pas besoin d'être sur le même canal pour que ceci marche).</td>
</tr>
<tr class="even">
<td>/ping #coolness<br />
</td>
<td>Ceci vous indique le délai (aller-retour) qui vous sépare de tout le monde sur #coolness (le temps que mettent les informations pour aller de vous aux utilisateurs de #coolness et pour vous revenir).</td>
</tr>
<tr class="odd">
<td>/ping Tomm<br />
</td>
<td>Ceci vous indique le délai qui vous sépare de Tomm.</td>
</tr>
<tr class="even">
<td>/dcc chat MaryN<br />
</td>
<td>Ceci envoie à MaryN une demande de session de conversation DCC. MaryN tape /dcc chat yournick pour établir la connexion. La conversation par DCC est plus rapide (sans "lag") et un peu plus sécurisée que par /msg.</td>
</tr>
<tr class="odd">
<td>/msg =MaryN bonjour!<br />
</td>
<td>Une fois qu'une connexion DCC a été établie, utilisez le format de message /msg =nick message pour échanger des messages (remarquez le signe =). Le DCC ne passe pas par les serveurs, ainsi votre conversation n'est pas affectée par les retards éventuels du serveur, les "splits" (bris du réseau), etc...</td>
</tr>
<tr class="even">
<td>/help<br />
</td>
<td>Ceci fonctionne dans beaucoup de clients. Essayez-le!</td>
</tr>
<tr class="odd">
<td>/quit bonne nuit!<br />
</td>
<td>Vous quittez IRC complètement, avec le message de départ vu par tous: `*** Signoff: yournick (bonne nuit!)`.</td>
</tr>
</tbody>
</table>

NOTE: Quand vous n'êtes pas dans un canal, les lignes ne commençant
pas par / n'ont aucun effet, et beaucoup de commandes fonctionnent
différemment ou pas du tout.

<span class="small">\[ [Sommaire](#contents) \]</span>


## 4\. Où aller
{:#where}

Vous pouvez apprendre beaucoup en joignant un canal, en vous
contentant simplement d'écouter ou en parlant un moment. Pour les
nouveaux venus, essayez ces canaux: \#new2irc, \#newuser, \#newbies,
or \#chatback \[ou le channel francophone \#france\]. Les canaux
suivants constituent des solutions de rechange plus fréquentées :
\#chat, et \#ircbar.

Pour obtenir de l'aide en ligne sur [mIRC](/clients/windows/mirc/), essayez
[\#new2mirc](https://www.mirc.co.uk/install.html) ou
[\#mirchelp](https://www.mirc.co.uk/help.html). Pour des
questions générales sur IRC, essayez \#irchelp.

Pour former votre propre canal avec le nom \#mychannel (si \#mychannel
n'existe pas déjà), tapez /join \#mychannel. Le canal est créé et vous
en êtes automatiquement opérateur ("op").

<span class="small">\[ [Sommaire](#contents) \]</span>

## 5\. Les smileys et le jargon d'irc
{:#smiley}

:-) est un visage de smiley, penchez votre tête vers la gauche pour le
voir. De même, :-( est un froncement, ;-) est un clin d'oeil, :\~\~(
pleure, alors que:-P est quelqu'un qui tire la langue. :-P \~\~ est en
train de baver, (-: sourit... à l'envers\! etc... . Il y a des
centaines de ces smileys.

Voici quelques acronymes communs utilisés dans l'IRC:

Anglais:

brb = be right back (je reviens tout de suite)  
bbiaf = be back in a flash (je reviens dans un instant)  
bbl = be back later (je reviens plus tard)  
TTFN = ta ta for now (suffit pour maintenant)  
np = no problem (pas de problème)  
IMHO = in my humble opinion (à mon humble avis)  
lol = laugh out loud (mort de rire)  
j/k = just a joke (c'etait juste une blague)  
re = salut de nouveau  
wb = welcome back (re)  
wtf = what the f--k (hein? quoi?)  
RTFM = read the f--king manual (lisez le manuel avant de poser des
questions)  
rotfl = roll on the floor laughing (écroulé de rire)  

<span class="small">\[ [Sommaire](#contents) \]</span>

## 6\. Quelques conseils
{:#advice}

  - **Etiquette**  
    Taper au clavier tout en majuscules, COMME CECI, est considéré
    crier et devrait être évité. De même, ne vous répétez pas, n'
    "inondez" pas le canal avec beaucoup de lignes de texte à la fois.
    Utilisez la terminologie correcte, par exemple, "canal" ou
    "channel", et non pas "room" ou "pièce", et "nick", pas "handle".
    
    Quand vous etes dans un canal, suivez l'exemple des ops de ce
    canal. Si vous les contrariez, vous pouvez vous faire "kicker"
    (être expulser du channel) du canal de force et être "banni"
    (interdiction de revenir) du canal. D'autre part, quelques ops de
    canal ont soif de puissance et peuvent vous kicker ou vous bannir
    sans raison. Si cela se produit, ou si quelqu'un sur un canal vous
    tracasse, quittez simplement le canal (/leave \#lecanal) -- il y
    en a des milliers de d'autres.

  - **Déconnecté après un /list?**  
    Si vous vous retrouvez déconnecté quand vous utilisez la commande
    de /list, essayez de changer de serveur, choisissez-en un proche,
    ou bien consultez les listes récentes de canaux, disponibles sur
    le Web à
    \<[http://www.irchelp.org/chanlist/](/chanlist/)\>.

  - **Harcèlement et attaques**  
    Si quelqu'un vous harcèle ou vous "floode" (vous noie de
    messages), quittez le canal ou utilisez la commande /ignore. Pour
    plus de détails, les utilistateurs de [mIRC](/clients/windows/mirc/)
    peuvent consulter notre page de 
	[protection anti-flood](/clients/windows/mirc/flood.html), les utilisateurs
    d'[ircII](/clients/unix/ircii/) peuvent taper 
	[/help ignore](/clients/unix/ircii/commands/irciihelp/ignore.html). Il est judicieux de
    régler votre mode d'utilisateur à +i (invisible) pour éviter les
    messages non sollicités et le harcèlement-- si vous êtes dans ce
    mode, seuls les utilisateurs qui sont sur le même canal que
    peuvent déterminer quel nick vous utilisez.
    
    Si quelqu'un vous déconnecte ou vous fait planter, consultez notre
    page sur les [Dénis de Service ou "Nukes"](/nuke/). Vous
    pouvez également 
	[enregistrer et reporter l'abus](/security/irclog.html) quand il viole les règles de
    votre serveur, règles que vous pouvez lire en tapant /motd.

<span class="small">\[ [Sommaire](#contents) \]</span>

## 7\. Comment choisir son serveur
{:#server}

Vous êtes maintenant prêt à "chatter" (converser) sur IRC. Les
commandes ci-dessus devraient en gros suffire pour des débutants, mais
les choses peuvent parfois tourner mal sur IRC.

  - **Les "net splits"**  
    Les [réseaux](/networks/) peuvent se diviser à un moment
    donné, séparant le réseau en deux sous-réseaux distincts, ce qui
    vous sépare d'une partie des utilisateurs avec lesquels vous
    parliez. C'est ce qu'on appelle un "net split". Ces "splits" sont
    souvent relativement courts, quoique fréquents certains jours, en
    cas de problèmes réseau.
  - **Le "lag"**  
    Un problème très fréquent sur IRC est ce qu'on appelle le "lag"
    (retard), lorsqu'il y a un retard apparent entre le moment où vous
    saisissez quelque chose au clavier et le moment où quelqu'un
    d'autre le lit. 
	[Choisir un serveur](/networks/servermap.html) proche de vous est un
    bon moyen de diminuer le "lag" . Le retard peut être mesuré par
    l'utilisation de la commande /ping (voir la section 3. ci-dessus).
    Une fois que vous trouvez un bon serveur, la commande pour changer
    de serveur est /server le.nom.du.serveur .
  - **[Listes de serveurs](/networks/)**  
    Sur la plupart des clients, taper /links donne une liste de
    serveurs sur votre réseau courant. Utilisez cette commande avec
    parcimonie, pas plus que deux fois de suite, ou vous pourriez être
    confondu avec un fauteur de trouble ("link looker").
  - **Ping? Pong\!**  
    Utilisateurs de [mIRC](/clients/windows/mirc/): Ping? Pong\! dans la
    fenêtre Status signifie juste que votre serveur vous a "pingé"
    afin de s'assurer que vous étiez encore reliés, et votre client a
    automatiquement répondu avec un pong. Ne vous inquiétez pas de
    cela.
  - **Rappel sur les conversations DCC**  
    La commande /DCC chat peut être employée pour établir une
    connexion point-à-point qui évite le "lag" et ne sera pas
    interrompue par un "net split"\! Consultez la documentation de
    votre client pour vérifier l'utilisation de cette commande. Dans
    la plupart des clients, vous pouvez installer une connexion DCC
    chat lorsque les deux parties tapent /DCC chat
    nick\_de\_l\_autre\_personne. Pour parler via cette connexion,
    tapez /msg =nick votre message (remarquez bien le signe =). Dans
    [mIRC](/clients/windows/mirc/), vous pouvez également commencer une
    session DCC chat en sélectionnant le menu DCC et l'item Chat dans
    la barre de menu, puis en entrant le nick de l'utilisateur avec
    qui vous souhaitez converser. Une fenêtre s'ouvre alors pour cette
    session.

<span class="small">\[ [Sommaire](#contents) \]</span>

## 8\. Une aide plus détaillée
{:#help}

Pour de plus amples informations sur ces sujets, ou sur d'autres
commandes, visitez le site Web  
<http://www.irchelp.org/>. Là vous pourrez
trouver beaucoup de [fichiers d'aide](/faq/), tels que:

  - [IRC Primer](/faq/ircprimer.html) \[en anglais\]
  - [FAQ IRC (Questions fréquemment posées)](/faq/altircfaq.html)
    d'après le newsgroup [alt.irc](news:alt.irc) sur USENET \[en
    anglais\]
  - [IRC tutorial](/faq/irctutorial.html) \[en anglais\]

Sur ce site Web vous trouverez également des informations plus
avançées sur les clients IRC spécifiques, dont:

  - [client ircII](/clients/unix/ircii/) et les [scripts pour ircII](/script/).
  - [clients Macintosh](/clients/mac/)
  - [client mIRC](/clients/windows/mirc/) pour Windows

Le client [mIRC](/clients/windows/mirc/) contient également d'excellents
fichiers d'aide intégrés par Tjerk Vonck (mirc@dds.nl). Choisissez
Ircintro.hlp à partir du menu d'aide.

<span class="small">\[ [Sommaire](#contents) \]</span>

## 9\. Avertissement
{:#warning}

**Les scripts IRC** sont des ensembles de commandes que votre client
*exécutera*. Beaucoup de scripts bien par ailleurs ont été hackés de
sorte que si vous les chargez, vous puissiez sérieusement compromettre
votre sécurité (quelqu'un peut entrer dans votre compte ou sur votre
ordinateur, effacer tous vos fichiers, lire votre courrier, etc.). En
outre, vous rencontrerez peut-être des fauteurs de trouble qui
essayent d'envoyer des virus et d'autres choses dangereuses aux
utilisateurs d'IRC . Exactement comme dans la vie réelle, n'acceptez
rien d'un étranger. Il y a eu beaucoup d'incidents de ce type, pas
simplement quelques uns. N'exécutez pas jamais un script à moins que
vous sachiez ce que chaque ligne fait, pas même si il vous est donné
par un ami, car votre ami peut ne pas avoir l'expertise nécessaire
pour détecter les "chevaux de Troie" cachés et insidieux.

**Le DCC Get automatique** est une très mauvaise idée \! Une fois que
vous validez cette option, vous êtes potentiellement sujet à des
dangers allant de la déconnexion de votre serveur jusqu'à céder à
quelqu'un d'autre contrôle de votre ordinateur. Un certain nombre de
gens ont rencontré de sérieux problèmes en raison de la configuration
de l'obtention automatique de fichiers par DCC (DCC autoget).

<span class="small">\[ [Sommaire](#contents) \]</span>

-----

Merci à FreeSoft, à prysm, à hershey, à tortue (turtle), à Ariell,et aux
autres ops d'\#irchelp sur EFnet pour leurs nombreuses et utiles
suggestions.

Maintenant que vous avez lu ce guide pour le débutant, venez sur l'IRC
et appréciez\! Si vous souhaitez en apprendre plus, consultez les
nombreux documents sur la <http://www.irchelp.org/>.


---
title: "CHANFIX : Réparation De la Manche D'EFnet"
author: random-irchelper
datecreated: 28 March 2003
status: historical
layout: default
---
# CHANFIX : Réparation De la Manche D'EFnet

par Jolo, tiggergrm et beaucoup d'autres

Version originale à 
<http://www.irchelp.org/ircd/chanfix/>

mars mis à jour 28, 2003

CHANFIX est un service sur EFnet qui peut reconstituer des ops "aux ops
réguliers" d'un canal stable. CHANFIX n'est pas identique que le chanserv ou
d'autres tels services d'enregistrement, où le fondateur de canal possède le
canal pour toujours. Au lieu de cela, CHANFIX surveille constamment le réseau
entier et maintient une base de données de points combien de fois des ops
tenus chaque par personne dans chaque canal. Les ops et le canal tous les deux
doivent qualifier selon certaines règles, comme décrit dans les sections
postérieures. Les ops réguliers sont ceux qui qualifient et ont jugé des ops
plus selon la base de données de points pendant les dernières deux semaines.
Si vous qualifiez, plus vous tenez des ops plus souvent, le plus haut vos
points. Si un canal perd des ops, volonté de CHANFIX automatiquement re-op
tous ops réguliers de qualification. CHANFIX emploie les points pour
déterminer qui obtient des ops automatiquement ; nous ne pouvons pas
arbitrairement donner ou emporter des ops à quiconque. CHANFIX est un dernier
recours ; il n'existe pas pour votre convenance ou ne remplace pas le bon
commonsense et la gestion de canal appropriée. Vous si course immobile votre
canal correctement, comme exiger la vérification _d'username@hostname_ _et_
de mot de passe avant d'accorder des ops. Personnes opping manuellement, même
ceux que vous pensez que vous savez, êtes une recette pour le désastre.

Ce guide présentera CHANFIX et vous indiquera comment obtenir l'aide de lui.
Cette page est présentée sous forme de questions le plus fréquemment posées au
dessus. Veuillez rechercher votre situation particulière et lisez la réponse,
de cette façon que vous pouvez comprendre de ce que nous parlons quand nous
vous parlons sur # CHANFIX.

Comprenez svp, nous n'a pas cassé votre canal, il n'est pas notre défaut,
ainsi n'exhalent pas votre anéantissement sur nous. Nous sommes des
volontaires justes qui essayent d'aider, satisfaisons ainsi nous traitons avec
la courtoisie et le respect.

  * [1. Comment est-ce que je m'inscris à CHANFIX ou le déclenche pour travailler ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23register)
  * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23opless)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23register)[2. Est-ce que ma Manche opless, comment j'est obtiens des ops arrières ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23opless)
    * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23qualify)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23opless)[2A. Conditions pour CHANFIX au reop un canal opless](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23qualify)
    * [2B. Pourquoi pas reop de CHANFIX mon canal opless ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23sol)
    * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23justopme)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23sol)[2C. Pourquoi ne pouvez-vous pas op juste je ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23justopme)
  * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23onefriend)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23justopme)[3. Nous avons toujours des ops est-ce que mais elles tout est tourne au ralenti, peut vous op j'à la place ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23onefriend)
  * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23manual)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23onefriend)[4. Mon canal a été assuré, aide svp ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23manual)
  * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23score)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23manual)[5. Comment CHANFIX garde-t-il des points ?](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23score)
  * [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23more)[](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23score)[6. Plus D'Information](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fircd%2Fchanfix.html%23more)

## 1. Comment est-ce que je m'inscris à CHANFIX ou le déclenche pour travailler ?

Vous n'enregistrez pas votre canal avec CHANFIX. Vous le besoin juste de
s'assurer qu'il rencontre certaine qualification conditionne. CHANFIX alors
maintiendra automatiquement les ops dans le canal. De même, si votre canal
qualifie et vous perdez des ops, vous n'avez pas besoin de déclencher CHANFIX,
il reop votre canal automatiquement. Voyez la prochaine question sur des
qualifications et des canaux opless.

## 2. Est-ce que ma Manche opless, comment j'est obtiens des ops arrières ?

Si vous avez perdu **TOUS LES** ops, CHANFIX reconstituera des ops
automatiquement aussi longtemps que votre canal rencontre **TOUTES LES**
conditions énumérées ci-dessous. Ce processus peut prendre quelques minutes ou
une heure ou plus, selon la façon dont régulièrement vos anciens ops de
qualification ont tenu des ops. Peuplez qui les ops de prise toute l'heure
tendent à être re-oped rapidement. Vous ne pouvez pas inviter ou le
déclenchement CHANFIX pour faire son travail. Si CHANFIX se joint et part sans
donner des ops, vous ne qualifiez pas. Lu dessus pour découvrir pourquoi.

### 2A. Conditions pour CHANFIX au reop un canal opless :

**Vous devez rencontrer TOUTES ces conditions**, aucunes exceptions. 

  1. Le canal doit avoir existé pour au moins une demi-heure. Bien que ce soit le minimum technique, veuillez être réaliste. N'importe quel canal moins que quelques jours est probablement trop nouveau pour fixer, parce que vous n'avez pas établi un ensemble stable d'ops réguliers. Créez un nouveau canal, ou la causerie juste sur un canal existant puisque vous ne pourriez pas être prêt à courir encore vos propres. 
  2. Le canal doit avoir eu au moins 4 personnes dans lui. Encore c'est un minimum technique, mais à moins que vous ayez vraiment un bon nombre de gens, il est souvent plus rapide de fixer le canal par le cycle de lui (tout le monde /part, puis recréent le canal à partir de zéro). 
  3. Vous avez anciens ops de qualification au moins 1 et de préférence 5 ou plus dans le canal en ce moment. Des qualifications sont énumérées ci-dessous. 
  4. Ces anciens ops ont eu [](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fnetworks%2Fconnectprob.html%23identd)le fonctionnement [d'identd](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fnetworks%2Fconnectprob.html%23identd), de sorte que `le surnom de /whois` **** n'ait pas montré **`un ~`** (tilde) avant leur username. Par exemple, si votre surnom est JoeBob et vous dactylographiez "/WHOIS JoeBob" sans citations, et vous voyez que "`JoeBob est `votre``identd``du ~ blah@whatever.com `" alors est cassé, et CHANFIX ne vous identifiera pas n'importe comment long vous étiez un op. 
  5. Les anciens ops étaient des ops régulièrement pendant les dernières 2 semaines. "régulier" ne doit pas être 24/7, mais il signifie qu'ils sont habituellement des op - pas simplement quelques heures tous les quelques jours. Quelque chose avant il y a 2 semaines est non pertinent parce que CHANFIX garde seulement les disques qui désirent ardemment. Il n'importe pas qui a créé le canal ou qui est censé "le posséder". 
  6. Leur hostname ou IP est "charge statique", signifiant qu'elle n'a pas changé au cours des 2 dernières semaines. (le hostname ou L'IP est le suivant d'adresse @ dans votre /whois, dans l'exemple de JoeBob ci-dessus, le hostname est "whatever.com".) Hostnames contenant certains mots-clés comme la "PPA" ou "dialup" sont toujours traités comme dynamique. Certains domaines sont toujours dynamiques, y compris bb.online.no et AOL.com. 
  7. Le surnom n'importe pas, mais le username ne doit pas avoir changé. Dans l'exemple pour JoeBob ci-dessus, l'"blah" avant @ le symbole est le username. CHANFIX emploie l'username@hostname pour dépister des points. 

Si vous rencontrez **TOUTES LES** conditions ci-dessus, récupérez juste ces
ops réguliers de qualification dans le canal. De CHANFIX de volonté reop
automatiquement les ops de marquage les plus élevés d'abord, alors il descend
la liste jusqu'à ce qu'il y ait 5 ops. Il peut laisser et rejoindre plusieurs
fois avant que ceci soit accompli, selon la façon dont haut les points sont.
De plus hauts points sont donnés des ops plus tôt.

Si vous juste ne pouvez pas rencontrer ces conditions et n'obtenez pas reoped
automatiquement, lisez la prochaine section ci-dessous.

### 2B. Pourquoi pas reop de CHANFIX mon canal opless ?

Si vous perdez **tous les** ops et CHANFIX ne joint pas votre canal
automatiquement dans un délai de 5 minutes, alors ce des moyens que votre
canal ne qualifie pas selon les conditions dans la section précédente.

Si vous perdez **tous les** ops et CHANFIX joint votre canal, si CHANFIX
continue à se joindre sans donner des ops à quiconque, il signifie que vous
avez les ops de qualification dans la base de données de points, et elle
essaye de trouver 5 personnes à op, mais personne actuellement sur le canal ne
qualifie. Restez le calme, relisez les conditions dans la section précédente,
et essayez de récupérer ces anciens ops de qualification. Par exemple si vous
avez habituellement un BOT ou un botnet tenant des ops, il peut avoir les plus
hauts points, le récupèrent dans le canal !

Si vous juste ne pouvez pas rencontrer ces conditions, comme si vous avez un
canal de new/small, ou si vous avez été opless plus de 2 semaines, alors
CHANFIX juste n'a pas un disque de votre canal, et vous êtes tout seul. Vous
devez faire un cycle le canal (clair tout le monde dehors et le remettre en
marche) pour regagner des ops. Considérez-le votre premier défi : Si vous ne
pouvez pas même contrôler le canal correctement (en gardant des ops ou en
faisant un cycle le canal) quand vous avez seulement peu de gens dans lui,
imaginez le chaos si vous aviez 50 ou 500 personnes à l'avenir. Le fait simple
est, courant des prises d'un canal d'EFnet au moins 10 personnes (pas bots)
qui qualifient selon la section précédente. Si vous n'avez pas cela, queest-ce
que le point est eu un canal de de toute façon ? Les visiteurs ne vont pas
venir à un certain petit, mal organisé canal quand il y a des milliers [de
plus grands canaux](http://babelfish.altavista.com/babelfish/urltrurl?lp=en_fr
&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fchanlist%2F) déjà. Si vous
insistez pour courir un canal de toute façon, considérez déplacer votre canal
de new/small [à un réseau](http://babelfish.altavista.com/babelfish/urltrurl?l
p=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fnetworks%2F) avec des
services d'enregistrement.

### 2C. Pourquoi ne pouvez-vous pas op juste je ?

Sur EFnet, **personne bidon juste op vous** sur tous canal, opérateurs non
égaux d'IRC ("opers") ou admins. Il n'y a aucune commande secrète. EFnet n'est
pas comme d'autres réseaux tels que DALnet où ils ont des services qui donnent
à des opers ces puissances. Pour plus d'information, voyez [pourquoi EFnet n'a
aucun service d'enregistrement](http://babelfish.altavista.com/babelfish/urltr
url?lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Firchelp%2Fnetworks%2Fnoserv.ht
ml) et [les mythes d'Opers](http://babelfish.altavista.com/babelfish/urltrurl?
lp=en_fr&url=http%3A%2F%2Fwww.irchelp.org%2Fircd%2Fopermyth.html).

## 3. Nous avons toujours des ops est-ce que mais elles tout est tourne au ralenti, peut vous op j'à la place ?

Aussi longtemps qu'au moins un op régulier (on tenant de hauts points) est
opped dans le canal, là n'est que rien CHANFIX peut faire. Vous devez le
travailler dehors avec cette personne. Il n'importe pas s'il est à vide
pendant des semaines ou ne veut pas partager des ops, vous devrait avoir pensé
à cela avant de lui donner des ops en premier lieu. CHANFIX est un dernier
recours seulement quand vous perdez TOUS LES ops ou obtenez succédé par des
étrangers. EFnet n'a pas des services comme le chanserv pour votre convenance.
En tant qu'ops chan, feignez juste là n'est aucun CHANFIX, et apprend à courir
votre canal correctement, y compris l'établissement scripts to safely request
or give ops.

## 4. My channel was taken over, please help?

CHANFIX can be triggered manually to reverse a recent takeover. A takeover is
defined as when there are still ops on the channel, but they did not hold ops
before (example: you mistake a stranger for a regular and accidentally give
him ops, he then deops everybody). We do **NOT** interfere in internal op
disputes, where regular ops fight each other for control (example: there is a
disagreement about who should run the channel, so one of the regular ops
decides to deop everybody else). In other words, if somebody was one of your
top 10 most regular ops over the last 2 weeks (anything before that is
irrelevant, doesn't matter if you created the channel or if you held ops for
years), he can do anything he wants including deoping everybody else. That's
unfortunately what happens when you trust the wrong people, but neither
CHANFIX nor anybody else can help then. Please settle it yourself or start a
new channel.

If you had an actual takeover by an outsider, then you need to figure out how
they got ops (accidental op, "hacked" bot/shell, [denial of service
attack](/nuke/) that knocked everybody else
offline, etc.). Then make sure it doesn't happen again. We do not issue fixes
until you have demonstrated that you won't get taken over again right away.
You should have as many as possible of your
[qualifying](#2a-conditions-pour-chanfix-au-reop-un-canal-opless-) regular
ops online and awake, either sitting in the channel or ready to rejoin at a
moment's notice. Be ready to act to secure the channel right after the fix is
issued.

How does the fix actually work? Once we verify there is a takeover, CHANFIX
can be triggered manually. It would first de-op everybody and remove all modes
that might keep people out (+b bans, +i invite-only, +k keyword-required, +l
limit). This is when you must rejoin quickly. Then CHANFIX rejoins later and
restores ops to the regular ops as it would in an opless channel.

**To reverse a takeover, if you meet all 
[qualifying conditions](#2a-conditions-pour-chanfix-au-reop-un-canal-opless-)

for opless channels, go to EFnet #CHANFIX and tell us the name of your channel, what went wrong, what you've done to prevent a recurrence, then wait quietly for help.** We will get to you as soon as we can. 

If you don't qualify, see the 
[relevant section](#2b-pourquoi-pas-reop-de-chanfix-mon-canal-opless-) above. Good
luck, you'll need it.

## 5. How does CHANFIX keep scores?

CHANFIX keeps track on who has ops on a channel by using a score database. To
hold a score, your channel must meet all 
[qualifying conditions](#2a-conditions-pour-chanfix-au-reop-un-canal-opless-) above.
These conditions include having a minimum number regular of ops with identd
and a static hostname/IP over a minimum period of time. If you qualify, you do
not need to register or log in, and it doesn't matter if you change nicknames.
The score is kept automatically according to your username@hostname.

If you qualify, for every 5 minutes that you hold ops on a channel, your score
is increased by 1 point. The more regularly you hold ops, the higher your
score will be. The scores are kept for only the last 2 weeks. The best scores
tend to go to people (or bots) who qualify and have a 24/7 connection, and who
get ops automatically as soon as they join the channel. A stable channel
should have preferably 10 or more ops with high scores, i.e., holding ops at
least 25-50% of the time. That way even if something goes wrong, it's obvious
who are the regular ops and CHANFIX can do its job easily. Score information
is accessible by IRC operators but cannot be given to you, even if you are one
of the top 10 regular ops. This is to protect you and your channel against
possible attacks targeted against your top ops.

For a more technical discussion of how the scoring system works, see "[What
CHANFIX really is and isn't](http://www.qurve.com/efnet/chanfix/)" [ext.
link].

## 6. More Information

**Original documentation**: see the "[What CHANFIX really is and isn't](http://www.qurve.com/efnet/chanfix/)" [ext. link] guide which contains an example describing how CHANFIX really works, including details on the scoring system, and the older [original FAQ](http://services.efnet.broken.com/chanfix/chanfix-faq.html) [ext. link] which does not cover more recent developments such as the manual fix feature. 

**History**: CHANFIX (originally named JUPES) was voted upon and passed by a majority of EFnet admins in April 2001, and began operation in early July 2001. You can see the [vote proposal](https://voting.blackened.com/pastvotes/0014.shtml) [ext. link] (if your browser cannot handle https:// pages, see our [local mirror](/ircd/vote0014.html)). This proposal also contains a somewhat technical comparison to other competing channel-fixing ideas.  


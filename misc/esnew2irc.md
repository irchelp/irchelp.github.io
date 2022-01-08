---
title: The IRC Prelude
author: David Caraballo (DC-itsme) and Joseph Lo (Jolo)
layout: default
datecreated: 18 December 1997
license: irchelp
redirect_from: /irchelp/denew2irc.html
---
# Introducción al IRC

12/18/97

The original version of this page is at
<http://www.irchelp.org/faq/new2irc.html>

{% include new2irc_translations.md %}

## 1\. ¿Que es IRC, y como funciona?

IRC (Internet Relay Chat) proporciona un medio de comunicación (en
tiempo real) con personas de todo el mundo. Esta constituido por varias
redes separadas de [servidores IRC](/irchelp/networks/), estas
computadoras permiten la conexión de usuarios al IRC. La red mas grande
es [EFnet](http://www.efnet.org/) (la red originaria de IRC, muchas
veces conteniendo mas de 32.000 usuarios a la vez), seguida por
[Undernet](http://www.undernet.org/),
[IRCnet](https://www.ircnet.com/), [DALnet](http://www.dal.net/), y
[Libera.Chat](https://libera.chat/).

Por lo general, los usuarios usan un programa llamado "cliente" para
conectarse a una de las redes del IRC. Algunos de los clientes
disponibles son: [IRCII](/irchelp/ircii/) (UNIX/ Windows);
[mIRC](/irchelp/mirc/),
[PIRCH](http://webarchive.loc.gov/all/20020914162855/http://www.pirchat.com/) (Windows); IRCle
([Mac](/irchelp/mac/)). \!Asegúrese de leer la propia documentación para
su cliente\!

Cuando esta conectado a una red IRC, usted podrá entrar en uno o mas
"canales" a la vez para conversar con otras personas. En EFnet,
usualmente hay mas de 6.000 canales, aunque solo algunos serán
mencionados aquí (estos serán mas que suficiente para empezar). Las
conversaciones en IRC pueden ser publicas (en las que todas las personas
presentes en un canal pueden leer lo que escribe) o privadas (en las que
usted habla exclusivamente con solamente una persona en especifico, que
este o no en el canal suyo). IRC no es un juego, la gente con la que
trate en IRC, deberá ser tratada con la misma educación que si se
estuviera tratando con ellos en persona.

## 2\. Algunos detalles

Los nombres de los canales usualmente comienzan con el símbolo \#, como
por ejemplo \#irchelp. Los mismos canales se encuentran distribuidos
entre los servidores IRC de la red, por lo que usted no necesita estar
conectado al mismo servidor que la gente con la que quiere hablar.

Cada usuario es conocido en el IRC por un apodo (nick), como smartgal o
funguy. Lo mejor es usar un apodo que no sea muy común, para evitar
conflictos con otros usuarios. Por ejemplo, "John" es un apodo
inadecuado. En la mayoría de las redes (con la excepción de DALnet), ni
los nombres ni los canales pertenecen a ningunos. Esto puede causar
problemas, por lo que, si usted prefiere ser propietario de tales cosas,
es posible puede preferir DALnet al EFnet.

Los canales tienen moderadores (denominados operadores {participadores}
o "ops"), quienes controlan el canal, decidiendo quien puede tener
acceso (expulsando permanentemente {banning} algunos usuarios), quien
debe salir del canal (expulsando {kicking} algunos usuarios), y hasta
quien tiene derecho a hablar\! Los operadores de un canal tienen el
control completo del canal, y sus decisiones son definitivas. Si usted
es expulsado permanentemente, mándele un mensaje a un operador
pidiéndole de buena manera que le permita entrar al canal (lea la
descripción del comando /who en la próxima sección para aprender como
localizar a los operadores del canal).

Los [servidores IRC](/ircd/ircd.html) son cuidados por operadores de IRC,
o "IRC ops." Los operadores IRC administran los servidores y no se
envuelven en asuntos personal en los canales, etc. No son "policías del
IRC."

## 3\. Hablando y ejecutando comandos

Los comandos y texto son escritos desde el mismo lugar. Por obligación,
los comandos son precedidos por una /. Si usted esta usando un cliente
gráfico como mIRC, muchos de los comandos pueden ser ejecutados
clickeando iconos con el mouse. Pero sin embargo, es recomendable que
aprenda a escribir los comandos de uso frecuentes primero. Cuando
ejecute comandos, preste atención a los espacios y las puntuaciones. Los
comandos frecuentes funcionan lo mismo en casi cualquier cliente.

Sigiendo se detallan algunos ejemplos. En estos, se supone que su nick
es "sunick" y que esta conectado al canal \#coolness.

Su amiga "MaryN" esta en \#coolness y su amigo "Tomm" esta en IRC pero
no esta en el canal con usted. Usted puede usar estos ejemplos,
reemplazando los nicks y nombres de canal. Estos son unos comandos que
pueden ser de utilidad:

    Lo que usted escribe            Lo que pasa
    /join #coolness                 Entra en el canal #coolness

    /who #coolness                  Da información acerca de los usuarios
                                    en #coolness

    /ping #coolness                 Da información acerca del retraso (ida 
                                    y vuelta) entre usted y los otros
                                    usuarios en #coolness

    /me esta feliz                  Todos los usuarios ven *sunick 
                                    esta feliz

    /leave #coolness                Usted se retira del canal

    /whois Tomm o /whois MaryN      Da información acerca de ellos

    /whois sunick                   Da la información que otros ven de
                                    usted

    /nick nuevonick                 Cambia su nick a "nuevonick"

    /nick sunick                    Cambia de nuevo su nick a "sunick"

    /msg Tomm ÀQue tal?             Solo tomm ve su mensaje

    /ping Tomm                      Le da información del retraso 
                                    (ida y vuelta) entre usted y Tomm

    /help                           Este comando funciona en algunos
                                    sistemas. ¡Pruébelo!

    /quit comentario                Usted se desconecta totalmente 
                                    del IRC, dejando un comentario

NOTA: Cuando usted no se encuentra en ningún canal, usted esta en lo que
se llama el canal nulo (canal 0). En este canal líneas de texto que no
comiencen con / no tendrán ningún efecto, además, muchos comandos
trabajan de manera diferente o no funcionan del todo.

## 4\. Donde ir

Usted aprenderá mucho entrando a un canal y participando activamente en
el. Para empezar pruebes estos canales: \#new2irc, \#newuser, \#newbies,
\#chatback (canales mas frecuentados: \#chat, \#ircbar).

Para obtener ayuda con el cliente mIRC, puede probar \#new2mirc o
\#mirchelp . Para obtener ayuda con IRC en general, pruebe \#irchelp .

## 5\. Emoticones y abreviaciónes

:-) es una sonrisa (vista de lado), de la misma manera :-( es un
puchero, ;-) es un guiño de ojo, :\~\~( es una cara llorando, mientras
que :-P es una cara sacando la lengua. :-P\~\~ es babear, (-: es una
sonrisa de zurdos, etc. Existen cientos de estas caras.

A continuación se presentan algunos abreviaciónes:

brb = be right back (ya vuelvo)

bbiaf = be back in a few(vuelvo en un rato)

bbl = be back later (vuelvo mas tarde)

ttfn = ta ta for now (chao chao)

np = no problem (no hay problema)

inho = in my humble opinion (mi modesta opinion es)

lol = laughing out loud (riendo con ganas)

rotfl = rolling on the floor laughing (rondando por piso riendo)

re = hola de nuevo

wb = welcome back (bienvenido de nuevo)

j/k = joking (bromeando)

## 6\. Precauciones

ESCRIBIR SIEMPRE EN MAYUSCULAS, como asi, se considera "gritar" y debe
usarse con precaución. Es preferible usar la terminología correcta;
canal, no cuarto de discusión, y nick, no sobrenombre.

Mientras que se encuentre en un canal, siga la tendenciaobservada por
los operadores, de lo contrario puede ser expulsado y hasta expulsado
terminantemente. Por otra parte, algunos operadores están hambrientos de
poder y lo expulsaren sin razón alguna, o otros usuarios pueden
molestarlo. En este caso, simplemente vaya a otro canal, hay miles de
ellos.

Debido a que el comando /list puede fallar con frecuencia, existen
listados disponibles en [netsplit](https://netsplit.de/channels/?net=EFnet) y
[chanlist](/chanlist/) .

## 7\. Problemas con los servidores IRC, y escogiendo un servidor IRC

Usted ya esta listo para "hablar" en el IRC. Por lo común, los comandos
listados anteriormente deberían ser suficiente para empezar, pero
algunos problemas se pueden presentar.

Las redes del IRC pueden resultar "divididas" (se llama "netsplit," en
inglés), resultando entonces en una separación entre usted y personas
con las que podría estar hablando. Estas divisiones son en su mayoría
cortas, aunque a veces frecuentes.

Otro suceso comun son los "retrasos" ("lag," en ingles), en las que se
hace muy perceptible el retraso entre lo que usted escribe y el tiempo
que otros necesitan para leerlo. Seleccionar un servidor en su área es
una manera de aminorar las brechas. Estas brechas pueden ser medidas con
el comando /ping.

    /ping apodo    informa del retraso existente entre usted y el usuario
                   del apodo, /ping #canal    le da un listado de la misma
                   medición de cada persona presente en el canal.

Usuarios de mIRC: Ping? Pong\! en la ventana de status solo significa
que su servidor realizo un ping para saber si su maquina sigue
conectada, y mIRC le responde al servidor "si" con un pong.

El comando utilizado para cambiar de servidor es /server
nombredeservidor.

Con la mayoría de los clientes, se puede obtener un listado de los
servidores disponibles en su red al escribir /links.

NOTA: El comando para conversación directa (/dcc chat) puede establecer
una conversación privada que no será interrumpida por una división de
redes\! Revise su documentación de cliente para mayor información. Para
ircii ambos participantes deben escribir /dcc chat apodo para entablar
una conversación. Para usar la conexión escriba /msg =nick lo que sea.
El simbolo "=" debe ser escrito.

## 8\. Infomacion detallada

Para [mas información](/faq/) acerca de estos temas, y asi
como para listados mas específicos (listado de canales, la manera
correcta de ignorar usuarios, dar archivos de textos, etc.), refiérase a
los [FAQs](/faq/altircfaq.html) (preguntas frecuentes). También
puede revisar archivos como opguide (excelente para aprender a manejar
su propio canal) en la pagina web <http://www.irchelp.org>.

{% comment %}
Para información mas avanzada para el cliente [ircII](/irchelp/ircii/)
(por ejemplo, realizar "[scripts](/script/)"), refiérase a los
archivos irciiman.wri , numerologia de servidores y
[RFC1459](/protocol/rfc/rfc1459.txt) en la pagina mencionada anteriormente,
como también en la dirección <ftp://cs-pub.bu.edu.> Esta dirección ftp
también sirve para obtener clientes mas actuales, y algunos scripts para
IRC.
{% endcomment %}

Un buen servicio de automatizado de ayuda se encuentra disponible via el
cliente de FreeSoft; ai-, en el Efnet. Escribe /msg ai- help para
obtener un menu de opciones.

## 9\. ¡Ten cuidado\!

Scripts de IRC son una serie de comandos que su cliente ¡EJECUTARA\!.
Una gran cantidad de scripts (de origen bien intencionado) han sido
editados para que, cuando su cliente lo ejecute, cosas terribles pasen
(alguien mas tenga acceso a su cuenta, borre todos sus archivos, lea su
correo, etc). Ha habido muchos problemas, no solo algunos. NUNCA JAMAS
ejecute un script sin antes comprender el significado de cada línea, ni
siquiera lo haga si recibe el script de un amigo, ya que el a lo mejor
no tiene la experiencia para detectar un "trollano" bien escondido.

DC-itsme (carabalo@hilbert.geom.umn.edu)

CRÉDITOS: gran parte de los créditos se los merecen:

FreeSoft (Jim@SourceData.Com), Prysm, hershey (rmullen@gmx1.com), turtle
(dhansen@baltic.cis.usouthal.edu), y demás ayudantes de \#irchelp en el
EFnet, quienes con sus muchas y buenas sugestiones han ayudado
grandemente a la creación de este archivo.

Traducido al español por hershey, ophiocus (csantana@ven.net), y
Jesuseuro (europa@jet.es)

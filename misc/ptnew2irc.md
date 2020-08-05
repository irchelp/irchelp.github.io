---
title: Introdução ao IRC
author: Pedro Santos
layout: default
---
# Introdução ao IRC

Por David Caraballo
(DC-itsme) e Joseph Lo (Jolo)  
vers‹o 1.1.5, revisto em 6/1/2000  
Traduzido para Português por: 
[Pedro Santos (Dr\_Spec)](http://beam.to/dr_spec)

A versão original (inglesa) desta página está em
[irchelp](/irchelp/new2irc.html)  

{% include new2irc_translations.md %}

## Conteúdos
{:#contents}

1.  [O que é o IRC e como funciona?](#what)
2.  [Alguns Detalhes](#detail)
3.  [Falar e executar comandos](#talking)
4.  [Para onde ir](#where)
5.  [Alguns "smileys" e gíria](#smiley)
6.  [Alguns conselhos](#advice)
7.  [Escolhendo Servidor de IRC, e problemas deles](#server)
8.  [Ajuda mais detalhada](#help)
9.  [Uma palavra de Aviso](#warning)

-----

## 1\. O que é o IRC e como funciona?
{:#what}

> IRC (Internet Relay Chat) fornece um modo de comunicação em tempo real
> com pessoas de todo o mundo. Consiste em várias redes separadas
> ("[*networks*](/networks/)" ou "*nets*")
> , de Servidores de IRC, os quais permitem aos utilizadores ("*users*")
> ligarem-se ao IRC. As maiores redes são a
> [EFnet](http://www.efnet.org/) (a rede de IRC original, geralmente com
> 32.000 pessoas ligadas simultaneamente),
> [Undernet](http://www.undernet.org/),
> [IRCnet](http://www.funet.fi/~irc/), [DALnet](http://www.dal.net/), e
> [NewNet](http://www.newnet.net/).
> 
> Geralmente, o utilizador (como você) executa um programa (chamado um
> "cliente" em inglês "*client*") para se ligar a um servidor de uma das
> [redes de IRC](/networks/). O servidor
> transmuda informação entre os servidores da mesma rede. Clientes
> recomendados:
> 
>   - UNIX/shell: [ircII](/clients/unix/ircii/)
>   - Windows: [mIRC](/clients/windows/mirc/) ou
>     [PIRCH](http://www.bcpl.lib.md.us/~frappa/pirch.html)
>   - [Macintosh](/clients/mac/):
>     [Ircle](http://www.xs4all.nl/~ircle)
> 
> Não se esqueça de ler a documentação do seu cliente\!
> 
> Uma vez ligado a um servidor IRC numa rede IRC, é habitual
> juntarmo-nos a um ou mais canais ( "*channels*") para comunicar com
> outros que lá se encontram. Na [EFnet](http://www.efnet.org/),
> existem, normalmente, mais de 12,000
> [canais](/chanlist/), cada um dedicado a
> um tópico diferente. As conversações podem ser públicas (todos dentro
> do canais vêem o que escrevemos) ou privadas (mensagem entre somente
> duas pessoas, que podem ou não estar no mesmo canal). O IRC não é um
> "jogo", por isso aconselho-o vivamente a tratar as pessoas que conhece
> no IRC com a mesma cortesia como se estivesse a falar em pessoa ou ao
> telefone, caso contrário as consequências poderão ser graves.
> 
> NOTA DO TRADUTOR: a versão original deste documento foi escrita em
> inglês e baseada na rede EFnet, logo muitas das referências estão
> ligadas com esta rede e mais vocacionadas com esta língua. Em Portugal
> a rede é a [PTnet](http://www.ptnet.org), e no Brasil Brasnet.
 
\[ [Conteúdos](#contents) \]

-----

## 2\. Alguns Detalhes
{:#detail}

> Os nomes de canais são, geralmente, precedidos de um \#
> (cardinal),como por ex. \#irchelp . Todos os canais são compartilhados
> por todos os servidores da mesma rede, logo não terá de utilizar o
> mesmo servidor que os seus amigos. (Também existem canais cujos nomes
> são precedidos de um & em vez de  \#. Estes canais existem apenas
> localmente num dos servidores, não aparecendo nos outros mesmo sendo
> da mesma rede.)
> 
> Cada utilizador de IRC é conhecido por um "nick" (alcunha), como
> *smartgal* ou  *FunGuy*. Para evitar conflitos com outros
> utilizadores, o melhor é usar um *nick*  não muito como, ex., "João" é
> uma escolha pobre. Nalgumas redes, os *nicks* não pertencem a ninguém,
> o mesmo acontecendo com os canais. Isto pode criar conflitos,
> portanto, se para si a propriedade disto é uma coisa importante para
> si, deveria preferir redes com "serviços" ("*services*") como a
> [Undernet](http://www.undernet.org/), [DALnet](http://www.dal.net/),
> ou [redes mais
> pequenas](/networks/nets/). Na PTnet
> existem estes tipos de protecção. Para saber mais sobre eles
> especificamente para esta rede, visite o site
> <http://www.pthelp.org>
> 
> Os canais são coordenados por operadores ou "*ops*", que podem
> controlar o canal ao escolher quem pode entrar(já que podem "banir"
> alguns utilizadores), quem deve sair (ao chutá-los ("*kick*") fora do
> canal), e até mesmo quem pode falar (ao tornar o canal moderado
> ("*moderated*"))\! Operadores de canal têm domínio total sobre os seus
> canais, e as suas decisões são finais. Se for banido de um canal,
> envie uma /msg ao operador de canal e peça-lhe gentilmente para que o
> deixem entrar novamente (ver comando /who na próxima secção para
> aprender a localizar *ops*). Se eles o ignorarem ("*ignore* *list*")
> ou o comando /who não responde porque o canal é está em modo secreto
> (+s), então esqueça e vá a outro canal onde seja bem-vindo.
> 
> [Os servidor de IRC](/ircd/) são
> coordenados por administradores ("*IRC admins*") e [Operadores
> IRC](/ircd/ircopguide.html), ou "IRC
> ops". IRC ops administram os servidores por eles próprios e, na EFnet
> como em muitas redes, não se envolvem em disputas pessoais, roubo de
> canais ("*takeovers*"), restituição de ops perdidos, etc. Eles *não*
> são polícias de IRC ("*IRC cops*").
 
\[ [Conteúdos](#contents) \]

## 3\. Falar e executar comandos
{:#talking}

> Os comandos e o texto de conversação são escritos no mesmo local. Por
> defeito, os comandos são precedidos de uma barra / . Se tiver um
> cliente gráfico como o mIRC para Windows, muitos comandos podem ser
> executados clicando em ícones com o ponteiro de rato. Contando, é
> recomendável que aprenda os comandos básicos de IRC primeiro. Aquando
> a execução de comandos, deverá prestar atenção a eventuais espaços e
> capitalização de letras. Os comandos básicos trabalham em todos os
> bons clientes.
> 
> Em baixo poderá observar alguns exemplos. Nestes suponha que o seu
> *nick* é "yournick", e está no canal \#coolness. A sua amiga "MaryN"
> está consigo no \#coolness, e o seu amigo "Tomm" está no IRC mas não
> está em nenhum canal consigo. Os comandos podem assim ser aplicados
> mediante a substituição do *nick* ou canal em questão.
> 
> <table>
> <colgroup>
> <col style="width: 50%" />
> <col style="width: 50%" />
> </colgroup>
> <thead>
> <tr class="header">
> <th>O que escreve:<br />
> </th>
> <th>O resultado:</th>
> </tr>
> </thead>
> <tbody>
> <tr class="odd">
> <td>/join #coolness<br />
> </td>
> <td>Adere ao canal #coolness.</td>
> </tr>
> <tr class="even">
> <td>/who #coolness<br />
> </td>
> <td>Fornece informação sobre os utilizadores do canal #coolness.<br />
> @ = op de canal, enquanto * significa IRC op.</td>
> </tr>
> <tr class="odd">
> <td>Olá a todos<br />
> </td>
> <td>Todos no #coolness vêem <em>&lt;yournick&gt;</em> Olá a todos (Repare que não precisou de escrever o seu nick.)</td>
> </tr>
> <tr class="even">
> <td>/me é um coelhinho<br />
> </td>
> <td>Todos no #coolness vêem <em>* yournick</em> é um coelhinho</td>
> </tr>
> <tr class="odd">
> <td>/leave #coolness<br />
> </td>
> <td>Sai do canal #coolness</td>
> </tr>
> <tr class="even">
> <td>/whois Tomm<br />
> </td>
> <td>Obtém informação sobre Tomm ou qualquer outro <em>nick</em> entrado.</td>
> </tr>
> <tr class="odd">
> <td>/whois yournick<br />
> </td>
> <td>Obtém informação sobre si mesmo.</td>
> </tr>
> <tr class="even">
> <td>/nick newnick<br />
> </td>
> <td>Muda o seu <em>nick</em> para "newnick"</td>
> </tr>
> <tr class="odd">
> <td>/msg Tomm Olá.<br />
> </td>
> <td>Apenas o Tomm vê a mensagem "Olá" (não necessita de estar no mesmo canal que ele).</td>
> </tr>
> <tr class="even">
> <td>/ping #coolness<br />
> </td>
> <td>Informa sobre o atraso (ida e volta) entre si e todos no #coolness.</td>
> </tr>
> <tr class="odd">
> <td>/ping Tomm<br />
> </td>
> <td>Informa sobre o atraso (ida e volta) entre si e apenas Tomm.</td>
> </tr>
> <tr class="even">
> <td>/dcc chat MaryN<br />
> </td>
> <td>Envia um pedido de secção de DCC Chat a MaryN. MaryN escreve /dcc chat yournick para estabelecer a ligação. Ver info sobre DCC na alínea 7 desta introdução.</td>
> </tr>
> <tr class="odd">
> <td>/msg =MaryN Olá<br />
> </td>
> <td>Depois de estabelecida a conexão de DCC, utilize o formato /msg =nick message para enviar mensagens (repare o uso de = "igual").Ver info sobre DCC na alínea 7 desta introdução.</td>
> </tr>
> <tr class="even">
> <td>/help<br />
> </td>
> <td>Na maioria dos clientes, abre um janela com ajuda</td>
> </tr>
> <tr class="odd">
> <td>/quit Boa Noite!<br />
> </td>
> <td>Sai completamente do IRC, deixando um comentário. Os outros que estavam a ler as suas mensagens vêem "*** Signoff: yournick (Boa Noite!)".</td>
> </tr>
> </tbody>
> </table>
> 
> **NOTE:** Quando não está num canal nomeado, linhas não começadas por
> / não têm qualquer efeito, e muitos outros comandos trabalham de modo
> diferente ou simplesmente deixam de trabalhar.
 
\[ [Conteúdos](#contents) \]



## 4\. Para onde ir
{:#where}

> Pode apreender muito ao aderir a um canal e simplesmente ouvir e falar
> um pouco. Para começar, experimente os canais: \#new2irc, \#newuser,
> \#newbies, ou \#chatback. Alternativas mais movimentadas incluem:
> \#chat, e \#ircbar.
> 
> Para ajuda sobre o cliente
> [mIRC](/clients/windows/mirc/), adira ao
> [\#new2mirc](http://www.mirc.co.uk/chat/n2mircef.chat) ou
> [\#mirchelp](http://www.mirc.co.uk/chat/mircheef.chat). Para ajuda
> sobre IRC em geral, adira ao \#irchelp. Na PTnet o canal de ajuda é o
> \#pthelp.
> 
> Para formar o seu próprio canal com o nome \#meucanal (if \#meucanal
> ainda não existe), escreva /join \#meucanal. O canal é criado e é-lhe
> atribuído op automaticamente.
 
\[ [Conteúdos](#contents) \]


## 5\. Alguns "smileys" e gíria
{:#smiley}

> :-) é uma cara sorridente ("*smiley*"), vire a sua cabeça para a
> esquerda para o ver. Da mesma maneira, :-( é um tristonho, ;-) uma
> piscadela de olho  :\~\~( é chorar, enquanto que :-P é alguém com a
> língua de fora. :-P \~\~ é está a babar-se. (-: um smile esquerdino,
> etc. Existem centenas destas caras.
> 
> Abreviaturas mais utilizadas no IRC:
> 
> lol =  laughing out loud  (rindo muito)  
> rotfl = rolling on the floor laughing (rebolando no chão a rir)  
> dd tc= donde teclas? (onde estás agora?)  
> thx=thanks (obrigado)
> 
>     Apenas em Inglês (não muito usual na PTnet):
>     brb =  be right back                     bbiaf = be back in a flash
>     bbl =  be back later                     ttfn = ta ta for now
>     np  =  no problem                        imho = in my humble opinion
>     re  =  hi again, as in 're hi'           wb = welcome back
>     wtf =  what the f--k                     rtfm = read the f--king manual
>     j/k = just kidding
 
\[ [Conteúdos](#contents) \]


## 6\. Alguns conselhos
{:#advice}

>   - **Etiqueta**  
>     Escrevendo em maiúsculas, COMO ASSIM, é considerado gritar logo
>     deve ser evitado. Da mesma forma, não deve repetir-se ou inundar
>     ("*flood*") o canal com muitas linhas de texto de uma só vez.
>     Tenha em atenção a terminologia utilizada, ex., "canal"
>     ("*channel*") não é uma "sala de conversação" ("*chat room*"), tal
>     como "*nick*", não é "título".
>     
>     Enquanto num canal, deve seguir o sentido da conversa que está a
>     decorrer coordenada pelo ops. Se antagonizar com eles, será
>     provavelmente kickado ou até banido. No entanto, alguns operadores
>     de canal são sedentos de poder e podem kická-lo ou bani-lo sem
>     razão aparente. Se isto acontecer, ou se alguém estiver a
>     chatea-lo, simplesmente saia do canal -- existem muitos outros
>     onde será bem acolhido\!\!
>        
>   - **Desconectado ao utilizar o comando /list?**  
>     Se for desconectado ao utilizar o comando /list, tente trocar de
>     servidor ou então adquirir uma lista de canais WWW disponível em
>     [chanlist](/chanlist/).
> 
>   - **Ataques e Abusos**  
>     Se alguém começar a chateá-lo ou a inundá-lo com coisas obsoletas,
>     simplesmente saia do canal ou use o comando /ignore para ignorar a
>     pessoa. Para mais detalhes, utilizadores do
>     [mIRC](/clients/windows/mirc/) a nossa pagina de
>     [Protecção contra
>     Flood](/clients/windows/mirc/flood.html),
>     utilizadores do [ircII](/clients/unix/ircii/)
>     escrevam o comando 
>     [/help ignore](/clients/unix/ircii/commands/irciihelp/ignore.html). 
>     é aconselhável colocar o seu nick em modo +i (invisível) para evitar
>     mensagens não solicitadas e outros abusos -- se estiver
>     "invisível"  geralmente apenas os utilizadores que estão consigo
>     no mesmo canal, conseguem determinar o seu nick.
>     
>     Se alguém estiver a desconectá-lo ou fazer o seu cliente bloquear
>     ("crashar"), veja a nossa página de [Ataques de Denial of Service
>     ou "Nuke"](/nuke/). Pode também
>     [registar e informar o
>     abuso](/security/irclog.html) quando
>     alguém viola as regras do servidor, que podem ser lidas escrevendo
>     /motd.
 
\[ [Conteúdos](#contents) \]


## 7\. Escolhendo Servidor de IRC, e problemas deles
{:#server}

> Neste momento está pronto para "chat" no IRC. Para principiantes os
> comandos acima descritos são suficientes, mas várias coisas podem
> correr mal no IRC.
> 
>   - **Net splits**  
>     As [redes dos
>     Servidores](/networks/) podem ficar
>     divididas (ao que se chama de "net split"), separando-o dos outros
>     utilizadores doutros servidores (passa a poder falar apenas com os
>     utilizadores que estavam ligados ao mesmo servidor. Estes "splits"
>     são normalmente curtos, embora possam levar vários dias a serem
>     corrigidos.
>   - **Lag**  
>     Um problema mais frequente é o "lag", isto é, o tempo que demora
>     desde que escreveu alguma coisa até que os outros a vejam.
>     [Escolher um
>     servidor](/networks/servermap.html)
>     mais perto do si ou pertencente ao seu ISP (servidor de Internet)
>     é uma maneira de tentar diminuir o "lag". O "Lag" pode ser medido
>     pelo comando /ping (ver secção de comandos acima). Uma vez
>     encontrado um servidor melhor, o comando para mudar de servidor é
>     /server endereço\_do\_servidor.
>   - **[Listagens de
>     Servidores](/networks/)**  
>     Na maioria dos clientes, escrevendo /links obtem-se a lista de
>     servidores ligados à rede em que está. Use este comando
>     esporadicamente, nunca mais de duas vezes seguidas, ou pode ser
>     visto como um causador de problemas na rede e sofrer represálias
>     por isso.
>   - **Ping? Pong\!**  
>     Utilizadores do [mIRC](/clients/windows/mirc/) :
>     *Ping? Pong\!* na janela de Status significa apenas que o seu
>     servidor "pingou-o" para verificar se ainda estava conectado, e o
>     seu cliente devolvem um "pong" a confirmar. Não é nada de
>     preocupante antes pelo contrário.
>   - **Informação sobre DCC chat**  
>     O DCC não passa pelos servidores, assim não é afectado pelo "lag",
>     "net splits", etc.
>     DCC chat  é mais rápido (livre de "lag") e mais seguro que /msg.
>     O comando /dcc chat pode ser utilizado para estabelecer um ligação
>     de um-para-um. Na maioria dos clientes, isto pode ser obtido pelo
>     comando /dcc chat nick\_da outra\_pessoa. Veja o manual do seu
>     para saber. Para falar através dessa ligação, escreva /msg =nick
>     o\_que\_quer\_dizer (repare no sinal de igual (=) antes do nick da
>     pessoa). No [mIRC](/clients/windows/mirc/), pode
>     também estabelecer um ligação deste tipo clicando no menu DCC /
>     Chat, e escrevendo depois o nick da pessoa com quem deseja falar.
>     Surge uma janela específica para esta ligação que é utilizada para
>     comunicar através dela.
 
\[ [Conteúdos](#contents) \]


## 8\. Ajuda mais detalhada
{:#help}

> Para mais informações, tal como sobre outros comandos, visite o site
> <http://www.irchelp.org/>. Aqui poderá encontrar muitos [ficheiros
> de ajuda](/faq/), tal como:
> 
>   - [IRC Primer](/faq/ircprimer.html)
>   - [FAQ (Perguntas
>     Frequentes)](/faq/altircfaq.html) para o
>     newsgroup [alt.irc](news:alt.irc)
>   - [Tutorial I](/faq/irctutorial.html)
> 
> Nesse website, encontrará também informação específica para cada
> cliente de IRC, incluindo:
> 
>   - [cliente ircII](/clients/unix/ircii/) e [scripts
>     i](/script/)
>   - [clientes Mac](/clients/mac/)
>   - [cliente mIRC](/clients/windows/mirc/) para Windows
> 
> Procurando outros clientes? Uma boa fonte de clientes é o [Arquivo de
> FTP
> U](ftp://ftp.undernet.org/pub/irc/clients/)[ndernet](ftp://ftp.undernet.org/pub/irc/clients/)
> ou [Arquivo WWW da Undernet](http://clients.undernet.org/). Os
> clientes estão organizados em grupos como Windows, Macintosh, DOS,
> Amiga, Java, etc.
> 
> O cliente [mIRC](/clients/windows/mirc/) tem também
> incorporados, excelentes ficheiros de ajuda escritos por Tjerk Vonck
> (mirc@dds.nl). Seleccione *Ircintro.hlp* no menu *Help*.
 
\[ [Conteúdos](#contents) \]


## 9\. Uma palavra de Aviso
{:#warning}

> **Scripts de IRC** são conjuntos de comandos que o seu cliente
> *executará*. Muitos scripts benignos foram modificados de modo que
> quando os correr, a sua segurança pode correr sérios riscos (alguém
> pode aceder à sua conta, eliminar os seu ficheiros, ler o seu e-mail,
> etc.). Existem também almas penadas que tentam enviar virus e outras
> coisas más. Tal como na vida real, não aceite coisas de estranhos. Não
> foram poucos os que já tiveram problemas por aceitar ficheiros de
> desconhecidos. **Nunca corra** um script a menos que saiba o que faz
> cada linha do script, nem mesmo se lhe foi dado por um amigo, pois o
> seu amigo pode não ser capaz de detectar "cavalos de Tróia" bem
> escondidos.
> 
> **Aceitação de DCC Automática** é muito má ideia\! Uma vez ligada,
> fica susceptivel de perigos desde ser desligado do seu servidor até
> dar a alguém o controlo do seu computador. Várias pessoas já foram
> incomodadas por terem o DCC aceitando automaticamente.
 
[ [Conteúdos](#contents) \]


Agradecimentos especiais a FreeSoft, prysm, hershey, turtle, Ariell, e
outros ajudantes do \#irchelp na EFnet pelas suas boas sugestões.

Agora que já leu o guia de principiante, está pronto a divertir-se no
IRC\! Ou se estiver interessado em aprender mais, veja os muitos
documentos na [Homepage do \#IRChelp](http://www.irchelp.org/).


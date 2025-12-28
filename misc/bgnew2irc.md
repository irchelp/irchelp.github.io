---
title: The IRC Prelude
author: David Caraballo (DC-itsme) and Joseph Lo (Jolo)
layout: default
datecreated: 6 January 2000
license: irchelp
redirect_from: /irchelp/bgnew2irc.html
---
<span lang="BG" style="mso-ansi-language: BG"> Встъпление в</span>
<span lang="EN-US" style="mso-ansi-language:EN-US"> IRC</span>

<span style="font-size:10.0pt">от David Caraballo (DC-itsme) </span>
<span lang="BG" style="font-size:10.0pt;mso-ansi-language:BG">и</span>
<span style="font-size: 10.0pt"> Joseph Lo (Jolo)  
версия 1.1.5,
</span><span lang="BG" style="font-size:10.0pt;mso-ansi-language:
BG">последни промени от</span><span style="font-size:10.0pt"> 6/1/2000  
преведена от Станислав Захариев(sofit)</span>

<span lang="BG" style="mso-ansi-language: BG">
Оргиналът на този сайт може да бъде намерен на тази страница
</span>
<http://www.irchelp.org/irchelp/new2irc.html>  

{% include new2irc_translations.md %}


<span id="contents"></span>

## <span lang="BG" style="mso-ansi-language:BG">Съдържание</span>

1.  [<span lang="BG" style="mso-ansi-language:BG">Какво е IRC и как работи</span>](#what)
2.  [<span lang="BG" style="mso-ansi-language:BG">Малко подробности</span>](#detail)
3.  [<span lang="BG" style="mso-ansi-language:BG">Команди за говорене и влизане</span>](#talking)
4.  [<span lang="BG" style="mso-ansi-language:BG">Къде да отида</span>](#where)
5.  [<span lang="BG" style="mso-ansi-language:BG">Някои усмивки и жаргон</span>](#smiley)
6.  [<span lang="BG" style="mso-ansi-language:BG">Някои съвети</span>](#advice)
7.  [<span lang="BG" style="mso-ansi-language:BG">Проблеми с
    </span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
    </span><span lang="BG" style="mso-ansi-language: BG">сърверите и избиране на
    </span><span lang="EN-US" style="mso-ansi-language: EN-US">IRC server</span>](#server)
8.  [<span lang="BG" style="mso-ansi-language:BG">По-подробна помощ</span>](#help)
9.  [<span lang="BG" style="mso-ansi-language:BG">Няколко предупредителни думи</span>](#warning)


<span id="what"></span>

## 1\. <span lang="BG" style="mso-ansi-language:BG">Какво е</span><span lang="EN-US" style="mso-ansi-language:EN-US"> IRC</span><span lang="BG" style="mso-ansi-language:BG"> и как работи?</span>

IRC (<span lang="EN-US" style="mso-ansi-language:EN-US">Internet Relay
Chat или по кратко казано чат</span>)
<span lang="BG" style="mso-ansi-language:BG">осигурява начин за
комуникиране в реално време със хората по целия свят. То се
състои от различни [мрежи](/networks/) от
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:BG">сървери, машини,
които позволяват на потребителя да се ìвлезеî
</span><span lang="EN-US" style="mso-ansi-language:EN-US">в IRC.
</span><span lang="BG" style="mso-ansi-language:BG">Най-големите мрежи
са
</span><span lang="EN-US" style="mso-ansi-language:EN-US">[EFnet](http://www.efnet.org/)
(</span><span lang="BG" style="mso-ansi-language:BG">Първоначалната
мрежа, обикновенно има над 32,000 потребителя едновременно),
</span>[Undernet](http://www.undernet.org/),
[IRCnet](https://www.ircnet.com/),
[DALnet](http://www.dal.net/),<span lang="BG" style="mso-ansi-language:BG">
</span>[Libera.Chat](https://libera.chat/) и нека да не забравяме първата
българска IRC мрежа - [UniBG](irc://irc.unibg.net).

<span lang="BG" style="mso-ansi-language:BG">Обикновено, потребителят
(като теб) пускат програма (наречена ìклиентî), за да се свърже със
сървера от неговата
</span><span lang="EN-US" style="mso-ansi-language:EN-US">[IRC
<span lang="BG" style="mso-ansi-language:BG">мрежа</span>](/networks/)</span><span lang="BG" style="mso-ansi-language:BG">.
Сървера препредава информацията към и от другите сървери от същата
мрежа. Препоръчителни клиенти:</span>

 * UNIX/shell: [ircII](/clients/unix/ircii/)

 * Windows: [mIRC](/clients/windows/mirc/) или
[PIRCH](http://webarchive.loc.gov/all/20020914162855/http://www.pirchat.com/)

 * [Macintosh](/clients/mac/):
[Ircle](/clients/mac/ircle_setup.html)

<span lang="BG" style="mso-ansi-language:BG">Прочети документацията за
своя клиент.</span>

<span lang="BG" style="mso-ansi-language:BG">Един път щом си се вързал
към </span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:BG">сървера на някоя
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:
BG">мрежа</span>,<span lang="BG" style="mso-ansi-language:BG"> ти ще
можеш да ìвлезешî в един или повече ìканалиî(така наречените ìстаиî)
и да разговаряш с много други потребители. На
</span>[UniBG](irc://irc.unibg.net),
<span lang="BG" style="mso-ansi-language:BG">обикновенно има повече от
3000
</span>[<span lang="BG" style="mso-ansi-language:BG">канал</span><span style="mso-ansi-language: BG" lang="BG">a</span>](/chanlist/),
<span lang="BG" style="mso-ansi-language:
BG">всеки един посветен с различна ìтемаî. Разговорът може да е публичен
(където всеки от канала може да види какво пишеш) или личен (съобщения
само между двама човека, които може да не са в един и същи
канал)</span>. IRC
<span lang="EN-US" style="mso-ansi-language:EN-US">не е
</span><span lang="BG" style="mso-ansi-language:BG">ì</span><span lang="EN-US" style="mso-ansi-language:
EN-US">играî</span><span lang="BG" style="mso-ansi-language:BG">, много
силно препоръчвам да се отнасяте към хората, които срещнете в
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC, със
същата
учтивост</span><span lang="BG" style="mso-ansi-language:BG">,</span><span lang="EN-US" style="mso-ansi-language:
EN-US"> с която </span><span lang="BG" style="mso-ansi-language:BG">се
отнасяте когато говорите по телефона, или може да има сериозни
последствие.</span>

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


<span id="detail"></span>

## 2\. <span lang="BG" style="mso-ansi-language:BG">Малко подробности</span>

<span lang="BG" style="mso-ansi-language:
BG">Имената на каналите обикновенно започват със \#, както
\#</span><span lang="EN-US" style="mso-ansi-language:EN-US">irchelp</span><span lang="BG" style="mso-ansi-language:BG">.
Същите канали са достъпни от всички
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:BG">сървери на същата
мрежа, така че няма нужда да си на сървера на своя приятел. (Има също
и канали започващи със &, а не със \#. Тези канали не са достъпни от
всички сървери на мрежата и съществуват локално на самиа
сървер.)</span>

<span lang="BG" style="mso-ansi-language:BG">Всеки потребител е познат в
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC</span><span lang="BG" style="mso-ansi-language:BG">
с псевдоним, като
</span>*<span lang="EN-US" style="mso-ansi-language:EN-US">smash3r
</span>*<span lang="BG" style="mso-ansi-language:BG">или
</span>*<span lang="EN-US" style="mso-ansi-language:
EN-US">kratuna.</span>*<span lang="EN-US" style="mso-ansi-language:EN-US">
</span><span lang="BG" style="mso-ansi-language:BG">За да избегнете
конфликти с другите потребители, най-добре е да използвате
псевдоним, който е простичък, например
ì</span><span lang="EN-US" style="mso-ansi-language:EN-US">john</span><span lang="BG" style="mso-ansi-language:BG">î
е оскъден избор. На някои мрежи псевдонимите не пренадлежът на никого,
нито и каналите. Това може да доведе до конфликт, така че,
ако<span style="mso-spacerun: yes"> </span>се чувствате силно
привързан към ìпритежателносттаî на подобни неща, ще
предпочетете мрежи със
ì</span><span lang="EN-US" style="mso-ansi-language:EN-US">servicesî</span><span lang="BG" style="mso-ansi-language:BG">
като [UniBG](irc://irc.unibg.net),
</span>[Undernet](http://www.undernet.org/),
[DALnet](http://www.dal.net/), <span lang="BG" style="mso-ansi-language:
BG">или други
</span>[<span lang="BG" style="mso-ansi-language:BG">по-малки
мрежи</span>](/networks/).

<span lang="BG" style="mso-ansi-language:BG">Каналите се държат от
оператори, които могат да контролират каналите като избират кой
може да влезе (като ìбанватî някои потребители), кой трябва да
напусне (като ги ìкикнеî от канала), и дори кой може да говори
(като сложи
ì</span><span lang="EN-US" style="mso-ansi-language:EN-US">moderatedî
</span><span lang="BG" style="mso-ansi-language:BG">на канала)\!
Операторите в канала имат пълен контрол над тяхната стая, и
тяхното решение е заключително. Ако сте банати от канала, пратете
/</span><span lang="EN-US" style="mso-ansi-language:EN-US">msg
</span><span lang="BG" style="mso-ansi-language:BG">към оператор в
канала и приятно го питайте дали можете да бъдете ìпуснатî обратно
вътре (вижте командата
</span><span lang="EN-US" style="mso-ansi-language:EN-US">/who
</span><span lang="BG" style="mso-ansi-language:
BG">във следващия раздел, за да разберете как да откриете оператори).
Ако те са Ви игнорирали или
</span><span lang="EN-US" style="mso-ansi-language:EN-US">/who</span><span lang="BG" style="mso-ansi-language:BG">
не дава никакъв отговор, защото канала е таен
(+</span><span lang="EN-US" style="mso-ansi-language:EN-US">s)</span><span lang="BG" style="mso-ansi-language:BG">,
отидете някъде другаде, където сте повере приветстван.</span>

[IRC
<span lang="BG" style="mso-ansi-language:BG">сърверите</span>](/ircd/)<span lang="BG" style="mso-ansi-language:BG">
са държът от
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:
BG">админи и от </span>[IRC
<span lang="BG" style="mso-ansi-language:BG">оператори</span>](/ircd/ircopguide.html)<span lang="BG" style="mso-ansi-language:BG">.
</span><span lang="EN-US" style="mso-ansi-language:
EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:BG">операторите
управляват самия сървер, на
</span><span style="mso-ansi-language: EN-US" lang="EN-US">UniBG</span><span lang="BG" style="mso-ansi-language:BG">
и на много други мрежи, не се включват в лични спорове, тайковъри на
канали, възстановяване на загубени опове, и т.н. Те не са
ì</span><span lang="EN-US" style="mso-ansi-language:
EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:BG">ченгета.î</span>

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


<span id="talking"></span>

## 3\. <span lang="BG" style="mso-ansi-language:BG">Команди за говорене и влизане</span>

<span lang="BG" style="mso-ansi-language:
BG">Командите и текстът се пишат в на едно и също поле. По подразбиране,
командите започват с / .Ако имате графичен клиент какъвто е
</span>[mIRC](/clients/windows/mirc/)<span lang="BG" style="mso-ansi-language:BG">
за </span><span lang="EN-US" style="mso-ansi-language:
EN-US">Windows</span><span lang="BG" style="mso-ansi-language:BG">,
повечето команди могат да бъдат изпълнени като цъкнете върху
иконите със показалеца на мишката. Както и да е, много силно е
препоръчано първо да научите основните
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC
</span><span lang="BG" style="mso-ansi-language:BG">команди. Когато
пишете командите, обръщайте внимание на мястото между командите и
главните букви.Основните команди работят на всички добри
клиенти.</span>

<span lang="BG" style="mso-ansi-language:BG">Някои примери са дадени по
долу. В тези команди, се предполага, че прякора ви е
ì</span><span lang="EN-US" style="mso-ansi-language:
EN-US">yournickî</span> и че сте в
<span lang="BG" style="mso-ansi-language:BG">канал</span> с име
\#<span lang="EN-US" style="mso-ansi-language:EN-US">coolness</span><span lang="BG" style="mso-ansi-language:BG">.</span>

Т<span lang="BG" style="mso-ansi-language:BG">воят приятел
</span><span lang="EN-US" style="mso-ansi-language:EN-US">ìKoNaN</span><span lang="BG" style="mso-ansi-language:
BG">î е в
\#</span><span lang="EN-US" style="mso-ansi-language:EN-US">coolness</span><span lang="BG" style="mso-ansi-language:BG">
с теб, и приятелката ти
</span><span lang="EN-US" style="mso-ansi-language:EN-US">ìThrill</span><span lang="BG" style="mso-ansi-language:BG">î
е в </span><span lang="EN-US" style="mso-ansi-language:
EN-US">IRC, </span><span lang="BG" style="mso-ansi-language:BG">но не е
в канала с теб. Можете да пробвате тези примери общо взето като
замените съответнияте имена на псевдонима или канала.</span>

<div data-align="center">

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong><span lang="BG" style="mso-ansi-language:BG">Когато напишеш</span></strong></p></td>
<td><p><strong><span lang="BG" style="mso-ansi-language:BG">Какво става </span></strong></p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/join #coolness</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Влизаш в канала </span><span lang="EN-US" style="mso-ansi-language:EN-US">#coolness.</span></p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/who #coolness</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Дава информация за потребителите в канала.</span></p>
<p>@ = <span lang="BG" style="mso-ansi-language:BG">оператор в канала</span>, <span lang="BG" style="mso-ansi-language:BG">докато</span> * <span lang="BG" style="mso-ansi-language:BG">означава </span>IRC <span lang="BG" style="mso-ansi-language:BG">оператор</span>.</p></td>
</tr>
<tr class="even">
<td><p><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">Здравейте всички</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Всички в #</span>coolness <span lang="BG" style="mso-ansi-language:BG">виждат </span><em>&lt;yournick&gt; <span lang="BG" style="mso-ansi-language:BG">Здравейте всички</span></em> (<span lang="BG" style="mso-ansi-language:BG">Няма нужда да си пишете собствения псевдонима-а</span>.)</p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/me </span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">е розов заек</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Всички в </span>#coolness <span lang="BG" style="mso-ansi-language:BG">виждат </span><em>* yournick <span lang="BG" style="mso-ansi-language:BG">е розов заек</span></em></p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/leave #coolness</span></p></td>
<td><p>Излизаш от <span lang="BG" style="mso-ansi-language:BG">канала</span>.</p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/whois Thrill</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Получаваш информациа за </span><span lang="EN-US" style="mso-ansi-language:EN-US">T</span><span lang="BG" style="mso-ansi-language:BG">hrill или за какъвто псевдоним напишете</span>.</p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/whois yournick</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Това е информация, която другите потребители сте видят за теб. </span></p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/nick newnick</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Сменяте си псевдонима а на </span>"<span lang="EN-US" style="mso-ansi-language:EN-US">n</span>ewnick"</p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/msg Thrill </span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">Здравей</span><span style="color:#5511CC">.</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Само </span>Thrill <span lang="BG" style="mso-ansi-language:BG">вижда твоето съобщение </span>(<span lang="BG" style="mso-ansi-language:BG">няма нужда да сте в един канала за да работи това</span>).</p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/ping #coolness</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Дава информация за забавянето(отиване и връщане) между теб и всеки в </span>#coolness.</p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/ping Thrill</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Дава информация за забавянето(отиване и връщане) само между теб и</span> Thrill</p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/dcc chat KoNaN</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Това праща мобла към </span>KoNaN <span lang="BG" style="mso-ansi-language:BG">за </span><span lang="EN-US" style="mso-ansi-language:EN-US">DCC</span><span lang="BG" style="mso-ansi-language:BG"> чат сесия</span>. KoNaN <span lang="BG" style="mso-ansi-language:BG">пише </span><span style="color:#5511CC">/dcc chat yournick</span> <span lang="BG" style="mso-ansi-language:BG">за да завърши връзката</span>. DCC <span lang="BG" style="mso-ansi-language:BG">чатът е по-бърз(без лаг) и по сигурен от </span><span lang="EN-US" style="mso-ansi-language:
  EN-US">/msg</span><span lang="BG" style="mso-ansi-language:BG">.</span></p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/msg =KoNaN </span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">Здравей</span><span style="color:#5511CC">!</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Веднъж щом </span>DCC <span lang="BG" style="mso-ansi-language:BG">връзката е установена, използвайте </span><span style="color:#5511CC">/msg =nick </span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">съобщениа</span><span lang="BG" style="mso-ansi-language:BG"> за да обменяте съобщения </span>(<span lang="BG" style="mso-ansi-language:BG">забележка: знакът </span>=<span lang="BG" style="mso-ansi-language:BG">)</span>. DCC <span lang="BG" style="mso-ansi-language:
  BG">не минава през сърверите, и заради това не е под въздействие на лаг на сървера, сплит на мрежата и т.н.</span></p></td>
</tr>
<tr class="odd">
<td><p><span style="color:#5511CC">/help</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Това работи при повечето клиенти. Пробвайте го!</span></p></td>
</tr>
<tr class="even">
<td><p><span style="color:#5511CC">/quit </span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">Лека нощ</span><span style="color:#5511CC">!</span></p></td>
<td><p><span lang="BG" style="mso-ansi-language:BG">Излизате напълно от </span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC</span>, <span lang="BG" style="mso-ansi-language:BG">с коментара при излизане, който другите виждат</span> "*** Signoff: yournick (<span lang="BG" style="mso-ansi-language:BG">Лека нощ</span>!)".</p></td>
</tr>
</tbody>
</table>

</div>

**Бележка:** <span lang="BG" style="mso-ansi-language:BG">Когато не сте
в канал линиите не започващи с / нямат ефект, и много други определени
команди не работят или успяват да
</span>проработят<span lang="BG" style="mso-ansi-language:BG">.</span>

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


<span id="where"></span>

## 4\. <span lang="BG" style="mso-ansi-language:BG">Къде да отида</span>

<span lang="BG" style="mso-ansi-language:
BG">Можете да научите много, когато влезете в канала и само стоите
ìслушатеî или говорите временно с някой. За начинаещи следните
канали са препоръчителни:
\#</span><span lang="EN-US" style="mso-ansi-language:EN-US">irchelp,
\#help, \#beginner, \#newuser, \#new2irc, \#newbies,
</span><span lang="BG" style="mso-ansi-language:BG">или</span><span lang="EN-US" style="mso-ansi-language:EN-US">
\#chatback.
</span><span lang="BG" style="mso-ansi-language:BG">По-натоварени
алтернативи са:
\#</span><span lang="EN-US" style="mso-ansi-language:EN-US">bulgaria i
\#salata.</span>

<span lang="BG" style="mso-ansi-language:BG">За помощ свързана с
</span>[mIRC](/clients/windows/mirc/)
<span lang="BG" style="mso-ansi-language:BG">клиент</span>,
<span lang="BG" style="mso-ansi-language:
BG">пробвайте да влезете в
</span>[\#new2mirc](https://www.mirc.co.uk/install.html)
<span lang="BG" style="mso-ansi-language:BG">или
</span>[\#mirchelp](https://www.mirc.co.uk/help.html).
<span lang="BG" style="mso-ansi-language:BG">За помощ главно свързана с
</span>IRC <span lang="BG" style="mso-ansi-language:BG">въпроси, влезте
в</span> \#irchelp.

<span lang="BG" style="mso-ansi-language:BG">За да създадете канал с име
\#</span><span lang="EN-US" style="mso-ansi-language:EN-US">mychannel
(</span><span lang="BG" style="mso-ansi-language:BG">ако
</span><span lang="EN-US" style="mso-ansi-language:
EN-US">\#mychannel
</span><span lang="BG" style="mso-ansi-language:BG">все още не
съществува), напишете </span><span style="color:#5511CC">/join
\#mychannel</span>. <span lang="BG" style="mso-ansi-language:BG">Каналът
е създаден и автоматично сте направен оператор.</span>

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


<span id="smiley"></span>

## 5\. <span lang="BG" style="mso-ansi-language:BG">Някои усмивки и жаргон</span>

<span style="color:#5511CC">:-)</span>
<span lang="BG" style="mso-ansi-language:BG">е усмихващо се лице</span>,
<span lang="BG" style="mso-ansi-language:BG">наклонете си главата на
ляво за да го видите</span>.
<span lang="BG" style="mso-ansi-language:BG">По същия начин е и</span>,
<span style="color:#5511CC">:-(</span>
<span lang="BG" style="mso-ansi-language:
BG">- намръщено лице</span>. <span style="color:#5511CC">;-)</span>
<span lang="BG" style="mso-ansi-language:BG">е намигващо</span>.
<span style="color:#5511CC">:\~\~(</span>
<span lang="BG" style="mso-ansi-language:BG">е плачещо</span>,
<span lang="BG" style="mso-ansi-language:BG">докато
</span><span style="color:#5511CC">:-P</span>
<span lang="BG" style="mso-ansi-language:BG">е когато някой се
плези</span>. <span style="color:#5511CC">:-P \~\~</span>
<span lang="BG" style="mso-ansi-language:BG">е когато някой се лигави
или дрънка глупости</span>. <span style="color:#5511CC">(-:</span> е
<span lang="BG" style="mso-ansi-language:BG">левичарска усмивка</span>,
<span lang="BG" style="mso-ansi-language:BG">и т.н. Има стотици от тези
личица</span>.

<span lang="BG" style="mso-ansi-language:BG">Ето няколко думи,
образувани от началната буква на други думи, които се
използват в </span><span lang="EN-US" style="mso-ansi-language:
EN-US">IRC</span>:

    brb =  be right back(след малко се връщам)

    bbl =  be back later(по-късно ще се върна)

    np  =  no problem(няма проблем)

    lol =  laughing out loud(смея се на висок глас) 

    re  =  hi again, as in 're hi'(здравей отново, като в 're здравей')

    wtf =  what the fó-k(какво по дяволите...)

    rotfl = rolling on the floor laughing(търкалям се по пода смейки се)

    bbiaf = be back in a flash(връщам се след миг)

    ttfn = ta ta for now(ta ta за сега)

    imho = in my humble opinion(от моето скромно мнение)

    j/k = just kidding(само се майтапя)

    wb = welcome back(добре дошъл отново)

    rtfm = read the f--king manual(прочети ш**н*то ръководство)

<span style="mso-spacerun: yes; font-size: 10.0pt; mso-ansi-language: BG" lang="BG"> </span><span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


<span id="advice"></span>

## 6\. Някои съвети

**Етикет**

<span lang="BG" style="mso-ansi-language:BG">Пишейки само с големи
букви(чрез
</span><span lang="EN-US" style="mso-ansi-language:EN-US">caps-lock)</span><span lang="BG" style="mso-ansi-language:BG">,
КАТО ТОВА, се счита за викане и трябва да се избягва. Също така, не се
повтаряйте или в противен случай ìфлудитеî канала с много линии от
текст наведнъж. Поправете си терминологията, например ìканалî, не
ìчат стаяî.</span>

<span lang="BG" style="mso-ansi-language:BG">Докато сте в канала,
следвайте ръководството на оператора в канала. Ако им
противоречите, може да бъдете ìритнатî от канала насилствено
и може би ìбанатиî. От друга страна повечето оператори в канала са
гладни за власт и могат да ви ритнат или банат за неоснователна
причина. Ако това се случи, или някой от канала Ви притеснява, просто
напуснете канала ñ има хиляди други канали.</span>

**<span lang="BG" style="mso-ansi-language:BG">Изключен при използване
на командата</span> /list?**

<span lang="BG" style="mso-ansi-language:BG">Ако бъдете изключен при
използване на командата</span> /list, пробвайте
<span lang="BG" style="mso-ansi-language:BG">да смените сърверите,
неотдавашен лист на каналите е достъпен на </span>WWW
[chanlist](/chanlist/).

**<span lang="BG" style="mso-ansi-language:BG">Тормозене и
атаки</span>**

<span lang="BG" style="mso-ansi-language:BG">Ако някой започне да Ви
тормози или флооди, напуснете канала или използвайте командата
</span><span lang="EN-US" style="mso-ansi-language:EN-US">/ignore</span><span lang="BG" style="mso-ansi-language:
BG">. За повече подробности потребителите, които използват
</span>[mIRC](/clients/windows/mirc/)<span lang="BG" style="mso-ansi-language:BG">,
вижте страницата </span>[flood
<span lang="BG" style="mso-ansi-language:BG">предпазване</span>](/clients/windows/mirc/flood.html)<span lang="BG" style="mso-ansi-language:BG">,
потребителите, които
</span><span lang="BG" style="color:black;mso-ansi-language:BG">оволн</span><span lang="BG" style="mso-ansi-language:BG">използват
</span>[ircII](/clients/unix/ircii/)<span lang="BG" style="mso-ansi-language:BG">,
напишете </span><span style="color:#5511CC">[/help
ignore](/clients/unix/ircii/commands/irciihelp/ignore.html)</span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">.
</span><span lang="BG" style="color:black;mso-ansi-language:BG">Добра
идея е
да</span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">
</span><span lang="BG" style="color:black;mso-ansi-language:BG">си
сложите
+</span><span lang="EN-US" style="color:black;mso-ansi-language:EN-US">i
</span><span lang="BG" style="color:black;mso-ansi-language:BG">(невидим)
за да избегнете лошите съобщение и тормоза ñ ако сте ìневидимî главно
потребителите, които са с вас в един канал, ще могат да определят с
какъв псевдоним сте.</span>

<span lang="BG" style="mso-ansi-language:BG">Ако някой друг Ви изключва
или ви ìразбиваî връзката, вижте страницата </span>[Denial of Service
or "Nuke"
Attacks](/nuke/)<span lang="BG" style="mso-ansi-language:BG">.</span><span lang="BG" style="mso-ansi-language:BG">
Правилата на сървера можете да прочете когато напишете
</span><span lang="EN-US" style="mso-ansi-language:EN-US">/motd.</span>

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>

<span id="server"></span>

## 7\. <span lang="BG" style="mso-ansi-language:BG">Проблеми с </span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC</span><span lang="BG" style="mso-ansi-language: BG"> сърверите и избиране на </span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC </span><span lang="BG" style="mso-ansi-language:BG">сървер.</span>

<span lang="BG" style="mso-ansi-language:BG">В момента Вие сте готови за
ìчатенеî в
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC.</span><span lang="BG" style="mso-ansi-language:BG">В
повечето случаи командите по-горе трябва да стигнат за начинаещ, но
нещата може да отидат на зле в
</span><span lang="EN-US" style="mso-ansi-language:EN-US">IRC.</span>

**<span lang="BG" style="mso-ansi-language:BG">Разделяне на
мрежата</span>**

[<span lang="BG" style="mso-ansi-language:BG">Мрежите</span>](/networks/)
<span lang="BG" style="mso-ansi-language:
BG">могат да се разделят
</span><span lang="EN-US" style="mso-ansi-language:EN-US">(net
split)</span><span lang="BG" style="mso-ansi-language:BG">, по такъв
начин разделяйки ви с потребителите, с които говорите. Тези
прекъсвания на връзките обикновенно са относително кратки, но
понякога чести.</span>

**<span lang="BG" style="mso-ansi-language:BG">Забавяне</span>**

По често срещат проблем е
забавянето,<span lang="BG" style="mso-ansi-language:BG">
където има забележимо забавяне между времето когато ти напишеш
нещо и между времето когато друг го прочете.
</span>[<span lang="BG" style="mso-ansi-language:BG">Избиране на
сървер</span>](/networks/servermap.html)<span lang="BG" style="mso-ansi-language:BG">
близко до теб е един начин да се опиташ да се оттървеш от забавянето.
Забавянето може да де определи чрез командата
</span><span lang="EN-US" style="mso-ansi-language:EN-US">/ping</span><span lang="BG" style="mso-ansi-language:BG">
(виж раздела команди по-горе). Веднъж щом намерите по-добър сървер,
командата за сменяне на сървера е
</span><span lang="EN-US" style="mso-ansi-language:EN-US">/server
imeto.na.servera.tuk</span><span lang="BG" style="mso-ansi-language:BG">.</span>

**[<span lang="BG" style="mso-ansi-language:BG">Списък на
сърверите</span>](/networks/)**

<span lang="BG" style="mso-ansi-language:BG">На повечето клиенти, когато
напишете
</span><span style="color:#5511CC">/links</span><span style="color:black">,
</span><span lang="BG" style="color:black;mso-ansi-language:BG">се
показва списък със сърверите на мрежата. Изполвайте командите
умерено, не повече от един-два пъти в една подред, или може да ви
сбъркат с
ì</span><span lang="EN-US" style="color:black;mso-ansi-language:EN-US">link</span><span lang="BG" style="color:black;mso-ansi-language:BG">
търсачî, който прави проблеми.</span>

**Ping? Pong\!**

<span lang="BG" style="mso-ansi-language:BG">Потребители на
</span>[mIRC](/clients/windows/mirc/): *Ping? Pong\!*
<span lang="BG" style="mso-ansi-language:BG">в прозорчето
ì</span><span lang="EN-US" style="mso-ansi-language:EN-US">statusî</span><span lang="BG" style="mso-ansi-language:
BG"> означава, че сърверът, на който сте, Ви е
</span><span lang="EN-US" style="mso-ansi-language:EN-US">ìпингналî</span><span lang="BG" style="mso-ansi-language:
BG">, за да провери дали все още сте свързани. Вашият клиент автоматично
отговаря с ìпонгî. Не се тревожете за тези неща.</span>

**<span lang="BG" style="mso-ansi-language:BG">Напомняне за
</span><span lang="EN-US" style="mso-ansi-language:EN-US">DCC
</span><span lang="BG" style="mso-ansi-language:BG">чата</span>**

<span lang="BG" style="mso-ansi-language:BG">Командата </span>/dcc chat
<span lang="BG" style="mso-ansi-language:BG">може да бъде използвана за
установяване на клиент-клиент връзка, за да се избегне забавянето и
няма да бъде прекъсната от разделяне на мрежата\! Провере вашата
документацията, за да видите как се използва тази команда. В
повечето клиенти, можете да отворите
</span><span lang="EN-US" style="mso-ansi-language:EN-US">DCC
</span><span lang="BG" style="mso-ansi-language:BG">чат връзка, когато
напишете
/</span><span lang="EN-US" style="mso-ansi-language:EN-US">dcc chat
<span style="color:#5511CC">nicka</span></span><span style="color:#5511CC">\_s\_koito\_iskate\_da\_napravite\_dcc</span><span lang="BG" style="mso-ansi-language:BG">.</span><span lang="BG" style="mso-ansi-language:
EN-US"> </span><span lang="BG" style="mso-ansi-language:BG">За да
говорите през тази връзка, напишете
</span><span style="color:#5511CC">/msg =nick
</span><span lang="BG" style="color:#5511CC;mso-ansi-language:BG">каквото
и да е</span> (<span lang="BG" style="mso-ansi-language:BG">забележете
знака </span>=<span lang="BG" style="mso-ansi-language:BG">)</span>.
<span lang="BG" style="mso-ansi-language:
BG">В </span>[mIRC](/clients/windows/mirc/),
<span lang="BG" style="mso-ansi-language:BG">можете да започнете
</span><span lang="EN-US" style="mso-ansi-language:EN-US">DCC
</span><span lang="BG" style="mso-ansi-language:BG">чат сесия като
натиснете на
</span>*<span lang="EN-US" style="mso-ansi-language:EN-US">DCC</span>*<span lang="EN-US" style="mso-ansi-language:EN-US">
</span>и после <span lang="BG" style="mso-ansi-language:
BG">на
</span>*<span lang="EN-US" style="mso-ansi-language:EN-US">Chat</span><span lang="EN-US" style="mso-ansi-language:BG">
</span>*<span lang="BG" style="mso-ansi-language:BG">от менюто и след
това напишете псевдонима на потребителя, с когото искате да направите
връзката. Един п</span>розорец
<span lang="BG" style="mso-ansi-language:BG">се отваря за тази
</span><span lang="EN-US" style="mso-ansi-language:EN-US">dcc
</span><span lang="BG" style="mso-ansi-language:
BG">чат сесия</span>.

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


## 8\. <span id="help" lang="BG" style="mso-ansi-language:BG">По-подробна помощ</span>

<span lang="BG" style="mso-ansi-language:BG">За допълнителна информация
по тези въпроси, както и по други команди, посетете следната страницата
</span><http://www.irchelp.org/>.
<span lang="BG" style="mso-ansi-language:BG">Там ще намерите много
</span>[<span lang="BG" style="mso-ansi-language:
BG">помощни файлове</span>](/faq/),
като например:

 * [IRC Primer](/faq/ircprimer.html)

 * [FAQ (Frequently Asked Questions)](/faq/altircfaq.html)
<span lang="BG" style="mso-ansi-language:BG">за
</span>[alt.irc](news:alt.irc)
<span lang="EN-US" style="mso-ansi-language:EN-US">пресгрупа.</span>

 * [IRC tutorial](/faq/irctutorial.html)

<span lang="BG" style="mso-ansi-language:BG">На тези страници ще
получите повече информация за определените
</span><span lang="EN-US" style="mso-ansi-language:
EN-US">IRC</span><span lang="BG" style="mso-ansi-language:BG">
клиенти:</span>

 * [ircII <span lang="BG" style="mso-ansi-language:BG">клиент</span>](/clients/unix/ircii/)
и [ircII
<span lang="BG" style="mso-ansi-language:BG">скриптове</span>](/script/).

 * [Mac <span lang="BG" style="mso-ansi-language:BG">клиенти</span>](/clients/mac/)

 * [mIRC <span lang="BG" style="mso-ansi-language:BG">клиент</span>](/clients/windows/mirc/)
<span lang="BG" style="mso-ansi-language:BG">за</span> Windows

<span lang="BG" style="mso-ansi-language:BG">Търсите други
клиенти</span>?
<span lang="BG" style="mso-ansi-language:BG">Най-изчерпателния
източник за клиентите може да бъде намерен на </span>[FTP
<span lang="BG" style="mso-ansi-language:BG">архива
</span><span lang="EN-US" style="mso-ansi-language:EN-US">hacktic</span>](ftp://ftp.hacktic.nl/pub/various/irc/clients/)
<span lang="BG" style="mso-ansi-language:BG">или на </span>[WWW
<span lang="BG" style="mso-ansi-language:
BG">архива на
</span><span lang="EN-US" style="mso-ansi-language:EN-US">irc.org</span>](http://www.irc.org/ftp/irc/clients/).
<span lang="BG" style="mso-ansi-language:BG">Клиентите са организирани
по групи като </span>Windows, Macintosh, DOS, Amiga, Java,
<span lang="BG" style="mso-ansi-language:BG">и т.н</span>.

Клиентът [mIRC](/clients/windows/mirc/)
<span lang="BG" style="mso-ansi-language:BG">също има изключително добри
вградени помощни файлове написани от </span>Tjerk Vonck (mirc@dds.nl).
<span lang="BG" style="mso-ansi-language:BG">Изберете
</span>*Ircintro.hlp* <span lang="BG" style="mso-ansi-language:BG">от
менюто </span>*Help*.

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


## 9\. \><span id="warning" lang="BG" style="mso-ansi-language:BG">Няколко предпупредителни думи</span>

**IRC <span lang="BG" style="mso-ansi-language:BG">скриптовете
</span>**<span lang="BG" style="mso-ansi-language:BG">са разширение от
команди, които вашият клиент *ще* поддържа. Много, иначе добри
скриптове, са били ìхакваниî, така че ако ще ги ползвате, трябва
да се замислите сериозно върху вашата сигурност (някой може да се влезе
във вашия акоунт, да затрие всички файлове, прочете Вашата поща, и
т.н.). Има също и злодеи, които се опитват да пращат на потребителите
вируси и други лоши неща. Също като в реалния живот, не приемайте нищо
от непознати. Има много случаи от този тип, не само няколко. **Никога**
не пускайте скрипт преди да сте сигурни какво прави всяка една линия,
даже и ако Ви е пратен от най-добрия приятел, понеже вашият приятел
може да не е експерт в откриването на добре скрити ìтрояниî.</span>

**<span lang="BG" style="mso-ansi-language:BG">Автоматичното приемане на
</span><span lang="EN-US" style="mso-ansi-language:EN-US">DCC</span>**<span lang="EN-US" style="mso-ansi-language:EN-US">
</span><span lang="BG" style="mso-ansi-language:
BG">е много лоша идея\! Веднъж щом е пусната, </span>Вие се поддавате на
опасности <span lang="BG" style="mso-ansi-language:BG">свързани с
откачене от сървера, на който сте се
вързали,<span style="mso-spacerun: yes">  </span>от далечно
разстояние, с даване на права на някой друг върху вашият компютър.
Все пак доста малко хора се натъкват на сериозни проблеми, поради
опцията автоматично приемане на
</span><span lang="EN-US" style="mso-ansi-language:EN-US">DCC.</span>

<span style="font-size:10.0pt">\[
[<span lang="BG" style="mso-ansi-language:BG">Съдържание</span>](#contents)
\]</span>


Специални поздрави за kratuna & smash3r.

Сега като прочетохте
ръководството за начинаещи, влезте в
IRC
и се забавлявайте\!

Или ако се интересувате да научите нещо повече, проверете
документациите на
[официалната страница на \#IRChelp](/).


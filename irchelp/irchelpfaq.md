---
title: The unofficial #irchelp FAQ (ufAQ)
author: Alex Charalabidis (Apatrix)
layout: default
---
# The unofficial #irchelp FAQ (uFAQ)

* * *

These are questions that we often get on #IRChelp on EFnet/IRCnet. We provide
this list for those of you who like to learn by watching others ask questions.
This way you don't have to idle on the channel, and you get a much more
complete picture of the full range of questions we often get.

* * *

The #irchelp uFAQ, version 1.2.9, 27 Jul 2001

By Alex Charalabidis (Apatrix)

* * *

  1. I'm connected to IRC now. How do I use this thing?
  2. Why can't I send files with DCC?
  3. How can I change the name that appears when I type /whois?
  4. How can I change my email address as it appears in the /whois?
  5. My channel has been taken over. What can I do?
  6. How can I make a message that automatically appears when someone joins my channel?
  7. Where can I get a bot?
  8. But I need one to protect my channel!!!
  9. What are some cool scripts?
  10. How do I get into a channel that's invite-only?
  11. I'm banned from a channel and have never been there! Why?
  12. How can I look up a user using their address?
  13. I want to register my nickname/channel. How?
  14. What's a good EFnet/Undernet/DALnet/IRCnet server?
  15. What does a + next to someone's name mean?
  16. How can I see all users on my server?
  17. How can I be a channel op?
  18. Where can I get a list of servers?
  19. How do I set up ICQ?
  20. My web browser/news reader/mailer etc. isn't working. What can I do?
  21. What's a good news server?
  22. How can I make it so that someone can type !send and get a file from me?
  23. How can I get a file from an XDCC bot or fserve?
  24. I'm being nuked! What can I do to stop it?
  25. And how can I nuke them back?
  26. I need an IRC Cop! Where can I find one?
  27. Okay, smarty pants. Where can I find an IRC operator?
  28. How can I make my text appear in colour?
  29. How can I send/receive sounds?
  30. How can I avoid being sent those awful pornography adverts?
  31. I want to get a server and link it to EFnet. How would I do this?
  32. I keep sending people this file. What is script.ini? What is dmsetup? What to they do?
  33. Where can I get a free shell account?
  34. How do I make a message in purple/one that looks like * My_nick is kewl?
  35. Help! I get disconnected each time I try to list channels!
  36. I can't find any EFnet server to connect to!
  37. Where can I find the games/warez/mp3s someone told me to get here?
  * Bonus Question: You keep telling me to RTFM. What the hell does that mean?
  * Trick Question: You say this FAQ is unofficial. When will it become official?
  * The Ultimate Question about Life, the Universe and Everything

* * *

1. Q: I'm connected to IRC now. How do I use this thing?     A: This "thing"
is a highly complex multi-user real-time communications system, although the
concept behind it is simple and it can appear deceptively simple in the
beginning. Don't be lazy - type /help, hit F1, read the huge amount of fine
documents at [http://www.irchelp.org/](http://www.irchelp.org/). Just do
_something_. We help those who try to help themselves first. 2. Q: Why can't I
send files with DCC?     A: This is a common problem with mIRC. Providing
you've checked that you're not behind some bitchy firewall, the following
steps should solve that problem:

Disconnect from IRC

Go to File|setup|local info

Delete the contents of the IP address and Local info fields

Check "Always get local host" and "Server"

Reconnect 3. Q: How can I change the name that appears when I type /whois?
A: If you're running a client on your own machine, edit it in your setup. If
you're using a client on a Unix machine run by someone else, do the following
from the command line:

echo $SHELL

Depending on the reply,

  * If the reply is csh, tcsh or zsh, do this:
setenv IRCNAME "whatever"

  * If the reply is ksh, bash or sh , this should work:
IRCNAME="whatever";export IRCNAME

  * If it's any other type of shell, sorry, you're on your own.
  * Add the appropriate line to your login file (usually .cshrc for csh/tcsh and .profile for bash/ksh) to make the change permanent and re-login.
  * Don't ignore the quotes and capitalization. They're there for a reason.
  * If you still haven't understood, get a Unix manual.
  * For VMS, add the following line to your login.com file:
DEFINE IRCNAME "what you would like to appear"  If you're on some sort of BBS
and don't have access to a command line interface, talk to your
sysadmin/sysop. 4. Q: How can I change my email address as it appears in the
/whois?     A: You can change your username if your client is running on your
own machine. Somewhere in your setup, you'll have an item called "identd".
Find it (mIRC will have it somewhere under File ->Options) and change it to
something else. On Unix hosts with no identd, some clients allow it to be set
- others, including ircII, do not. If you're on a Unix machine which is not
yours and has an identd running, tough, live with it. What's wrong with your
real userid anyway? To fake your hostname, hack your local domain name server
and start looking for a new provider since your account won't last long if you
do it, even if you don't spend the rest of your natural life on probation.
Actually, unless you're running the client on a machine which also functions
as a mail host, the address in your whois info isn't a valid email address
anyway. 5. Q: My nickname/channel has been taken over. What can I do?     A:
Neither EFnet nor IRCnet have any means of automagically restoring a channel
to its legit ops or a nickname to its rightful owner. As far as the network is
concerned, the current ops of a channel are also the legit ones and nicknames
are first come first serve. Regarding channels, read [Veggen's takeover
hints](http://www.irchelp.org/irchelp/misc/hints.html). If you're so anxious
to cater to your proprietory feelings, maybe DALnet or some small network with
Services would be better for you.

If your channel or nickname is being held by a bot and you know the bot's
nickname, use /motd <bot's_nick> to see what the server's policy regarding
bots is. If it forbids bots, you stand a reasonable chance of having it
removed by the server's operators. Question #26 will help you contact the
right people. 6. Q: How can I make a message that automatically appears when
someone joins my channel?     A: Yuck. I find autogreets trashy, cheap and as
friendly as a welcome mat at the door of a dentist's office. Learn some basic
scripting. Hint: use ON JOIN. Remember there's nothing as silly as greeting
yourself when joining a channel and to use it only on your channels - people
tend to be annoyed by strangers sending autogreets in their channel. Colour
autogreets are one of the best ways to get banned. 7. Q: Where can I get a
bot?     A: If you can't find one by yourself, you don't qualify to run one.
It takes considerable IRC and UNIX experience to set up a bot, and a bot-
tolerant shell access account on which to run it. Misconfigured bots are a
major source of trouble and I must say I don't trust anyone who can't even
download it by himself to run it efficiently. Bots are neither liked nor
supported on #irchelp, so kindly refrain from asking there. You may feel free
to try specialized channels such as #egghelp, but don't expect them to hold
your hand through the whole process either. 8. Q: But I need one to protect my
channel!!!     A: No, you don't. Maybe you just need more friends to help you
run it. Heck, it's only an IRC channel. If you're having fits of anxiety over
that, maybe you need to take a new look at your life... 9. Q: What are some
cool scripts?     A: An old platitude: the best script is the one you write
yourself. You probably don't need one anyway, but just want it because people
say you should have one. Not only should you know what you want a script to
do, you should also have some understanding of your client's scripting
language in order to read whichever script you intend to run. There are more
harmful scripts around than any of us care to know - including "doctored"
versions of popular scripts with special "features" to compromise your
machine's/account's security and some designed to do no more than that, apart
from those which are plain abusive and stupid. You'll probably ignore me
anyway and get one of those awful things which people are banned for using.
Just don't come back saying you weren't warned.

If you really have to use a script, there are a few for both
[ircII](http://www.irchelp.org/irchelp/script/) and
[mIRC](http://www.irchelp.org/irchelp/mirc/) which we do recommend as an
alternative to using abusive or resource-wasting rubbish. 10. Q: How do I get
into a channel that's invite-only?     A: The obvious answer is that there's a
reason for a channel being invite-only, namely to keep you. me and other
uninvited people out. Type /mode #channelname - if the modes it returns
include **s**, **n** and **i**, forget it. If not, try /names #channelname and
send a message to one of the visible users, if any. 11. Q: I'm banned from a
channel and have never been there! Why?     A: Chances are someone else from
the same provider made the whole site unpopular. Not fair? Well, life ain't
fair, is it? Follow the same steps as in the answer to the previous question.
Or you could just take the hint and go to a channel where you're more welcome.
12. Q: How can I look up a user using their address/IP/DNS?          Let's get
some terminology straight first. DNS is a whole system, not a program, not
something an individual user would have, and you don't see peoples DNS servers
on IRC. Some clients have a /dns command which performs DNS lookups for you.
Next, an IP (internet protocol) address is converted to a hostname (using the
DNS) when you connect to the IRC server, unless something's horribly broken.
IP addresses are numerical. If the address you have in mind isn't numerical,
you mean a hostname. As far as IRC servers are concerned, they are NOT
equivalent. You cannot look up someone by their IP address if it has been
resolved to a hostname by the server. You must use the hostname instead.

Now we have this out in the open, do /who <address>. You may use * and ?
wildcards in the address string. Users who are set invisible won't show up, so
it's no longer an effective way of finding someone, since about 75% of EFnet
users are invisible and the figure on other large networks is also very high.
13. Q: I want to register my nickname/channel. How?     A: Neither EFnet nor
IRCnet have any form of channel or nickname registration service (yes, they
*did* have a nickname service back when they were still a single network but
it was discontinued in 1994). First come, first serve is the rule for both
nicknames and channels. If this concept horrifies you so much, you'd probably
be better off on DALnet or some small network with Services. 14. Q: What's a
good EFnet/Undernet/DALnet/IRCnet server?     A: A server is only as good as
your connection to it. Which basically means you should check their [server
lists](http://www.irchelp.org/irchelp/networks/servers/) and pick the one
closest to you. However,

  * EFnet: Most North American servers have excellent connectivity and those which accept foreign clients will be good for them too. Users in western and northern Europe should prefer their local servers.
  * Undernet: Use us.undernet.org to connect to a random US Undernet server. From Europe, use eu.undernet.org.
  * DALnet: irc.dal.net will connect you to a random DALnet server. Irc.eu.dal.net will do the trick for Europeans.
  * IRCnet: Try us.ircnet.org. If you're outside North America, check the server list for a server near you. IRCnet serves more countries directly than any other network. 15. Q: What does a + next to someone's name mean?     A: It means absolutely nothing if the channel isn't moderated (doesn't have channel mode +m active). If the channel is moderated, a non-op who's been given a +v (voice) may also send to the channel like its ops do, while users lacking it may not. On some channels, it's used as a sign of recognition for regulars who aren't ops but are trusted. It's also used as a joke, to make you ask this question. 16. Q: How can I see all users on my server?     A: Ten to one you don't mean the users on the IRC server you're connected to, but the users connected to your local Internet Service Provider. After this small lesson in terminology, try /who *.domain.com (substituting the domain name of said ISP) but don't expect any spectacular results, since the majority of users are invisible to /who scans. On the other hand, what's the point of connecting to a worldwide network if you're only looking for the locals? 17. Q: How can I be a channel op?     A: There are two ways of obtaining channel operator status (ops) on a channel. The first is to join it while it's empty, in which case you, being the first user to join, will automagically be made its operator. However, if the channel is already occupied, you will have to be given ops by a user who already is an op. 18. Q: Where can I get a list of servers?     A: For a quick and dirty look at your current network, type /links. The [#irchelp networks and server lists page](http://www.irchelp.org/irchelp/networks/), sloppily maintained by yours truly, is a reasonable if not always up to date source of server and network information.
Clients like mIRC and ircle come with pretty good server lists of their own
too, assuming you're using the current version and not one you nicked from an
antique client dealer. 19. Q: How do I set up ICQ?     A: I don't know. I
don't care. ICQ is not IRC and never will be. Try [ICQ's own web
site](http://www.icq.com/). [Okay, so now I do know. I'm still not telling,
that's beside the point of this FAQ.] 20. Q: My web browser/news reader/mailer
etc. isn't working. What can I do?     A: 1) Read the offending program's
documentation, 2) Check the manufacturer's site, 3) Call your local support.
Just don't expect _us_ to have the answers. We offer _IRC_ help, not help with
unrelated stuff which other people are paid for helping with anyway. 21. Q:
What's a good public news server?     A: If your local news server doesn't
satisfy you, don't expect to find a better one for free. Try
[DejaNews](http://www.deja.com/), an excellent public news server accessible
via the WWW. If you're after porn or warez and your local news server carries
none, forget it. What possessed you to ask this question in #**IRC**help
anyway? 22. Q: How can I serve files, or make it so that someone can type
!file and get files from me?     A: Running a file server is a relatively
advanced subject, so you're going to have to be prepared to do a little work.
Check out the help in the [official mIRC
FAQ](http://www.mirc.com/faq6.html#section6-30) [ext. link]. Here's the short
version: First of all, don't go loading up some big bloated script package
just to serve files. It is both unnecessary and dangerous, since those scripts
tend to have lame features, bugs, or backdoors which can get you in trouble.
(That's also why most help channels won't help you with them.) You can set up
a simple file server in mIRC with just one command. Access the relevant help
files by typing "`/help /fserve`" (without the quotes) which is the command
for sharing your files, and also "`/help on text`" for how to activate that
command using a "trigger" command such as !file. Here's an example of the
general syntax format and then an actual example command that would go in your
"remotes" section (alt-r to access). You need to customize the command based
on your specific situation and what you learned from those help files.

SYNTAX -> `on *:text:!file:#:/fserve nickname maxgets homedir welcomefile`

COMMAND -> `on *:text:!file:#:/fserve $nick 5 C:\files\ welcome.txt` 23. Q:
How can I get a file from an XDCC bot or fserve?     A: Ask the bot's owner or
someone else on the channel where it's located. There is no standard command
set to retrieve files from bots. 24. Q: I'm being nuked! what can I do to stop
it?     A: This problem is usually encountered by users running some form of
Windows, since Windows machines tend to be much more vulnerable to nukes than
other operating systems. Patch your machine, using the information provided on
the [#irchelp nuke page](http://www.irchelp.org/irchelp/nuke/). Taking it a
bit further, you could complain to Microsoft for selling you broken software.
If you're using Linux and appear to be affected by nukes, check
[LinuxHQ](http://www.linuxhq.com/). If you're using a Mac... aw heck, who uses
them anyway? Besides, they're largely immune to nukes. If your "nuke" is an
ICMP flood, contact the ISP of the address where it originated, possibly
asking your own ISP to cooperate too. 25. Q: And how can I nuke them back?
A: Do you really expect a nuker to let his machine be vulnerable to the
attacks he uses? If you consider a nuke to be an appropriate response, you
really should get out of the house more often or see a therapist (or both).
Nukes are illegal, your attacker may have escaped but I won't guarantee that
you'll be as fortunate (in fact, I hope BOTH of you are caught). Anyway, if
you still want to nuke people, quit reading this FAQ - I have no desire to
help someone with that attitude and you'll probably pay no attention to it
anyway. 26. Q: I need an IRC Cop! Where can I find one?     A: Dial 911-IRCD
and listen to the recorded message saying there is no such thing. You're
probably looking for an IRC operator. 27. Q: Okay, smarty pants, where can I
find an IRC operator?     A: You probably don't need one anyway. If you're
looking for someone to retrieve your nickname or channel from someone, an IRC
operator will not intervene. What's more, if that's the case, you've ignored
the rest of this FAQ, since the subject was covered in question #5. Each
server has its own set of IRC operators. If your problem involves a particular
server, calling upon any old oper just won't do the job - it will have to be
dealt with by someone who has operator privileges on that server. If you're
absolutely convinced that an IRC operator can solve your problem, use /stats p
<server.in.question> or /trace <server>. They generally hate being bugged
about trivia they can do nothing about. The right thing to do is type /admin
<server> and mail your woes to the address it returns. For a complaint
regarding a particular client, you can also use /admin <nickname>. Email will
probably elicit a faster response too even if your problem is something the
server admin can do nothing about. 28. Q: How can I make my text appear in
colour?     A: RTFM. Type /help colour. If your client can't see colour or
sees garbage instead, it will most likely not be able to send out any. If
you're using mIRC, make sure you have version 4.7 or later. 29. Q: How can I
send/receive sounds?     A: Again, RTFM. /help sound will tell you. Same as
above applies here too. 30. Q: How can I avoid being sent those awful
pornography adverts?     A: Set your user mode to +i (invisible). This will
make you invisible to the WHO and NAMES commands which those bots use. You'll
still be stuck with them hopping in and out of every public channel they can
find. As far as getting rid of them altogether is concerned, the network's
operators are doing their damndest, but the spammers appear to have an endless
supply of hosts which they can use. 31. Q: I want to get a server and link it
to EFnet. How would I do this?     A: If you have to ask, you most likely
don't qualify to run an EFnet server. Anyway, to run your own server, get the
appropriate software for your operating system: [Conference
Room](http://www.webmaster.com/) or [wircsrv](http://www.wircsrv.com/) for
Windows, visit [IRCdhelp.org archive](http://www.ircdhelp.org/ircdvers.html)
for various irc daemons for Unix/Linux. [All ext. links.]  Note that using a
non-Unix server automatically disqualifies you from linking to most networks,
including EFnet. As far as linking to EFnet or any other major network is
concerned, if you didn't even know how to get the ircd and had to ask this
question, you don't stand a cat in hell's chance of getting a link, even if
you do have the required dedicated machine, multiple T1's and sizeable local
userbase. Expertise and experience happen to be required as well. Read the [
EFnet server requirements](http://www.irchelp.org/irchelp/ircd/server-
request.html) for more information. 32. Q: I keep sending people this file.
What is script.ini? What is dmsetup? What to they do?     A: Script.ini,
dmsetup.exe, and a truckload of other seemingly innocent files are really
"trojan horses" which will let anyone access your machine through mIRC. Damage
can range from being forced to say things or quit a channel on IRC to erasing
your entire HD or using your machine for illegal activities for which you may
be held responsible. Shut down your IRC client and check out the [#irchelp
security pages](http://www.irchelp.org/irchelp/security/) for possible
solutions. Follow the advice to the letter and hope that what you have will be
fixed with the help of those pages. In extreme cases, you may be forced to
format your hard drive and reinstall everything from scratch. You might want
to do that anyway if you wish to be absolutely sure that it's gone. And don't
repeat the mistakes that got you infected in the first place. 33. Q: Where can
I get a free shell account?     A: Accounts, shell accounts included, don't
grow on trees. Even if you're not paying for it, someone is. Ask your provider
whether they offer such a service. If what you want is a freebie "eggable
shell" to run a bot on, forget it. They're a myth. 34. How do I make a message
in purple/one that looks like * My_nick is kewl?     A: Type this:

/me is a pink bunny

and see what happens. 35. Help! I get disconnected each time I try to get a
channel list!      The short explanation is that the channel list contains a
large amount of data, and often the server is just too impatient to send you
all that data, especially if you have a relatively slow connection. Try a few
more servers if you like, sometimes /list will work on some servers but not
others. Your best choice, though, may be to get your list from the [searchable
EFnet channel list](http://www.irchelp.org/irchelp/chanlist/) on the Web. That
web page also has a more detailed, technical explanation for this problem, and
links to other channel lists on the web. 36.I can't find an EFnet server to
connect to!     First of all, the #irchelp gurus, in their infinite wisdom,
have provided you with a [connection
troubleshooter](http://www.irchelp.org/irchelp/networks/connectprob.html).
However, nothing can cover all users since conditions and access policies
change weekly. 37.Where can I download all those games/warez/mp3s I was told
to look for here?     We get this one so often, we have a whole separate guide
to [downloading files on IRC](security/warez.html). Here's the short version:
Search me. I have no need for them, and if I do, I keep it to myself and
figure it out by myself. Imagine asking an information booth in your city how
to find stolen goods... doesn't sound right, does it? We know very well that
whatever you're looking for is covered by copyright laws. Don't expect any
help in breaking them. Oh yeah, and did I mention that IRC is not a file
storage service? IRC doesn't "have" files, individuals that hang out there
might have some... for the right price.

* * *

Bonus Question: You keep telling me to RTFM. What the hell does that mean?
Bonus Answer: RTFM stands for Read The Fine Manual. You may replace "Fine"
with any other F word of your liking. If you're told to RTFM, it means that
the answer to your question is to be found in The Manual, if only you bothered
to look for it. Trick Question: You say this FAQ is unofficial. When will it
become official?     Profound Answer: Probably never. If it were official I'd
have to be polite and politically correct, and we wouldn't want that to
happen, would we? Unless I'm going to mellow in my old age, this just ain't
gonna happen. The Ultimate Question about Life, the Universe and Everything.
The Invaluable Answer is:
[42!](http://www.empirenet.com/personal/dljones/index.html) (Don't take this
lightly, it took 7.5 million years to figure out.)

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

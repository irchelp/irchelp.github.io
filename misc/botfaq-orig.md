# Frequently Asked Questions about

Internet Relay Chat roBOTs

** Written mostly by Nemesis][ (Black Nemesis)  
(with a little help from TheRose)

**

This is the original version of the classic FAQ dating back to the early
1990s, and is kept here for historical reasons only. For up to date
information on this subject, please see the [revised bot FAQ](botfaq.html).

* * *

## (1) What exactly is a bot?

A BOT is akin to a roBOT, hence the name. A bot is quite simply a computer
program that hooks into IRC and does things automatically. Most bot programs
are written in the C language that run as a background task and hook into IRC
via Telnet connections. Others are written in the ircII
[script](/irchelp/script/) language and require some form of client to run and
connect into IRC.

## (2) What uses are there for bots?

Most bots are used to "guard" a channel and keep it open when no one is
present. They protect against net-split hacks, various forms of flooding and
op the regulars that visit the channel. Some enforce bans and kick certain
people (usually 'trouble makers') off the channel. Other exotic bots such as
Robey Pointers Eggdrop bot use direct client to client connections to make a
secondary relay chat network that is in itself independent to IRC.

Not all bots are written to be helpful, some such as HackBot use the bugs in
IRC to takeover channels and nick-collide certain people. There are numerous
uses for a BOT, some are useful, most are not.

## (3) How can I tell if a person on IRC is not a person but is a bot?

Well, generally bots are quiet except for when someone makes them do something
or something occurs that make the bot react. An example of this is when
someone floods a channel and then is promptly kicked out of the channel and
possibly banned as well. Two other things to look for are the words "bot" or
"srv" in the nickname. Look in the username field, the ( )s at the end of a
/whois <nick>. An example of a bot could be:

    
    
     #junk   JunkyBot   H@   cszvb1@120.23.77.4(/msg JunkyBot Hello)
     #idiots IdiotSrv   H@   rzx14g@mindless.nut.org(/msg IdiotSrv Help)
    

## (4) How do I start my own bot?

Before one even gets the bot program one has several things to take into
consideration. First off one must find a suitable host that the bot can be run
from. Many people attempt to run a bot on their student account; most of the
time the bot gets killed by other local students or gets killed by the local
admin (IRCop). This results in an unstable bot that for all practical purposes
is useless and could quite possibly cause a conflict between the user and his
admin.

Second, one must find a suitable server that will allow a bot to connect. This
requires reading the Message Of The Day on the server one wishes to run the
bot on. If one ignores the "NO BOTS" warning posted on the server one may
quickly find himself (or his entire host) k-lined (banned) from that server.
Many servers do not allow bots, in fact most of them do not. The third
consideration that one must make is the lag time. If the bot is lagged several
seconds behind because of slow connections it's ability to react to possible
floods and net-split hacks is severely handicapped.

Next one must select (or write) a bot program. There are several types of bots
available. Some common ones are: Eggdrop, ComBot, and VladBot to name a few.
Most bot programs come in packages that are fairly easy to install if one has
a basic understanding of the language it is written in. Many are set up simply
by editing the make file to the type of operating system the bot will be run
on and customizing various other files to the owners taste.

Next the bot must be compiled by running the make file. Most of the time the
bot will compile fine; but differences in systems might require the owner
makes changes directly in the code to get it up and running. This requires
some understanding of the language and the logic the program uses. If the
compiling goes well; the next step is run the bot.

If everything runs well the bot will pop onto IRC in the channel you specify.
At this point the owner needs to fine tune the bot. If you are placing the bot
in a channel where another bot is, one must take care that the bots don't
"fight" by having conflicting mode changes. An example of this is when someone
is actively being opped by one bot while another is actively deopping him.
When this occurs expect screen fulls of mode changes. Another example is when
2 or more bots are "locking" channel modes. If they conflict; again, there
will be screens full of mode changes. This can result flooding the channel,
might even cause the channel to be "out of synch". When this occurs not much
can be done except to empty the channel of its occupants and start over.

Notice: The new client codes will not allow certain flags to be used for the
bot to connect. Do not be surprised if you get your bot all set up and cannot
connect it to IRC.

** It is HIGHLY advisable one knows the language the bot is written in because of the possibility of backdoors. Such backdoors could possibly allow someone to enter the account itself and take it over without the owner even knowing it occurred until one day he finds his password is changed and can't get into his account. "Don't load ANYTHING until you know what it does." ALWAYS look before you load. This applies not only to bot programs, but to script files as well. Just a friendly warning; otherwise you may regret it later down the road. **

Not as simple as you thought 'eh?

You must understand that MOST bots are useless. To keep a channel open with a
bot in place is a serious waste of IRC resources. EFnet is extremely crowded,
a bot takes up enough room for about 8 people, room which is meant for people,
not programs. Yes, there ARE useful bots, these are few and far between. The
game bots located on various game channels are fun, permission has been given
by the administrators of the servers they are on to have them there. There are
service bots as well, such as help_uk, AI-, and helper, to name a few. Eliza
is one of the original bots on EFnet, located on #Eliza, the "grand dame"...a
fun but perfectly useless type of bot. It is highly recommended that you do
not start a bot for the sole purpose of retaining ops on a channel and to keep
a channel open. If your channel is popular enough there is no need for this.

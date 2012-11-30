Ed. note: The following are 2 email messages from Richard Hecker, an EFnet
oper and experienced IRC helper, on the subject of server desynchronizations
or "desyncs." It gets fairly technical but it's really the only way to
understand and fix this annoying phenomenon. To make things worse, the /names
trick he mentions no longer works on most EFnet servers, so you'll have to
rely on good ol' fashioned deductive reasoning to figure out where the desync
is.

* * *

Wed, 8 Apr 1998 11:44:45 -0400

Richard Hecker

On Wed, 1 Apr 1998, The Rose wrote:

> I'm wondering what the trick/tricks are for resynching a

> channel? I've never had any luck with attempting it. I've

> tried the -o +o stuff, have had chanops try that also, no

> workee.

Resyncing a channel is relatively simple if you understand desyncs. A desync
is a condition in which different servers have conflicting information. With
channel desyncs, they usually start with someone that has ops, but only some
servers see that user as being opped. Once that happens, its easy for the
desync to escalate. If that desynced person ops someone else, that new op will
also have desynced ops. If a desynced op kickbans another user, often only the
servers that see that person as being opped will allow the ban to be placed,
and the kick to go through. At that point, servers have conflicting lists of
ops, conflicting lists of bans, and conflicting lists of users on the channel.

So, to fix this all, its usually a matter of finding where the desync is,
getting clients on either side of it, and manually making changes on both
sides until they have the exact same information.

Finding the location of the desync will often be helpful. One easy trick is to
go into the channel, get ops, and set the topic. If your ops are desynced, you
will receive error messages about not being opped from the servers that don't
see you as having ops. That doesn't always work. If that doesn't work, I
usually paste the /names list to the channel, and ask if anyone sees anything
different from where they are. Usually, finding one server that you have
access to that is on the other side of the desync will be enough to allow you
to fix it.

[ Note - the following script commands are for the UNIX ircII client only. ]

Here's a good alias to have handy:

alias usr names $C $*

I use this all the time instead of /NAMES. typing /USR is equivalent to doing
"/names *" ....But there's an added bonus to this command, and you need this
/ON command to appreciate it:

on ^353 "*" if ([$0] == [$S]) {echo Users on $2: $3-} {echo Users on $2: $3-
\(from $0\)}

(It should all be on one line, BTW)

Here's the trick...With that /usr command, you can ask other servers to give
you the list of people on the channel. The /ON command I've included allows
you to easily differentiate between /NAMES responses from your server, and
responses from other servers. Here's how it looks when I use this command:

/usr

Users on #irchelp: @Trillian @turtle @wmono @Jolo @ApatrixEM @Davin
+@DemiShade @MHz @Garfr

/usr *hut.fi

Users on #irchelp: @Trillian @MHz @Garfr @turtle @wmono @Jolo @ApatrixEM
+@Davin @DemiShade (from efnet.cs.hut.fi)

/usr larz

Users on #irchelp: @Trillian @turtle @wmono @Jolo @ApatrixEM @Davin
+@DemiShade @MHz @Garfr (from irc.blackened.com)

Notice in the last case that I can even name a user instead of a server to
query. In that case, it asked larz's server (blackened) for the user list.

Using this command will allow you to track down info on the desync without
hopping from server to server. Once you know which servers are desynced, you
can get a client on either side and fix it. But you MUST have ops on BOTH
sides to properly fix it. Then its just a matter of comparing user lists (deop
and reop anyone who isn't opped on both sides, and kick out anyone who doesn't
appear onchannel on both sides), ban lists (remove and replace any bans that
don't appear on both sides), and channel modes (remove and replace any modes
that are desynced).

What if you don't have ops on both sides? Then you're pretty screwed. Its
usually impossible to get everyone out of the channel. The best advice is to
resync as much as you can, and pray for a well placed netsplit. Depending on
where the split occurs, the rejoin may resync the channel for you. Usually it
only partially resyncs it, but often its enough of a resync to be able to
finish the job manually.

Purely for interest's sake, I may as well mention that channels aren't the
only things that get desynced. Users can get desynced, too. The most common
user desync happens when a user leaves, but not all servers receive the update
that the user is gone. This is what a Ghost is.

Hope that helps

-Rich 

* * *

Thu, 9 Apr 1998 09:24:23 -0400

Richard Hecker

On Wed, 8 Apr 1998, The Rose wrote:

> Exiting the channel left it empty, therefore non-existant. When I

> went back into it it was STILL desyched. I kid you not. I was the

> only one on it, too. I got onto various servers and kept going in

> and out, no matter what server I was on I'd be the only one in

> the channel and it was desyched. I must have played around for 20

Some of the stranger desyncs can do some odd stuff, but whenever theres a
desync, there's a server somewhere that thinks users are on it, and that
server may not give you any error messages.

I was once called into a channel where mode changes just weren't going through
right. When people opped other people, some users would see it, and some
wouldnt. I checked almost every server that users in the channel were on, and
every server I checked seemed to agree on who had ops, and yet, when ops would
op people, only about half of the servers saw it. I was rather stumped at
this, and I finally decided to get a /TRACE between two servers where this
rift seemed to exist, and check every server between them.

As it turns out, there was a single hub server along the path that was
convinced that there were no ops at all in the channel. But every other
server, on either side of this hub server, had the correct opslist, and for
some reason, this hub server wasnt producing any errors.

Anyway, theres always a clue somewhere, its just not always obvious where to
look...

-Rich 

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


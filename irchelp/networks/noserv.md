# Why EFnet/IRCnet has no registration services?

by Jolo @ EFnet

updated Sep 12, 2009

**[![](../ircd/no.gif)Norsk oversettelse](noserv-no.html) (Norweigian translation)**

This is a frequently asked question, especially by people who start on DALnet
or other networks which do support registration, then come to networks like
EFnet or IRCnet which do not. Here are some explanations.

This guide has become especially relevant since DALnet came under relentless
attacks in August 2002. See our [DALnet Refugee Guide](dalrefugee.html) for
more info on the many differences between the networks, and how to chat or run
a channel on other nets. Don't assume that everybody is like DALnet, in fact
DALnet is unique among the big networks in having full services. Bottomline,
you need to learn how to fend for yourself if you want to stay on other nets.

The remaining of this guide will focus on the philosophical question of why
other nets have no registration services.

## "Why don't you have services?"

  1. Every [network](index.html) is independent and different. If every network had the exact same services and policies, there wouldn't be any reason for them to all exist separately. 
  2. Some networks like EFnet and IRCnet are so old that they actually predate the idea of services, which were in fact developed specifically for newer networks like DALnet. Implementing services now could be quite controversial. Even in the unlikely event that everybody agreed to adopt registration now, it would be very difficult to establish who owned which channel/nick. For example, if registration took effect on a day when somebody just took over "your" channel/nick temporarily, then that channel/nick would be permanently owned by him instead. Imagine the outrage and chaos that would ensue. EFnet tried to compromise by coming up with a pseudo-chanserv called [CHANFIX](../ircd/chanfix.html) which effectively helps reasonably large, stable channels to deal with occasional opless or takeover problems. 
  3. With registration you lose choices. Most of the "good" channel/nick names are already taken, since anybody can register a name and keep it even when they aren't online. On networks without registration, everything is first-come first-served, and nothing is permanent. Some people think this is confusing, we prefer to say it's fair. 
  4. With registration you lose freedom. By necessity, registration services give the IRC operators or administrators who run the IRC servers the "magic" ability to give or take away ownership of a channel/nick. You know the saying, "Absolute power corrupts absolutely"? On networks with registration, there are often allegations of IRC oper/admin abuse, such as taking over a channel just because they disagree with the policy of the channel or the people who run it. Maybe this is true, maybe it's just some crybabies whining, but one thing is for sure: On networks without registration, oper/admins have no "magic" powers over channels and you are free to run them any way you want. 
  5. With registration comes over-reliance on somebody else to run your channel for you. Once in a while DALnet's chanserv breaks, and for hours the network is plunged into total chaos. On networks without registration, channel ops are forced to be responsible for their own channels instead of relying on somebody else. At least then you can't blame anybody else if things go wrong. 

Having said all that, there are perfectly good reasons to have services. It
can be the only sane way for a relatively small or inexperienced group of
users to learn how to run a channel. It can also cut down on a lot of takeover
abuse that runs rampant on networks without registration. And when it works,
it's just darn convenient.

## But how do I run a channel without services?

The short answer - with experience, resources, and patience. In other words,
the old fashioned way. As a channel op, it is your job to run your channel.
Generally I advise that you do _not_ try to run a channel unless you already
have at least 5 and preferably 10 trusted friends with 24/7 connections to
give you a "critical mass". Then you guys can pass ops back and forth and not
lose ops. (Here's an [example mIRC script](../mirc/chan_op.mrc) to do so.)
Until you reach that critical mass, there's really no point in having a
channel anyway, not if it's just going to be you and a
[bot](../misc/botfaq.html) sitting there staring at each other in silence.
There are after all thousands of large, established channels on each of scores
of large networks already, it's very unlikely there is a need for some small,
new channel anyway. Just chat on those channels and have fun meeting people,
maybe one day when you make enough friends, you can start a new channel
together. If you really want to learn how to run a channel, start it on a
small network that supports full services.

The long answer - if you are really serious about learning how to run your own
big, stable channel, then check out [The New IRC Channel Operator's
Guide](/irchelp/changuide.html). It's very long and technical, but then again
nobody said being an op was easy. In fact, it's quite difficult!

Special note on "bots" - many people will tell you to just get some
[bots](../misc/botfaq.html) or a botnet. Bots are automated IRC client
programs that stay connected 24/7 such as to hold a channel open, give ops,
kick out troublemakers, etc. What they don't tell you is that to be effective,
bots need to be stable, which means they should be run on UNIX servers at big
companies or ISPs. It takes a lot of computer and IRC experience to set bots
up properly, or else the channel gets messed up even more easily. The
bottomline is that on a stable channel, bots can make life more convenient,
but they _never_ substitute for the critical mass I mentioned above. If you
rely on bots for ops, mark my word, you _will_ lose ops soon.

In conclusion, people have free will. Some people like the safety and sanity
of services, others prefer the freedom and chaos without them. You can go to
any network you like, so just pick one that has the services and policies that
suit your needs, as described for many networks on our [networks
page](index.html). In addition to DALnet, there are also many other smaller
networks that also have full services. If you just have a group of friends who
want a place to chat, I encourage you to try out these smaller nets. They are
far less likely to be crippled by attacks like the "Big Five" and can let you
chat in peace, which is the whole point of IRC after all.

Return to [IRChelp.org Networks Page](./)

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


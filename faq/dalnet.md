---
title: DALNet server list and general news.
author: irchelpers
datechanged: 1 December 2012
status: historical
summary: A server list and news for Dalnet
layout: default
---

*Editor's note: This document came about during a period of severe denial of service attacks directed against the DALNet IRC Network, during which EFNet #irchelp was flooded with questions from users that couldn't connect to DALNet.*

# DALnet server list (and general news)

updated Tue Jan 21 21:56:30 EST 2003

## What's Wrong with DALnet?

As of the fall of 2002, DALnet has been severely disrupted over the past few
months from denial of service attacks. Your ability to connect has often
ranged from difficult to downright impossible. For an official description of
the problem (but alas no solutions), check out these recent issues of the
DALnet Ezine: the current [Jan 2003](http://zine.dal.net/) and archived [Oct
2002](http://zine.dal.net/previousissues/issue19/letter-from-the-editor.php)
(ext. links). To make a long story short: they're under attack, they don't
know by whom or when it will stop, be patient, etc.

So what's a DALnet chatter supposed to do? Read on...

## How Do I Connect to DALnet?

**If you do NOT need to be on DALnet**, you can chat on [another network](../) in the meantime. In fact we created the [DALnet refugee guide](../dalrefugee.html) just for people who decided to move to other nets like EFnet, IRCnet, and Undernet. 

**If you need to be on DALnet**, you can sometimes still connect to one of its surviving servers using the instructions below. 

### Tips for connecting to DALnet.

  1. Use specific server hostnames like "example.dal.net" (I made that up) instead of the the "round robin" aliases like "irc.dal.net". The latter is supposed to redirect you to a random available server, but lately it is often disabled due to the attacks, so that mIRC users get the error "Unable to connect (Can't assign requested address)". See the next section for DALnet server lists. (If you're curious about this error, here's a slightly technical [explanation](255.txt).) 
  2. For any specific server, instead of using the default ports 6667 and 7000, try other ports such as 6660-6666, 6668, 6669, etc. which are often faster or more stable. In mIRC, just type:  
`/server example.dal.net:6661`

(where "example.dal.net" is again a made-up specific server name) in any input
window where you would normally type text. Once you connect to the server,
read the `/motd` which often shows all the available port numbers.

  3. Be patient. The attacks have been going on for months, nobody knows how much longer they will last. Just try to keep chatting and have fun. If that's just not possible on DALnet, then consider switching to a [different network](../), perhaps a smaller one that also supports services like nick/channel registration. For more info, see the [DALnet Refugee Guide](../dalrefugee.html). 

## DALnet Server Lists

If you are already connected to a DALnet server, a full list of specific
server hostnames may be listed using the `/links` command. Note however that
you cannot connect to most servers shown due to the same reasons described
previously for "irc.dal.net".

If you cannot connect in the first place, you have to rely on one of the web
lists below.

**Unofficial Server List - Automatically Updated.** [Edward_K's DALnet server list](http://edk.dyndns.org/servers/) (ext. link) This list is auto updated every 30 minutes. It verifies that the server resolves to a real IP, and even checks various ports so that you can connect to an alternate port just by clicking on the link for the port number. 

**Official Server List.** [DALnet's web site](http://www.dal.net/servers/) (ext. link) has a server list, but it seems to often be out of date or just shows servers you cannot connect to anyway. Feel free to try them, just skip the servers with "hub" in their name. 

## More Information

  * If you just want somewhere to hang out and commisserate, EFnet and Undernet both have #dalnethelp channels. They're as likely as anybody else to have the latest news. For information on how to connect there, see our [networks page](../). 
  * If you're considering moving from DALnet, see the [DALnet Refugee Guide](../dalrefugee.html). 
  * Among many other sites, [IRCnews.com](http://www.ircnews.com/) and [mIRC.net](http://www.mirc.net/) have both been covering the day to day events relating to DALnet. 
  * See our own page for general information on [denial of service attacks](../../nuke/). 
  * These kinds of attacks are common on all the large nets, not just DALnet. For some historical perspective, see this page regarding attacks which crippled [EFnet](../efnetsux.html) in mid 2001, and this [wired.com news story](http://www.wired.com/news/culture/0,1284,41167,00.html) [ext. link] for the attacks aimed at DALnet and Undernet in early 2001. 

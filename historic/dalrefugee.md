---
title: Dalnet Refugee Guide
author: 'prysm, Jolo'
license: irchelp
layout: default
redirecT_from:
  - /irchelp/networks/dalrefugee.html
---

_Editor's note: This document was written in 2004, while EFNet was experiencing an influx of "refugees" from DALNet, which was undergoing prolonged DDoS attacks at the time._

# DALnet Refugee Guide

last updated Nov 27, 2004

by prysm@EFnet, minor edits by Jolo@EFnet

original version at <http://www.irchelp.org/irchelp/networks/dalrefugee.html>

see also Undernet-specific version of this document at [Undernet web site](http://www.undernet.org/show_news.php?main_n_id=40) [ext. link]

## Welcome DALnet users

Hello,

If you just came from DALnet (or any other net with full services) and you're looking for a new place to chat, or if you're trying to find your friends, this file was written for you.

First, if you're just trying to connect back to DALnet, or to figure out what is going on with the attacks over there, please see our [DALnet connection guide](servers/dalnet.html).

Each IRC network has common commands, like /join, /msg, and /kick, but there are different ways other networks handle other things. First find out if this is the network where you will feel comfortable, then start a channel for your friends, and let them know where to look if you need to move. It's always good to have a backup plan.

You should be aware that the problems plaguing DALnet now are severe, but hardly unique to DALnet, in fact they happen on all the largest networks. For example, EFnet and Undernet both suffered multiple crippling attacks within the last few years. If you want to avoid such attacks, consider moving your channel to a smaller network that has full services just like DALnet. See our [networks page](nets/) for various possible alternatives. (I moved one of my channels from EFnet a few years ago to a tiny network with only 100 users. Since then it's been a fun, stable place to chat, without a single attack, and no worries about takeovers or losing ops since they have full services. Naturally, the channel has not grown much, but we're not interested in attracting lots of newcomers and the trouble that brings.)

For the rest of this document, we'll just assume you're moving to EFnet, but most of this discussion applies to other nets as well. Assuming you want to stay on EFnet, we will cover some of the differences you will find.

### Nicks and Channels - No Services!

On EFnet and IRCnet, there are no Nickserv, ChanServ, MemoServ or other direct user services. Undernet does have channel registration but you have to apply for it manually and it's only granted for large, stable channels. So you see, DALnet is unique among the large networks in having full services. Please take a minute to read the very short FAQ which answers [why EF/IRCnet have no services](noserv.html) and how to run a channel anyway. Since there are no services, anyone claiming to be MemoServ or offering to help you register a nick or channel is a FAKE!

What this means is, everything is first come, first served. You can own a channel or nickname if nobody else owns it already, and you can keep it only as long as you or your buddies stay connected to the network. In other words, EFnet is a basic do-it-yourself network. It takes some learning to master the [user and channel modes](../irctutorial.html) wisely, but there are other rewards in being on this network. This is the network of choice for people who can read and learn, and do not need 'social services' to take care of them.

If you find that someone else has been using the nick you have registered on DALnet, it is not fair to expect him to change it because you used it on a different network. Every network is independent, he is just as entitled to the nick as you are. A polite discussion with the other person may lead to an agreement, but if not, no IRC operator will /kill to get 'your' nick for you. Nicks are not 'owned' here. It is a good idea to choose a nickname that others are not going to want to fight over. It will help you to have a nickname your friends can consistently find you with.

The same considerations apply if you want to move a channel from DALnet, and there is already a channel with that name here.

There is no channel registration service, so it is your job as channel ops to run a channel properly, including passing ops back and forth to stay op'd, keeping out troublemakers, and defending against attacks. Opers are not responsible for getting channels back. Users on EFnet must learn good channel running skills which will help on any network.

One exception is CHANFIX, which is a pseudo-service that has some of the properties of chanserv in helping to restore large, stable channels. If you lose ops in a channel, CHANFIX may come in and reop the ops. Do _not_ count on it to get you ops back, but sometimes it helps. Likewise, with clear cut cases of external takeovers, CHANFIX can sometimes restore ops to the original ops. Read the [CHANFIX FAQ](../ircd/chanfix.html) to learn how this works, and then ask questions on #IRChelp or #CHANFIX channels.

### File Trading and Security

First, if you haven't yet, please see our guide to [file trading on IRC](../misc/warez.html). It contains some important security tips and pointers.

DALnet has the /dccallow feature. This does not exist on EFnet. Be aware that this feature only 'blocked' file sending on DALnet. DALnet Users who were infected have spread those files on other networks.

We strongly urge you NEVER to go to web sites advertised in channels, or in msgs from people you do not know. Do not click on links, or spams, or click on anything anyone tells you to click on, or accept DCC files from anyone unless you KNOW the person. Do not write or copy/paste commands that people say to do in channels. If you do not understand something, don't do it! There are many tricks to try to get users infected.

Be sure your computer security is up to date. Take a look at our site's [IRC Security](../security/) page. Briefly, here are some of the most important things you should do. Windows users should have the latest OS patches at [http ://windowsupdate.microsoft.com/default.htm](http://windowsupdate.microsoft.com
/default.htm) Run a good antivirus program. If you are running, or have ever run KAZAA, or other peer-to-peer file sharing program, you are at great risk, and may be infected or "hacked" with spyware running in the background to monitor your network usage or give others unauthorized access to your computer. A slow computer is often the first thing people notice. Run the Spyware scanner from [http://www.ad-aware.com](http://www.ad-aware.com/).

### Other Features (or Lack Thereof)

EFnet does **NOT** support any of the following features found on some other nets:

- modeless channels
- +h mode aka "half ops" or "helper"
- nicknames longer than 9 characters
- topic lengths greater than 120 characters (may vary between servers)
- kick message lengths greater than 90 characters (may vary between servers)

In addition, EFnet supports 100 total bans per channel, but that actually includes the sum of bans (+b), ban exemptions (+e), and invite exceptions (+I).

### Finding Help and Other Channels

There are help channels that have the same names as on DALnet, such as

# irchelp, #help, and #mIRC, to name a few.

On Efnet, #dmsetup is the help channel for trojans and viruses (serving a similar role as DALnet's #NoHack). Other users in these channels may be infected and spamming or auto-sending, so be extra careful.

You can get a list of other channels on most clients with the `/list` command, although sometimes this can cause such a flood of information that you get flooded off due to the different way that EFnet servers handle your request. If this happens, or just to learn how to /list without flooding off, see our searchable web channel list at the [IRC Channel List](../chanlist/) page.

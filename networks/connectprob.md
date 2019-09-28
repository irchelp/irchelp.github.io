---
title: IRC Connection Problems
author: Joseph Lo (jolo)
layout: default
license: irchelp
redirect_from:
  - /irchelp/networks/connectprob.html
  - /irchelp/network/connectprob.html
  - /connect/
---

# IRC Connection Problems

by Joseph Lo aka Jolo @ EFnet

updated Oct 16, 2004 (server lists in green are updated manually and not very often, but we show you exactly how to get this information yourself anyway)

This troubleshooting guide is intended for people who already know what IRC [network](/irchelp/networks/) they want to connect to (such as EFnet or DALnet), but cannot succeed even after trying many different servers. Follow these directions step by step until you get connected.

## 1\. Use the built-in server list in your client

Try all of servers listed for a particular network in your program. [mIRC](/irchelp/mirc/) users should download the latest [server list](http://www.mirc.co.uk/servers.ini) which is updated even between mIRC releases (save as "servers.ini" in your main mIRC folder). HINT: Remember to use other ports than the default 6667, such as 6666 or 6668 which may be faster. NOTE: This is just a first step, since such static server lists are by their nature always out of date and incomplete. Read on.

## 2\. Use server lists on the web

Failing the above, try [server lists](servers/index.html) on the web. Some of these are automatically updated and thus guaranteed to be complete and up to date, such as for [EFnet](efnet.txt) and [IRCnet](servers/ircnet.html). You can't download these lists, but you can try the servers manually one by one until you find ones that work. Some servers also have "random" or "round robin" server names, such as irc.efnet.org or irc.efnet.org for EFnet. (You would of course have to know this special server name already, so it may be good to ask on #help for whatever network you chat on to see if they have such a random server name.) When you try to connect to such a server name, it actually redirects you to one of many servers defined by those who run the network. If at first you don't succed, just try again a few times, since you get a different server every time you try, and chances are one will work sooner or later. Read on for more specific advice.

## 3\. I got connected, but I only have 1 server to use!

If you can get connected at all, then you can try to identify the source of the problem and find alternative servers. The 3 most common problems are shown below, then explained in detail in section 4.

1. You are just not authorized, meaning those servers don't want people from your ISP to connect (this is very common),
2. You have no reverse DNS, so that you show up with IP numbers instead of a hostname, and/or
3. Your identd is not working. In all 3 cases, you can use what I will call the "/who trick" to find other servers that allow people like you to connect. Use the `/who` command with appropriate "wild cards" to search for people that have the same ISP or problem that you do. Pick some of those people and use `/whois nickname` to see what servers they are using. mIRC users who can do this very easily with a simple [script](whosearch.mrc) (save as "whosearch.mrc" in mIRC directory, within mIRC do `/load -rs whosearch.mrc` and then search by `/whosearch *.home.com` for example).

## 4\. Dealing with common problems

### 4.1\. No authorization - with valid hostname

If you get error messages like this:

`Closing Link: **something.domain.com** (You are not authorized to use this server)` or

`Closing Link: nickname[blah@@**255.255.255.255**] (You are not authorized to use this server)`

In this case, you have a proper hostname (something.domain.com, sometimes replaced by the bogus "255.255.255.255" instead), but the IRC server does not allow your provider to access it. Just because IRC is free doesn't mean it's a public resource or a right. In fact, each IRC server is privately owned by companies or organizations and open to many people, but not necessarily to everybody. Some servers may only allow people from their own ISP, geographical region, or country to connect. Just be patient and try different servers in your geographic area or country. On networks like EFnet, most of us can find at least 3 or 4 servers out of ~35 that will let us connect. You can find alternative servers using the "/who trick" such as `/who *.domain.com` (notice how I took out the front part of the hostname and replaced it with a "_" which means match anything). mIRC users with our [whosearch.mrc script](whosearch.mrc) can just do `/whosearch_ .domain.com`.

We've done this for a large ISP comcast.net as an example.

#### comcast.net:

`irc.inet.tele.dk irc.scnet.net irc.easynews.com irc.nac.net irc.choopa.net irc.blessed.net irc.blackened.com`

### 4.2\. No authorization - no reverse DNS (unresolvable IP number)

This problem is marked by error messages like this:

`Closing Link: 123.45.6.78 (You are not authorized to use this server)`

Note the IP number (123.45.6.78) which does not resolve to a hostname like in the example in section 4.1 above. Normally, you get an IP number from your Internet Service Provider (ISP), and they also set up their Domain Name Server (DNS) so that the IP will translate into a hostname like something.domain.com. When this "reverse DNS" doesn't work, you are known by just the IP number. NOTE: Sometimes even when you have properly working reverse DNS, the "Closing Link" error message will still show just your IP on certain servers such as irc.mindspring.com.

This is either due to a temporary problem with the DNS at your provider or the IRC server, or your ISP failed to set you up properly. Other than complaining to your ISP or using a better ISP, what's the solution? Use one of the servers that may still allow you to connect. Once you do connect, you can use the "/who trick" to find other servers by doing `/who 2??.*.*.*`, or mIRC users with our [whosearch.mrc script](whosearch.mrc) can do `/whosearch 2??.*.*.*`. As of the date at the top of this page, these EFnet servers allowed at least _some_ people without reverse DNS to connect:

`irc.homelien.no irc.Prison.NET irc.easynews.com irc.weblook2k.com efnet.demon.co.uk irc.isdnet.fr irc.he.net irc.Qeast.net irc.nac.net irc.secsup.org irc.inter.net.il irc.inet.tele.dk irc.daxnet.no` -->

### 4.3\. No identd

`The error message says something like "install identd", or sometimes just "K-lined", or WebTV users see "WebTV can't use that service"`

If you have no identd, after you connect to the IRC server you will see a ~ (tilde) character before your username when you /whois your own nickname, like "joebob is ~foo@@something.com". Large networks like EFnet and DALnet often require identd, an identification protocol that verifies your username. (Geek talk: Designed for multi-user UNIX systems, identd is meaningless on single- user PCs which can use any arbitrary username. Unfortunately, certain insecure machines without identd are frequently exploited to cause IRC abuse, hence the ban against those without identd.)

How you fix your identd depends on what kind of internet connection you have:

- If you have a **direct internet connection** (no sharing or firewalling that you know of):

  - If you use a PC or Mac IRC client like mIRC, PIRCH, or Ircle, it has identd built in already. In mIRC, check to make sure it is enabled: Alt-O | Connect | Identd, check all 3 boxes, see this [figure](identd.gif). Ircle and Snak's identd is always on. If identd is on and doesn't work, you have sharing or firewall issues, see next major section.
  - If you are on a UNIX machine, the administrator must install identd such as [pidentd](http://freshmeat.net/projects/pidentd/). identd is a good, security-enhancing thing, described in the technical specs [RFC 1413](http://www.cis.ohio-state.edu/cgi-bin/rfc/rfc1413.html).

- If you **share or firewall your internet connection**, such as sharing a DSL/cable connection among multiple PCs, or connecting through a proxy/hub/router, or running a software firewall program (including the one built into Windows XP), you should consult our [firewall FAQ](../security/fwfaq.html). In brief, here are your options:

  1. Windows XP has a built-in Internet Connection Firewall (ICF) which breaks identd and DCC. See [Microsoft's help page](http://www.microsoft.com/windowsxp/home/using/howto/homenet/icf.asp) for how to disable it. If you want to keep ICF on, you'll have to modify it, see the next section.
  2. The proper networking fix is to open up incoming TCP/IP on port 113 for identd and a range of unprivileged ports above 1024 for DCC, and redirect traffic on those ports to your local IP number behind the firewall. (By default, mIRC uses random ports in the 1024-5000 range for DCC, but you can constrain that to something like 1024-1034 in the DCC options, and open up those same ports in the firewall.) Exactly how all this is done depends on your firewall, consult your documentation and our [firewall FAQ](../security/fwfaq.html).
  3. Alternatively, you may have a real computer acting as the gateway/proxy. If you can run an IRC client like mIRC on the gateway machine and identd works fine, then you can try to install a "dummy" identd program on that gateway machine, which will handle all identd requests for the shared machines. It does _not_ help to put identd on the machines behind the gateway. Beware - using a dummy identd may make all your machines appear to be clones with the same user@@hostname, which many servers/channels do not allow and can get you banned.

    - If the gateway computer is running Windows or Mac OS, install this [Windows identd](identd/identd15.zip) or [Mac OS identd](http://hyperarchive.lcs.mit.edu/HyperArchive/Archive/comm/inet/ident-d.hqx) on the gateway machine.
    - If the gateway is a UNIX masquerading firewall, install [midentd](http://freshmeat.net/projects/midentd/). For help, try asking on *nix help channels like #unixhelp, #linuxhelp, or #nixhelp.

If all else fails, use servers that don't require identd, such as those listed below. Once you connect with one, find others by doing `/who *~*` or mIRC users with our [whosearch.mrc script](whosearch.mrc) can do `/whosearch *~*`.

As of the date at the top of the page, these EFnet servers allowed at least _some_ people without identd to connect:

`irc.arcti.ca irc.desync.com irc.blessed.net irc.he.net irc.umich.edu irc.easynews.com irc.scnet.net irc.mzima.net irc.avalonworks.ca irc.blackened.com irc.homelien.no efnet.xs4all.nl irc.daxnet.no efnet.demon.co.uk`

### 5\. Other common problems

**"No more connections allowed in your connection class"**

In English, this means the server is full for people like you, at least for now. People from different providers might still be able to connect. You might see this sometimes on servers that you were able to connect to just recently. Try a different port on the same server (other than 6667) or try a different server for a while.

**"Unable to resolve IRC server name"**

If you try many servers from many networks and they all fail with something like this, then the problem is on your end. Either your provider's DNS is not working or your PC's networking is not set up properly to access that DNS. A good check is to see if you can still use your PC to do other activities like browsing the web. If you are a mIRC user, you can get more information from the relevant [mIRC FAQ](http://www.geocities.com/~mirc/faq6.html#section6-5).

**"Connection timed out"**

This vague error just means you couldn't establish a connection (as if you didn't know this already). If you get it a lot, try some of the servers listed above which are tolerant of identd or reverse DNS problems, in case that is your actual problem and you're just not getting the right error message. If that still doesn't work, it's possible that your ISP is blocking the connection attempt. This is often the case with school or company firewalls designed to discourage or ban IRC activity. The only way to be sure is to ask your network administrators or information technology people. You can sometimes get around this by using port numbers outside the usual 6660-9 range, such as irc.mcs.net port 31337 or irc.lightning.net port 5555, but you are responsible for the potentially serious consequences of intentionally ignoring your school or company's policies. Those rules exist for a reason, and breaking them is usually not wise.

## 6\. I keep getting disconnected!

This is a little different, let's assume you can connect just fine, but you get disconnected a lot. Here are some common problems.

**"Ping timeout" or "Connection reset by peer" or "Software caused connection abort"**

If this happens just once in a while, don't worry. The network connection between your client and the server got broken, it happens. Some people using Windows seem to have particularly unstable winsock, welcome to the wonders of Windows. The actual error message is not very informative or even reliable, and there is no fix beyond making sure Windows is up to date with the latest patches. Note that pinging a server will have no effect for this problem. If it's happening repeatedly or only when you visit certain channels or talk to certain people, then you may be the victim of a [denial of service attack](/nuke) (better known as "getting nuked"). Don't immediately assume something evil is going on, though, since the vast majority of these disconnects are due to natural causes. Try using different servers/ports, or avoid your usual nickname and channels for a while, see if the problem goes away.

**"Excessive idle"**

A minority of servers (irc.prison.net on EFnet for example) don't like you to idle, so don't. Just use other servers which don't mind. Do not break server rules by using anti-idle scripts, that's lame, unncessary, and often not effective any way (since they know all the usual tricks too). Intentionally breaking their rules may even earn you a k-line (server ban).

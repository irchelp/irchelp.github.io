---
title: Firewall FAQ
author: Stephanie Daugherty (sdaugherty), Joseph Lo (jol0), RuyDuck, Vamps
layout: default
license: CC-BY-SA-4
redirect_from:
  - /firewall/
  - /irchelp/security/fwfaq.html
  - /irchelp/clients/unix/security/fwfaq.html
  - /irchelp/clients/windows/security/fwfaq.html
---

# Firewall FAQ

by Stephanie Daugherty -- with contributions from Jolo,
RuyDuck, Vamps, and others

This page is part of IRChelp.org's security section at [http://www.irchelp.org/irchelp/security/](http://www.irchelp.org/irchelp/security/)

updated Mar 16, 2005

## Introduction

Many users are on IRC from systems behind firewalls. Firewalls can provide an
additional layer of security for systems which would otherwise be directly
exposed to the internet, especially those systems with 24/7 connections to the
internet. This guide provides a complete overview of technical terms and
issues related to firewall use, then at the end there are lots of useful links
to more specific or advanced guides as necessary, such as specific
recommendations for firewall software, or fixing DCC send problems for Linksys
routers, Windows XP, etc.

You should read through the whole table of contents below (it's just 18
questions) to make sure you know what is in this FAQ. That way you can just
jump to the questions that affect you. Then, if you're trying to solve a
specific problem, you may elect to look through the links at the very end.

### Disclaimer

Some of the solutions and advice presented here may have an adverse affect on
the security of a firewall and the systems protected by it. If you do not have
a thorough understanding of your network, do not attempt to apply any of the
information presented, and instead seek direct assistance from a network
security professional. We do not take any responsibility for your use of the
information presented here (see our official
[disclaimer](../credit.html#disclaimer)). USE THIS FAQ AT YOUR OWN RISK.

## Table of Contents

  1. What is IRC?
  2. What is a firewall? (including software firewalls e.g. ZoneAlarm, Windows XP ICF)
  3. What is a proxy?
  4. What is Network Address Translation (NAT)? (including cable/DSL modem and router)
  5. What is DCC?
  6. What is identd?
  7. Why do IRC servers require identd?
  8. "Spoofing"? Whats that?
  9. Will a firewall protect my system?
  10. Security Policy?
  11. What are public (routable) addresses?
  12. What are private (non-routable) addresses?
  13. How does a firewall interfere with DCC?
  14. How does NAT interfere with DCC?
  15. How does a firewall interfere with identd?
  16. How does NAT interfere with identd?
  17. What about the so-called personal firewalls? Are they any good?
  18. Where can I get specific information about fixing firewall-related problems?
  
## FAQ

1. **Q: What is IRC?**

   **A:** Internet Relay Chat. If you are asking this question, you are reading the wrong FAQ. Go see our [general help files](../faq.html).

2. **Q: What is a firewall?** (including software firewalls e.g. ZoneAlarm, Windows XP ICF)

   **A:** Traditionally, a firewall has been a dedicated piece of hardware meant to allow two networks to communicated in a limited way. A typical setup is to allow users behind the firewall to access web pages and email without allowing users on the outside to access any computers on the internal network. In recent years, software firewalls have come into use, and they pose a cost effective solution for many users, such as those with home or small office broadband networks. Note that Windows XP (prior to SP2) comes with a software firewall built in called Internet Connection Firewall, which is often the source of connection problems. Windows XP systems running Service Pack 2 have a much more functional "Windows Firewall" which replaces the problematic "Internet Connection Firewall". (See help links in Firewall Products section below.)

3. **Q: What is a proxy?**

   **A:** A proxy is an application level gateway, typically placed between two networks. Proxies have various uses, including use in a firewall to further isolate two networks. Proxy software is often marketed as a way to share a single internet connection between computers.

4. **Q: What is Network Address Translation (NAT)? (including cable/DSL modem and router)**

   **A:** Quite simply, network address translation is a way to rewrite the addresses of packets as they travel through a system. Typical uses include allowing several computers to share a single internet connection. NAT can also reinforce the security provided by a firewall, and in some cases provide equivalent levels of security. Typical devices that perform NAT functions for the average computer user may be routers, cable/DSL modems or hardware firewalls that allow multiple computers to connect to it, or computers dedicated to the task of "masquerading" or "internet connection sharing" (ICS). If you are a cable/DSL modem/router user and you're having problems, first look through questions 1-17 to understand the terminology, then see #18 at the bottom to find specific help for many router setups.

5. **Q: What is DCC?**

   **A:** DCC stands for DIRECT CLIENT TO CLIENT (see [technical specification](../rfc/dccspec.html)). DCC is a crude hack used to allow two IRC clients to communicate directly without involving the IRC server. Typical uses include accessing IRC robots (or 'bots) for short, extended private conversations between two users, and [file transfers](../security/warez.html).

6. **Q: What is identd?**

   **A:** identd is a server for the "Identification Protocol" defined by [RFC 1413](http://www.cis.ohio-state.edu/cgi-bin/rfc/rfc1413.html) [ext. link]. Essentially, it provides for the accountability of individual users beyond the local system. It was originally created at a time when most systems on the internet were large, multi-user systems. It is still used today, mostly by IRC, SMTP, and FTP servers.

7. **Q: Why do IRC servers require identd?**

   **A:** Even though identd is intended for multiuser systems, IRC servers typically require it to be installed, even for single user systems. One reason for this is that it increases the technical difficulty of "spoofing" attacks (see next question). Another is that operators of unsecured proxies typically don't provide for identd. By requiring identd, the servers reject potentially abusive connections from those proxies.

8. **Q: "Spoofing"? What's that?**

   **A:** "Spoofing" means using various means to forge the addresses on network traffic so that it looks like the traffic came from another machine. Traditional internet protocols provide little protection against this, and anyone with sufficient technical knowledge can often pull off an attack of this type. In this way, someone could masquerade as another user, possibly gaining ops in one of that users channels, or damaging that users reputation in the process. And that's just the tip of the iceberg, any security relying on addresses alone can be completely compromised with relative ease in this manner, and security partially reliant on the "security" of addresses is significantly weakened.

9. **Q: Will a firewall protect my system?**

   **A:** It will help. There is no such thing as a magic bullet that will provide 100% protection for every possible threat 100% of the time. That said, a firewall can be a very effective part of a good security policy.

10. **Q: Security Policy?**

    **A:** A security policy is a set of rules for keeping systems secure. Any system connected to the internet, directly or indirectly, should have a security policy. For a typical home system, this doesn't have to be very complicated, and it doesn't have to exist as a formal document, just a set of rules that set out what you are trying to accomplish, and what anybody using your computers is expected to do to protect them. For more information, see [RFC 2196](http://www.cis.ohio-state.edu/cgi-bin/rfc/rfc2196.html) and also the CERT guide to [home network security](http://www.cert.org/tech_tips/home_networks.html) [both ext. links].

11. **Q: What are public (routable) addresses?**

    **A:** Public addresses are addresses which are routable over the internet, and which can be made directly accessible to hosts on the internet. Public addresses are always formally assigned by one of the regional address registries, such as ARIN, RIPE, or APNIC, and may be sub-delegated (reassigned) in part by the providers which they are issued to. As the cost of IP registration and assignment via the regional registries is prohibitive for smaller networks, small networks and smaller ISPs almost always receive their IP address assignments as a sub-delegation from their upstream providers.

12. **Q: What are private (non-routable) addresses?**

    **A:** Private addresses are addresses which are not intended to be routable over the internet. They are typically used for home networks, and in other applications where direct accessibility is not required. In the past, it was common practice to choose any random range of addresses for this purpose. This practice is depreciated, and there are presently several blocks of network addresses permanently reserved for private use. This prevents the problems that may occur when a network not originally intended to be connected to the internet is later connected to the internet.

    [From [RFC 1918](https://tools.ietf.org/html/rfc1918), ext. link]

    The Internet Assigned Numbers Authority (IANA) has reserved the following
    three blocks of the IP address space for private internets:

    10.0.0.0 - 10.255.255.255 (10/8 prefix)

    172.16.0.0 - 172.31.255.255 (172.16/12 prefix)

    192.168.0.0 - 192.168.255.255 (192.168/16 prefix)

    Unless you have other addresses formally assigned by your provider or regional
    internet registry (very unlikely for a home network), these are the ONLY
    addresses which are acceptable to use for internal use. These addresses will
    never be assigned for other purposes, preventing address "collisions" on the
    global internet.

13. **Q: How does a firewall interfere with DCC?**

    **A:** DCC uses randomly selected ports, typically in the range 1024-65535 (mIRC uses 1024-5000 by default, this can be constrained in DCC options). As it is common security policy to block all "unused" ports, a firewall is often configured to block all traffic outside of common ports, or to block all inbound traffic not intended for authorized services, such as web servers. In the DCC protocol the receiver initiates the connection to the sender, so a common problem is that a firewalled user can receive but not send. In this case the firewall is not restricting the outbound connection, therefore the receiver can connect to the sender to retrieve the file, but when the roles are reversed, with the firewalled user sending, the receiver cannot connect through the firewall to retrieve the file.

    Solutions for users who cannot send or receive because of a firewall:

    * Disable the firewall. Probably the easiest solution, but also the least desirable, as you lose all security provided by the firewall this way.
    * Configure the firewall to permit outgoing connections on any port, if it fits within your security policy.
    * Configure the firewall to permit incoming connections to a range of ports, and configure clients to use those ports for DCC send, unless the ability to transmit files outside of your network is against your security policy.

    Solutions for users who cannot send because of a firewall.

    * Configure the firewall to permit incoming connections to a range of ports, and configure clients to use those ports for DCC send, unless the ability to transmit files outside of your network is against your security policy.

14. **Q: How does NAT interfere with DCC?**

    **A:** NAT implementations are typically not aware of ports being opened on client systems behind the NAT gateway, and generally have no idea that they need to forward the incoming connections needed for DCC SEND to work. Generally, most NAT implementations will allow receiving files, but won't allow sending them. There are a few ways to work around this:

    * Use the DMZ feature in many cable & DSL routers. This feature causes all untracked connections to be redirected to a single internal machine. Be aware that the machine is then effectively exposed to the internet, as if it were directly connected without the router. This method will weaken the security of the machine exposed in this manner, and will only get DCC working properly for that one machine.
    * Forward a range of ports to each machine which needs to be able to send files via DCC, and configure the client to use those ports. This takes a little more work, and is more secure, but only a few transfers can be managed at the same time, and the ports for those transfers become easier to guess, potentially enabling someone to "steal" a DCC send by connecting before the intended receiver does.
    * Use an implementation which tracks IRC connections, and monitors them for the CTCP handshake used to initiate a DCC transfer, automatically forwarding the needed ports.
    * Implement a SOCKS5 proxy server, and DCC via it. Just make sure you configure the proxy to only allow authorized users to connect, misconfigured proxy servers are commonly used to mask the source of malicious activity, by redirecting from one internal host to another internal host. Also, a misconfigured proxy server can be used to gain access through a firewall, potentially subverting that firewall.
    * Implement special client software which interacts with the firewall to request port forwardings for DCC transfers transparently to the user. This would be difficult, but would work.

15. **Q: How does a firewall interfere with identd?**

    **A:** Firewalls are often configured to block unused ports, particularly those in the 1-1024 range of "privileged" ports, which under many operating systems, require administrative privileges to run services under. Firewalls also providing NAT further interfere with identd, see next question for more details.

16. **Q: How does NAT interfere with identd?**

    **A:** NAT is typically used in a one-to-many configuration, that is, one routable IP address is shared between several systems. Identd is designed to identify the "owner" of a connection on a single, multiuser system. Typical Identd implementations do not account for NAT, and therefore will respond "unknown" for systems behind a NAT gateway. Further complicating the situation is the fact that the gateway may translate ports as well, and that to properly implement Identd on a network running NAT, an implementation must do the following:

    * Identify the machine for which the Identd request is intended for behind the NAT gateway, and direct that request to that machine. Once forwarded to the machine responsible for the network, identify the user responsible for that connection, accounting for differences caused by port translation. OR
    * Respond to every request with a generic reply, simply to satisfy the requester's requirement that clients be running identd. Considerably easier to implement, but this isn't exactly true to the spirit of [RFC 1413 for identd](http://www.cis.ohio-state.edu/cgi-bin/rfc/rfc1413.html) [ext. link].

    There are a few implementations out there which are capable of solving these
    problems, two that I am aware of for *nix are oidentd and midentd. Note that
    if you're using mIRC behind something like midentd, you need to set mIRC to
    turn off the default identd setting of "enable only when connecting".

17. **Q: What about the so-called personal firewalls? Are they any good?**

    **A:** While they can provide some limited protection, software or personal firewalls have many weaknesses. No matter what the manufacturer of any personal firewall would like you to believe, there is no software product which will protect you against all types of attacks, nor from an "internal" compromise, that is, if you (or somebody else with access to your PC) run software on your machine which takes control of that machine and subverts the firewall. **While we STRONGLY recommend that a hardware firewall be used, in most circumstances, you are better off with a software firewall than with no firewall, due to the difficulties in closing off the many insecure services bundled with Windows. **We will list the pros and cons of using personal firewalls below.

    **Personal firewall PROs**

    * A personal firewall can be used to prevent access to certain services built into Windows which are notoriously difficult or even impossible to disable, such as NetBIOS.
    * A personal firewall can prevent certain [Denial Of Service attacks](../nuke/), most notably disconnects due to [spoofed unreach aka "click"](../nuke/info.html#click) - this is perhaps its most important (and some would say only unique) contribution to your security.
    * A personal firewall can block inadvertent holes in your computer's security if you unintentionally leave open services such as file or print sharing or an FTP daemon. Instead of relying on a firewall, however, you should check your security (try the [Shields UP!](http://grc.com/x/ne.dll?bh0bkyd2) site) and just fix these vulnerabilities.
    * This is barely a pro at all. Personal firewalls can block the action of certain[Trojan horses](/security/trojan.html), by preventing them from "phoning home" and by preventing a would-be attacker from connecting to them, _but_ this is false security! Trojan horses can already circumvent personal firewalls, and this will become typical behavior. The _only_ effective protection against trojan horses is to totally avoid [untrusted software](warez.html), and scan even "trusted" software with an up-to-date virus scanner. Even then, active scripting vulnerabilities which are unfortunately common in popular browsers and mail programs may still expose your system to viruses or trojan horses. While no firewall can totally protect against an attack from within, dedicated hardware firewalls stand a much better chance at blocking a trojan's activity. Even then, you should be aware that a trojan can disguise its network traffic as legitimate traffic to pass through a firewall unaffected, or even worse, can attach to or interface with an application which is normally allowed to access the internet, circumventing the "per-application" restrictions in certain personal firewalls.
    * A personal firewall can make it impractical for others to port scan you to identify your vulnerabilities. It does so by making scanning more time consuming, by preventing the usual RST response on closed ports so that the scanner has to wait for the connection attempt to time out. The personal firewall can also defeat automated scanning for active hosts by disabling ICMP ECHO replies (aka "pings").

    **Personal firewall CONs**

    * Since a personal firewall runs on the same computer as it protects, it can be reconfigured, disabled, or otherwise subverted by malicious software running on your computer.
    * Personal firewalls **cannot** protect you against serious floods, because it is only software and is run on the tail-end of your relatively slow connection, rather than at the ISP's high-bandwidth side. Consider if a river is threatening to overflow, you have to try to stop the flood with barriers at the river banks. If you don't do that, by the time 10-foot flood waters surround your house, it's useless to try to stop it just by sandbagging your front door. This is a very important point, so let me repeat it: No matter what clever software or hardware you run at home, you will always be vulnerable to flood attacks.
    * Personal firewalls are very noisy. They report normal background traffic as harmful activity, leading to panic among users of personal firewalls who in turn cause a great deal of grief for ISP abuse desks, who now receive endless reports of "attacks" every time someone executes a totally innocuous "ping" command.
    * Personal firewalls are not a "plug and play" magic fix that you download, run, and forget. They take time to set up, can be confusing to people without a lot of computer experience, and require constant configuring and updating to adapt to new attacks.
    * Personal firewalls often get in the way of your legitimate network activity. Although most firewalls are configured by default to allow things like web browsing, they may need to be taught about DCC, identd, ICQ, net gaming, etc.
    * Personal firewalls cannot block, find, or remove traditional viruses which do not generate any network activity; that is the role of virus-scanning software. For example, if you get an email virus attachment, your firewall will let it through since email by itself is an allowed activity, and if you run the virus designed to erase your disk, it can still do so, since that doesn't involve any network activity that the firewall monitors.
    * Many ISPs won't support users with firewalls. For example, Road Runner requires firewalls be totally uninstalled before any advanced technical support. They just create too many support headaches. Indeed, the first troubleshooting step for a user with a firewall should be to make sure the firewall isn't interfering _before_ calling support.
    * Some providers legitimately perform certain probes to determine if a connection is still active. Blocking these probes could cause you to get disconnected.
    * Blocking TCP RST replies on closed ports has the side effect that any connection attempt to a closed port takes an extremely long time (sometimes over a minute) to fail. This can affect mail, ftp, and IRC servers which attempt to make an identd connection, and expect it to succeed or fail quickly.

    For more information, see the [home PC firewall guide](http://www.firewallguide.com/) and this much more [critical view of "personal firewalls"](http://www.samspade.org/d/persfire.html) [ext. links].
    Almost all reasonably adequate personal firewalls are commercial software costing anywhere from $30 to much more, often with additional annual "update" license fees. Note that Windows XP comes with its built in [Internet Connection Firewall](http://www.microsoft.com/windowsxp/pro/using/howto/networ king/icf.asp).

18. **Q: Where can I get specific information about fixing firewall-related problems?**

    **A:** The above should arm you with the proper general knowledge for fixing your problem, provided you consult with the documentation that came with your firewall, router, etc. In case that's still not enough, the following links may be useful [almost all external links]:

    Some general resources:

    * **[Port Forward](http://www.portforward.com/routers.htm)**: A great site that contains help for setting up a wide range of firewalls and routers.
    * [Firewalls](http://dmoz.org/Computers/Security/Firewalls/): an objective list from the [Open Directory Project](http://dmoz.org/about.html) of all things related to firewalls - products, help guides, etc.
    * [DALnet ident FAQ](http://kline.dal.net/exploits/ident.htm): DALnet made this FAQ dealing with ident problems related to routers, proxies, ICS, and firewalls.

    Firewall products (hardware and software):

    * **Linksys Routers:** here are 2 illustrated guides teaching you how to do the port forwarding, from [NewIRCusers.com](http://www.newircusers.com/router.html) and [Kareno.net](http://kareno.net/LinkSys/).
    * **[SMC Router setup for IRC](smc.txt)**
    * **[D-Link router setup for IRC](http://support.dlink.com/faq/view.asp?prod_id=1337&question=port+fowarding+mIRC)**
    * [NetGear Support](http://support1.netgear.com/netgear1/) - general help for NetGear routers, not too specific, might be better off extrapolating from 1 of the above 2 links instead.
    * [Personal Firewalls](http://dmoz.org/Computers/Security/Firewalls/Products/Personal_Firewalls/): an objective list of products by the Open Directory Project.
    * [Home PC firewall guide](http://www.firewallguide.com/): more subjective but shorter list of firewall products, setup info.
    * **Internet Connection Firewall (ICF)** - Software firewall built into Windows XP, when enabled this breaks identd and DCC send. You can turn ICF off completely using the directions at this [Microsoft help page](http://www.microsoft.com/windowsxp/pro/using/howto/networking/icf.asp), or modify the settings to enable identd and DCC send using this guide to [Configuring the Windows XP Firewall](http://www.mishscript.de/ircguide/appb1.htm).
    * **Windows Firewall **- This is a more functional replacement for the problematic Internet Connection Firewall present in Windows XP. It's added by installing Service Pack 2, and for users without any other firewall protection, its recomended that this firewall be left enabled. Windows Firewall still only affects incoming connections, however, the ability to add exceptions on a per-application as well as a per-port basis has been added. Detailed information on this firewall can be found at this [Microsoft Support Knowledge Base article](http://support.microsoft.com/default.aspx?kbid=875357). Note that unlike the Internet Connection Firewall, if you turn off the Windows Firewall completely and don't have another recognized firewall application installed, you'll be periodically reminded to re-enable it
    * [Zone Labs, Inc.](http://www.zonelabs.com/) - makers of ZoneAlarm personal firewall
    * [ZoneAlarm - IRC issues](zonealarm.txt) - specific fix for identd and DCC issues with this product.
    * [Norton Personal Firewall](http://www.symantec.com/sabu/nis/npf/) (formerly AtGuard)
    * [McAfee Personal Firewall](http://www.mcafee.com/myapps/firewall/ov_firewall.asp?) (formerly Conseal)

    For mIRC or Windows:

    * [Proxies and Firewalls](http://www.mirc.co.uk/help/proxies.html), by the makers of mIRC, provides Windows help with proxies.
    * [DCC Help](http://www.mirc.org/dcc.shtml) - a list of URLs from DALnet #mIRC helpers, includes many of the ones listed below and then some, such as specific fixes for certain router brands or software firewalls.
    * [mIRC and ICS](ics.htm), a log of an IRC chat where users discuss how to do NAT and proxy and allow DCC/CTCP protocols to continue to function in mIRC.
    * [Using mIRC with...](http://www.borg.com/%7Echuck/using.htm) ICS, Firewalls, and Wingate. Detailed configuration advice, but assumes you know more than the beginner.
    * [Microsoft ICS Related FAQ](http://www.homenethelp.com/web/faq/sharing-ics.asp) - from HomeNetHelp.com, includes help on installation, using protocols like IRC, ICQ, etc.
    * [mIRC message boards - connection issues forum](http://trout.snt.utwente.nl:82/postlist.pl?Cat=&Board=connectionissues): when all else fails, the mIRC forums are a great place for the patient reader to dig up specific information for that weird router brand, or just to ask your question.
 
    For UNIX/Linux/Mac OS etc.:

    * [Ircle and firewalls FAQ](http://www.ircle.com/firewallfaq.shtml) for Mac OS
    * [Mac OS X Security](http://www.apple.com/macosx/technologies/security.html) - Apple's official site
    * [Toward a Hack-proof Mac](http://www.businessweek.com/technology/content/jan2002/tc20020118_5251.htm) - a plain-English Business Week story describing the risks of OS X and firewall issues.
    * [BrickHouse](http://www.apple.com/downloads/macosx/networking/brickhouse.html) and [FireWalk](http://www.apple.com/downloads/macosx/internet_utilities/firewalkx.html) - GUIs for configuring Mac OS X's firewall.
    * [Setting Up a Firewall Under OpenBSD](http://www.onlamp.com/pub/a/bsd/2000/07/05/OpenBSD.html) by O'Reilly
    * [Linux Network Address Translation](http://linas.org/linux/load.html): theory and specific application of firewall and NAT technology for Linux
    * [Linux IP Masquerade Resource](http://ipmasq.webhop.net): definitive source and resource for Linux IP masquerade information and downloads. Good basic introduction information from the people writing the IPMasq HOWTO for Linux.
    * [Setting up OpenBSD 2.7 as a cable NAT system](http://www.bsdtoday.com/2000/July/Contribution236.html)
    * [OpenBSD Networking FAQ](http://www.openbsd.org/faq/faq6.html) - includes NAT/Firewall
    * [Setting up a FreeBSD system as a NAT/Firewall/Router](http://www.fc.net/jeff/natsetup.htm)
    * [FreeBSD Networking Articles](http://www.defcon1.org/html/Networking_Articles/networking_articles.html): a really nice resource with articles on just about every networking issue imaginable, brought to us by our EFnet neighbors at #freeBSDhelp

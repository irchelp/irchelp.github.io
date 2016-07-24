---
title: Denial of Service or "Nuke" Attacks
author: Joseph Lo
layout: default
redirect_from:
  - /nuke/
  - /irchelp/security/nuke.html
---
# Denial of Service or "Nuke" Attacks

By Joseph Lo Ph.D. aka Jolo with help from stephanie, wmono, mendel, Dancr,
GreyFoxx, wcoast, and many others.

This page is part of IRChelp.org's security section at [http://www.irchelp.org
/irchelp/security/](http://www.irchelp.org/irchelp/security/)

partly revised Mar 12, 2005

## Introduction

The purpose of this page is to provide information and defenses against Denial
of Service (DoS) attacks, which cause networked computers to disconnect from
the network or just outright crash. For example, a teenager using very simple
DoS tools managed to cripple the web sites of large companies like Yahoo and
Amazon during a series of attacks in February 2000 (see this [CNN article](htt
p://www.cnn.com/2000/TECH/computing/02/09/cyber.attacks.01/index.html)). These
attacks are sometimes also called "nukes", "hacking", or "cyber-attacks", but
we will use the technically correct term of DoS attacks.

DoS attacks are very common but they are not a joking matter. In the US, they
can be a serious federal crime under the [National Information Infrastructure
Protection Act of
1996](http://www.usdoj.gov/criminal/cybercrime/compcrime.html) with penalties
that include years of imprisonment, and many countries have similar laws. For
example, Jeffrey Lee Parson, the 19 year old who wrote a variant of the
Blaster worm and used it to attack 48,000 computers, was sentenced to 18
months in prison in January 2005, and may additionally have to pay a
substantial fine. At the very least, offenders can lose their Internet Service
Provider (ISP) accounts, get suspended or fired if school/work resources are
involved, etc.

Often the victims are people on [Internet Relay Chat](http://www.irchelp.org/)
(IRC), but DoS attacks do not involve IRC servers in any way, so [IRC
operators (IRC ops)](/irchelp/ircd/opermyth.html) cannot stop or punish the
offenders. If you are attacked, try not to take it personally and do _not_
retaliate, or else you will be breaking the law yourself and probably just
inviting a much more determined new attack. Instead, read this page to learn
more about these attacks, make sure your computer is patched against known
weaknesses, and if necessary consider getting some protective "firewall"
software. Denial of service should not be confused with [other
attacks](../security/trojanterms.html) like viruses, Trojan Horses, and
cracking or "hacking".

There are two types of DoS attacks, both of which are described in the next
major section:

  1. **Operating System attacks**, which target bugs in specific operating systems and can be fixed with patches.
  2. **Networking attacks**, which exploit inherent limitations of networking and may require firewall protection.

* * *

## Operating System Attacks

These attacks exploit bugs in a specific operating system (OS), which is the
basic software that your computer runs, such as Windows XP. In general, when
these problems are identified, they are promptly fixed by the company such as
Microsoft, so if you frequently apply the latest security patches, you greatly
reduce this vulnerability. All Windows users should regularly visit
Microsoft's [Windows Update Site](http://windowsupdate.microsoft.com/) which
automatically checks to see if you need any updates. If possible, set your PC
to check for updates automatically and at least weekly.

## Networking Attacks

These attacks exploit inherent limitations of networking to disconnect you
from the IRC server or your ISP, but don't usually cause your computer to
crash. Generally it doesn't matter what kind of operating system you use, and
there is essentially nothing you can do personally to defend against the
attacks. Even large companies like Yahoo, Amazon, and Microsoft have been
crippled by such large scale attacks. Network attacks include outright floods
of data to overwhelm the finite capacity of your connection, spoofed
unreach/redirect aka "click" which tricks your computer into thinking there is
a network failure and voluntarily breaking the connection, and a whole new
generation of distributed denial of service attacks (although these are seldom
used against individuals unless you've really upset somebody).

Just because you got disconnected with some unusual error message such as the
ubiquitous ["Connection reset by peer"](http://10053.notlong.com) (external
link) for Windows users doesn't mean you got attacked. Almost all disconnects
are due to natural network failures. On the other hand, you should feel
suspicious if you get disconnected repeatedly, especially if it happens only
when you frequent certain IRC channels or talk to certain people. (If that's
the case, shouldn't you really just avoid these troublemakers?)

**What can you do about networking attacks?** If the attacker is flooding you, you essentially must have a better connection than he does, or get your ISP involved in protecting you.

**IRC users can hide their actual hostname/IP** by connecting indirectly via a relay or proxy, a separate account or computer which acts as an intermediary so that you appear to be using a different account entirely. This can be effective against small attacks especially if you run a relay on a shell service account which tends to have more bandwidth than the attacker's connection. Of course, the attacker can still use many different accounts to conduct a distributed DoS attack, just like how they took down the major e-commerce companies repeatedly in recent years. (Note that there is no such thing as a "free proxy" - those are just unsecured computers whose owners didn't set up their proxy security properly, or worse yet, the machine has been compromised. Using those machines is both illegal and inappropriate - after all, would you like it if dozens of random strangers were stealing your processor, memory, and bandwidth?)

**So what can my ISP to do to help?** Your ISP can set up a firewall which stops the flood before it ever gets to you. If the attacks are serious enough, your ISP may even involve law enforcement to help catch the attackers. Unfortunately, many ISPs are understaffed or inexperienced at handling the huge number of both false and legitimate complaints filed, so customers get ignored and nothing is done. If that is the case, you essentially need to steer clear of the attacker and wait for them to get bored (a surprisingly effective technique) or change ISPs.

**What about setting up my own firewall?** This is one of the most frequently misunderstood issues in network security. Having your own personal firewall is useless against an external flood. At best, it may let you record the source of the attacks. If the attacker is dumb enough to be using his own account to attack you, then you may be able to get his account shut down. In most cases, however, the attacks come from tens or hundreds of computers which have been hijacked through viruses, so the best you can do is share those logs with your ISP and hope they can block the attacks for you. That is why we do **not** recommend average users go and download personal software firewalls blindly! The subject of firewalls is covered in our [firewall FAQ](../security/fwfaq.html) which includes a detailed discussion on [personal software firewalls](../security/fwfaq.html#17).

* * *

## More Information and Help

**[Microsoft's Windows Update](http://windowsupdate.microsoft.com)** [external link]     Allows you to easily identify, download, and install security patchs for Microsoft Windows operating systems.

**[CERT Home Security](http://www.cert.org/homeusers/)** [external link]      Comprehensive information about home computer security. Probably the best home user resource out there - it's complete, and it's accurate, and if users will follow it, they'll avoid 90% of the most common attacks.

**[Reporting Attacks](report.html)**     Learn about your (limited) options for reporting abusers or seeking revenge.

**[Tracing & Monitoring](trace.html)**     Check out your (limited) options for tracing or monitoring nukers.

**[Firewall FAQ](../security/fwfaq.html)**     Technical discussion of problems involved with using IRC from behind a proxy, firewall, or NAT gateway. Includes links for specific fixes for identd and DCC problems.

**[BugTraq](http://www.securityfocus.com/)** [external link]     This is the definitive source of information (and misinformation too!) when it comes to attacks, bugs, exploits, etc. It is _not_ intended for typical users because it is extremely technical and can be very hard to sort through even for expert programmers and system administrators. There have been ample examples of outright hoaxes published on this mailing list which have led to a lot of unnecessary panic and confusion.

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

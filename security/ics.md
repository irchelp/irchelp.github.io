---
title: mIRC and ICS
author: Wayne3, Jeepster
status: historical
layout: default
---
**Ed. note: This page was rescued from ircworks.com when it got
discontinued. Links may or may not work, it is maintained here just for
the information contained on this page itself. -Jolo**


mIRC and ICS

dumped by Wayne3, phrased by Jeepster

# General Introduction
{: .no_toc}

* auto-gen TOC:
{:toc}


**Good Info On Other Sites**

LinkSys: [http://www.practicallynetworked.com/support/linksys\_router\_help\_pg4.htm\#mIRC](http://web.archive.org/web/20030810152446/http://www.practicallynetworked.com/support/linksys_router_help_pg4.htm#mIRC)<br>
LinkSys Tutorial: [http://kareno.net/LinkSys/](http://web.archive.org/web/20030810152446/http://kareno.net/LinkSys/)<br>
NetGear Router: [http://jason-n3xt.org/melio/MIRCNETGEAR.htm](http://web.archive.org/web/20030810152446/http://jason-n3xt.org/melio/MIRCNETGEAR.htm)<br>
Win XP & mIRC: [http://toidyman.net/xp-dcc/](http://web.archive.org/web/20030810152446/http://toidyman.net/xp-dcc/)<br>
Proxies: [http://www.mirc.co.uk/help/proxies.html](http://web.archive.org/web/20030810152446/http://www.mirc.co.uk/help/proxies.html)<br>
ICS/Firewalls/Wingate: [http://www.borg.com/\~chuck/using.htm](http://web.archive.org/web/20030810152446/http://www.borg.com/%7Echuck/using.htm)<br>

**More Info& Tutorial links at bottom of the page**

**I**nternet **C**onnection **S**haring (ICS) is becoming very popular
at both home and work.  One of the drawbacks to this has been loss of
**D**irect **C**lient to **C**lient (DCC) capability while using mIRC. 
Usually the individual on the home network could receive DCC chats and
file sends, but they could not initiate them.  This is due to the nature
of the **C**lient **T**o **C**lient **P**rotocol (CTCP) that DCC derives
from. ([offsite ctcp/dcc protocol
info](http://web.archive.org/web/20030810152446/http://www.invlogic.com/irc/ctcp.html))

Not being an **L**ocal **A**rea **N**etwork (LAN) kind of user, I
decided it was time to find someone who is knowledgeable and willing to
spend some time sharing ideas on how to make mIRC more functional when
used on a LAN, Home Network, or ICS environment.  Wayne3 kindly
consented to sharing his experience and ideas.

<div data-align="center">

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 33%" />
<col style="width: 33%" />
</colgroup>
<tbody>
<tr class="odd">
<td> 
<p>An ICS system usually consists of a internet connection via an internet service provider and a gateway computer that connects to the ISP via dial-up modem, cable modem, or DSL modem. </p>
<p>Then other computers are connected to the gateway computer using <strong>N</strong>etwork <strong>I</strong>nterface <strong>C</strong>ards (NIC).  This is often done via a "hub" that enables one or more connections from other computers to the gateway computer. </p>
<p>Not all Home Networks use a hub.  However this info should be useful to them as well.</p></td>
<td><p><img src="ics_files/icshub.jfif" width="350" height="400" alt="Internet Connection Sharing Graphic" /></p></td>
<td> 
<p>Here we have three computers that use a single connection to the internet.  Simple, eh?</p>
<p>The problem occurs with DCC because as far as the internet is concerned, all three computers are using the same IP address, the IP assigned to the gateway computer by the ISP. </p>
<p>And to complicate it, the port that the client computer opens when it starts a DCC chat or file send isn't reported correctly to the computer at the other end of the internet.</p>
<p>Ultimately, DCC sends and chats fail!</p></td>
</tr>
</tbody>
</table>

</div>

Windows users, including Win98, Win ME, Win2000 pro can restore their
DCC capability.  It involves **Port Mapping**.  No, not *Port
Scanning*\!  Port mapping allows the gateway computer to pass info
correctly between the client computers and the internet.  The simple fix
is NAT32.  It costs a few bucks, between $25.00 and $50.00 US, depending
on which version you purchase.  All info here is without guarantee or
warranty of any sort, either by myself or Wayne3, we are simply sharing
ideas and experiences that will hopefully benefit other IRC users.

# Port Mapping/NAT32


\<Wayne3\> Ok, ICS will not work with DCC chat over a lan without a Port
Mapper.<br>
\<Jeepz-\> okay ..<br>
\<Wayne3\> Let me grab the URL for a good freeware port mapper.
[Freeware Port Mapper URL](http://web.archive.org/web/20030810152446/http://www.analogx.com/contents/download/network/pmapper.htm)<br>
\<Wayne3\> If they install a port mapper, they will only be able to use
DCC with DCC Server on the specific port they set :)<br>
\<Jeepz-\> so they need to set a specific port in mIRC options?<br>
\<Jeepz-\> and the same port on their server?<br>
\<Wayne3\> Port in their DCC Server in mIRC options needs to be same as
the one being mapped on the gateway machine.<br>
\<Jeepz-\> any URL for doing the gateway setting .. I suppose that
varies depending on what software they use<br>
\<Wayne3\> Right ICS Wizard it auto, ***I recommend they drop $30 and
get NAT32 \****<br>
\<Wayne3\> NAT32 will allow DCC chat without any extra software 
[NAT32 URL ](http://web.archive.org/web/20030810152446/http://www.nat32.com/)<br>
\<Wayne3\> ***NAT32 is better by 1000% \****<br>
\<Jeepz-\> okay .. so they use nat32 to do their port mapping on the
gateway computer .. set the client computer (workstation) mIRC to use
DCC server and same port .. ?<br>
\<Wayne3\> Now if they are using a router it all work fine with DCC
chat, even across subnets and domains because the header information
will contain the correct address for the packets.<br>

{\* note: bold and italics added by Jeepster for reader's benefit}

[Top](#top)


# Concerning firewalls:


\<Wayne3\> Okay firewall information.<br>
\<Jeepz-\> k .. <br>
\<Wayne3\> Most firewalls will block all unauthorized connections, but
for example ZoneAlarm allows you to add applications that are allowed to
do everything they want.<br>
\<Wayne3\> Users will want to look into that.<br>
\<Wayne3\> k, so always have them check that. If they can have them
disable the firewall and try to DCC to see if that is the issue.<br>
\<Wayne3\> np, another thing is to have the user always check with their
ISPs about Firewall, blocked ports, etc..<br>
\<Wayne3\> Some ISPs block port 80, 110, 23, 22, 25, etc.. to stop users
from running servers :)<br>
\<Wayne3\> Those are low level ports and only mail, web, ftp, and those
types of daemons would use bind to those ports :)<br>
\<Jeepz-\> right .. basic trouble shooting technique<br>
\<Wayne3\> Also ask them if they are using a HUB, a high collision rate
on the network can cause packets not reach their destination.<br>
\<Jeepz-\> okay ..<br>
\<Wayne3\> Causing slow DCC, or Unable to Connect Errors a few times,
then all of the sudden work<br>
\<Wayne3\> then fail again a couple times, then work, etc...<br>
\<Jeepz-\> erratic performance<br>
\<Jeepz-\> I see .. though many of these folks are on smaller home based
nets .. not all mind you<br>
\<Jeepz-\> but many .. that's getting much popular these days .. and a
source of many questions<br>
\<Jeepz-\> so that would possibly show up if they have a hub and maybe
five or six machines .. or does it need a much larger network to become
a problem?<br>
\<Wayne3\> If you get someone who cannot use mIRC at all with their
client machines make sure they can access LAN resources and browse the
web before trying to fix their mIRC problem\!\!<br>
\<Wayne3\> Sorry had to throw that in ;)<br>
\<Jeepz-\> oh yeah .. no prob ..<br>
\<Wayne3\> No I have experienced that problem before at friends house
with a 3 LAN network<br>
\<Jeepz-\> so small size isn't immune to it .. good to know<br>

 

[Top](#top)

# Equipment Recommendations:


\<Wayne3\> LinkSys 10BaseT 5 Port Hub (Home LAN) is very popular and is
a shit Hub and will collide every 5 seconds if more than one machine is
access something.<br>
\<Jeepz-\> ah .. yeah, I see folks using LinkSys often .. must be
inexpensive<br>
\<Wayne3\> Yep :)<br>
\<Jeepz-\> you have any suggestion for better performance while watching
pennies?<br>
\<Wayne3\> They build nice industry equipment, but their home base
products blow<br>
\<Wayne3\> I only recommend Cisco, Netgear, and 3Com networking hardware
:)<br>
\<Jeepz-\> k .. I use 3Com here .. so pay for what you get basically<br>
\<Wayne3\> Intel Pro is one NIC I make exception for because its a good
card :)<br>
\<Wayne3\> But it uses a 3com based chipset ;)<br>
\<Jeepz-\> ah ..<br>
\<Wayne3\> Yep, what you pay is what you get .. "If its to good to be
true it is"<br>
\<Jeepz-\> Cisco's good stuff .. but pricey ..<br>
\<Wayne3\> Worth every penny, best there is.<br>
\* Jeepz- nods<br>
\<Wayne3\> A Q\&D solution to a lot of collisions on a LAN is to get
another NIC on the Gateway machine :)<br>
\<Jeepz-\> two NIC on the gateway .. one to the net .. the other to the
LAN?<br>
\<Wayne3\> Right, one to their ISPs equipment and one to their HUB or
home Router.<br>
\<Jeepz-\> k ;-)<br>

[Top](#top)

# IP Assignments:

\<Wayne3\> Make sure they have their IPs on there networks correct, with
ICS Windows won't bitch if two machines have the IP of 192.168.0.1 on
the same subnet<br>
\<Wayne3\> I cannot count how many times I have typed the same IP into
two clients.<br>
\<Jeepz-\> does their ISP provide them with multiple IP's or is there a
generally used for protocol assignment?<br>
\<Wayne3\> I mean private IPs, like 192, 168, 172(or is it 176), 10.<br>
\<Wayne3\> On a LAN in the same subnet, ICS won't bitch at you for that,
and your basic features like email, web, and irc will work but DCC will
not<br>
\<Jeepz-\> I see .. so it is a specific group that would be recognized
within the network but not viable for NET connection .. dunno if I'm
phrasing that so it makes sense<br>
\<Wayne3\> Yes, they are IPs reserved for LANs<br>
\<Jeepz-\> okay .. that makes sense.<br>
\<Wayne3\> 10 machines -\> hub -\> router (with a public IP) this saves
companies for having to buy IPs for every single client machine.<br>

[Top](#top)

# mIRC Settings:

\<Jeepz-\> more along the line of how the user would set mIRC itself
.. <br>
\<Wayne3\> Well really, if your initial network setup is done well,
there is no
special setup for mIRC needed.<br>
\<Jeepz-\> hmm .. okay. but they are going to wonder what to put in
the
Userhost and IP fields, or what to set for Method. Or at least what to
expect to
see there if everything goes right <br>
\<Wayne3\> Leave them blank and user server as the method, it should
populate with the correct information<br>
\<Jeepz-\> okay .. that makes sense .. <br>
\<Wayne3\> If everything goes right, you can expect mIRC to function
just as if you
had a modem and where using dial-up connection :)<br>

[Top](#top)

# Tutorials, Info, Reference URLS:

\<Wayne3\> Umm let me dig up a URL real quick for LAN newbies<br>
\<Wayne3\> ICS Tutorial(s) and HowTos -
[http://www.generation.net/\~hleboeuf/ics.htm](http://web.archive.org/web/20030810152446/http://www.generation.net/%7Ehleboeuf/ics.htm)<br>
\<Wayne3\>
[http://www.microsoft.com/technet/network/ipvers6.asp](http://web.archive.org/web/20030810152446/http://www.microsoft.com/technet/network/ipvers6.asp)
\<-- this makes good reading also <br>
\<Wayne3\>
[http://www.landfield.com/faqs/internet/tcp-ip/resource-list/](http://web.archive.org/web/20030810152446/http://www.landfield.com/faqs/internet/tcp-ip/resource-list/)
\<-- list of TCP/IP books and resources (good for LAN/WAN information)<br>
\<Wayne3\> one more ....
[http://www.books.mfi.com/lan/LANTut3rdEd.html](http://web.archive.org/web/20030810152446/http://www.books.mfi.com/lan/LANTut3rdEd.html)<br>
\<Wayne3\> last one -\>
[http://www.wizard.com/users/baker/public\_html/NetTutor.html](http://web.archive.org/web/20030810152446/http://www.wizard.com/users/baker/public_html/NetTutor.html)<br>
\<Wayne3\> the last one I think is more along the lines your looking
for<br>
\<Jeepz-\> great .. thanks much .. appreciate you sharing your
expertise\!<br>

Port Mapping URLs:
     NAT32:       [http://www.nat32.com/](http://web.archive.org/web/20030810152446/http://www.nat32.com/)
     Port Mapper:
[http://www.analogx.com/contents/download/network/pmapper.htm](http://web.archive.org/web/20030810152446/http://www.analogx.com/contents/download/network/pmapper.htm)

[Top](#top)
Other Good Sources of Info:


**Ed. note: This page was rescued from ircworks.com when it got
discontinued. Links may or may not work, it is maintained here just for
the information contained on this page itself. -Jolo**

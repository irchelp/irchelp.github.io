---
title: 'Official #US-Opers EFNet Frequently Asked Questions - By Disciple'
author: Disciple
dateupdated: 28 August 1999
status: historical
layout: default
---
The Official #US-Opers EFNet Frequently Asked Questions - By Disciple

  
The Official and most recent copy can be obtained from:

<http://www.irchelp.org/irchelp/ircd/usfaq.html>

All other copies may be old and/or obsolete.

Last Updated: Sat Aug 28 16:02:25 EDT 1999

  
* * *
  
Many of the answers to these questions were obtained from
[http://www.irchelp.org/](http://www.irchelp.org) and 
<http://www.the-project.org/efnet/opermyth.html>. 
Most of these questions are answered
elsewhere, but not all in one place, hence this text. These are the questions
that appear most often in #us-opers and instead of sending people to a bunch
of different places, I decided to compile them into one text. This text will
become more detailed as time goes on, but if I have left anything out, or I
have made a mistake, you may /msg me (Disciple) on efnet.

This FAQ may be distributed freely. You may use parts from it for anything
else, or for another FAQ, as long as due credit is given.

* * *

  
#### QUESTION INDEX:
{:#idx}

  
[1. What are servers I can run bots on?](#q1)

[2. Why can't I register a channel or nickname?](#q2)

[3. Can an IRC Operator help me with a taken over channel or opless channel?](#q3)

[4. My channel is opless and there are a few idle people in there, can an
operator get rid of them for us?](#q4)

[5. How do I find an active operator?](#q5)

[6. How do I see a list of all the operators on the server I'm on?](#q6)

[7. I was killed and I want to know why, but when I ask no one gives me an
answer or tells me to go away.](#q7)

[8. what are all the /stats commands I can use?](#q8)

[9. What are all the user modes and what do they do?](#q9)

[10. Will operators kill spammers and flooders?](#q10)

[11. Will operators kill or kline for my nick?](#q11)

[12. I was talking to someone and they changed their nick. Can an operator tell
me what their new nick is?](#q12)

[13. Will operators kill or kline because someone is "nuking" me?](#q13)

[14. Is there a way I can see operwalls without being an operator?](#q14)

[15. How do I become an IRC Operator?](#q15)

[16. How do I link my own efnet server?](#q16)

[17. New server guidelines clarification.](#q17)

[18. Where can I get the actual IRC server itself?](#q18)

[19. Where can I get Hybserv?](#q19)

[20. If I decide to send in a server application, where will the discussion and
voting of it take place?](#q20)

[21. Are there any other mailing lists like the Routing one?](#q21)

[22. What is a TCM, and what is a TCM Oper?](#q22)

[23. Where can I get TCM Dianora and help/information about it?](#q23)

[24. Where can I get OOMon and help/information about it?](#q24)

[25. What are the new features in Hybrid6?](#q25)

[26. When I join #us-opers and ask for help, how come sometimes I get banned?](#q26)

[27. I need help setting up my irc server, will someone help me?](#q27)

[28. I'm looking for a small irc network to chat and maybe link a server to.
Where can I find one?](#q28)

[29. What is timestamp and what does it do?](#q29)

[30. When I do /list I get disconnected. What can I do to see a list of
channels?](#q30)

[31. What is a wallop/operwall and a locop message?](#q31)

[32. Someone is bothering/spamming/flooding/etc. me, and there are no active
opers on the server they are on. What do I do?](#q32)

[33. I would like to find out more about efnet and how it's run. Where can I
find this information?](#q33)

  

* * *

  
QUESTIONS AND ANSWERS:

  
Question 1:
{:#q1}

Q: What are servers I can run bots on?

A: irc.core.com, irc.freei.net, irc.arpa.com, irc.concentric.net, and
irc.lagged.com are a few of the efnet servers that allow non abusive bots.

[Question Index](#idx)

  
Question 2:
{:#q2}

Q: Why can't I register a channel or nickname?

A: It is a common belief on efnet that nicks and channels are not owned. They
are simply "occupied" or "in use". The debate whether to add services to efnet
has gone on for many years, but there are no services on efnet, and there
probably never will be services. If you would like an irc server with
services, dalnet offers both chanserv and nickserv.

[Question Index](#idx)

  
Question 3:
{:#q3}

Q: Can an IRC Operator help me with a taken over channel or opless channel?

A: Usually not. 99.9% of the time Operators will not help you with channel
takeovers. The Job of an IRC Operator is to make sure that their server, and
the entire network is running smoothly. EFNet operators are not here to handle
channel matters. Operators are incapable of opping themselves or anyone else
in channels they are not already opped in. There is nothing in the efnet IRCD
code that allows operators to do this. Your best bet is to start a new
channel. The people are what make the channel, not the name of the channel.
For a complete detailed list of what opers can and can not do, along with what
they can do but usually will not do, visit 
<http://www.the-project.org/efnet/opermyth.html>.

[Question Index](#idx)

  
Question 4:
{:#q4}

Q: My channel is opless and there are a few idle people in there, can an
operator get rid of them for us?

A: Operators are capable of "removing" them, but probably will not. They are
not doing anything wrong, and who do we know who to believe. For all we know,
you could be the one trying to takeover the channel. That is why operators
will probably not help you in this situation.

[Question Index](#idx)

  
Question 5:
{:#q5}

Q: How do I find an active operator?

A: use "/stats p [irc server]". The number by the operators name tells you how
long, in seconds, they have been idle.

[Question Index](#idx)

  
Question 6:
{:#q6}

Q: How do I see a list of all the operators on the server I'm on?

A: "/stats o" will show you the list of all the operators in the conf file. If
the server is running Hybrid 5.3p6 you will also see the TCM Operators.
"/stats o" does not work on remote servers, only the one you are currently
connected to.

[Question Index](#idx)

  
Question 7:
{:#q7}

Q: I was killed and I want to know why, but when I ask no one gives me an
answer or tells me to go away.

A: If you were killed, you were either pissing someone off or breaking one or
more of the servers rules. Read the servers /motd to see if you were in
violation of any of their rules. Operators do not have to answer for their
actions to users however. EFNet is a private network, run by private servers
and not a democracy.

[Question Index](#idx)

  
Question 8:
{:#q8}

Q: What are all the /stats commands I can use?

A: The modes are (use /stats [letter]):

    
     	
          ?	  Server connection statistics	
          b   B-lines	
          c	  C/N-lines	
          d	  D-lines	
          e	  E-lines
          h   H/L-lines	
          i	  I-lines	
          k	  K-lines	
          l	  Data transfer statistics by connection
              The numeric fields are as follows:			
                      sendQ (outgoing message queue)
    		  sendM (protocol messages sent)			
                      sendK (total kilobytes sent)
    	          receiveM (protocol messages received)			
                      receiveK (total kilobytes received)
    		  time in seconds since the connection was created
          L	  Same as STATS l, except shows IP address instead of host	
          m	  Command statistics
          o	  O/o-lines	
          p	  Current opers online	
          t	  General server statistics	
          u	  Server uptime
          v	  Server link information	
          y   Y-lines	
          z	  More server statistics

For more information see 
[ircopguide](/ircd/ircopguide.html) section: VIII. Server
Information Commands (TRACE, STATS, LINKS, and HTM) For more information on
what some of these modes do see section: VII. IRCD and Associated Files on the
same page.

[Question Index](#idx)

  
Question 9:
{:#q9}

Q: What are all the user modes and what do they do?

A: A list of all the user modes, with a description of what they do is
available at <http://apatrix.asu.net/irc/docs/umodes.html>.

[Question Index](#idx)

  
Question 10:
{:#q10}

Q: Will operators kill spammers and flooders?

A: Usually. If you /whois the spammer/flooder, /stats p [the server they are
on], and /msg an active oper, they will usually handle them.

[Question Index](#idx)

  
Question 11:
{:#q11}

Q: Will operators kill or kline for my nick?

A: No. It is a general belief that nicks are not owned on efnet.

[Question Index](#idx)

  
Question 12:
{:#q12}

Q: I was talking to someone and they changed their nick. Can an operator tell
me what their new nick is?

A: No. efnet operators cannot see what peoples new nicks are.

[Question Index](#idx)

  
Question 13:
{:#q13}

Q: Will operators kill or kline because someone is "nuking" me?

A: Usually Not. All logs are fakable, and having a server downed because of an
oper killing or k:lining a "nuker" isn't worth it.

[Question Index](#idx)

  
Question 14:
{:#q14}

Q: Is there a way I can see operwalls without being an operator?

A: No. Only IRC Operators can see them.

[Question Index](#idx)

  
Question 15:
{:#q15}

Q: How do I become an IRC Operator?

A: In short, you don't. Becoming an IRC Operator requires not only a strong
working knowledge of IRC and this IRC network, but also a working relationship
with hub admins and other opers. Opers are selected when there is a need, and
never given based on who is asking for it. See 
[ircopguide](/ircd/ircopguide.html)
section VI for more details.

[Question Index](#idx)

  
Question 16:
{:#q16}

Q: How do I link my own efnet server?

A: A general rule of thumb is, if you have to ask "how", you're probably not
ready to run an efnet server. If you do not already know how efnet works, and
how to link a server, it is a pretty safe bet that your server will not be
linked. Never the less, if you feel you are ready, the new server guidelines
and server application are at [ftp://ftp.blackened.com/pub/irc/new-server-
guidelines](ftp://ftp.blackened.com/pub/irc/new-server-guidelines).

[Question Index](#idx)

  
Question 17:
{:#q17}

Q: In the new server guidelines, it says "it is in the applicant's best
interest to do some homework on what applications have been approved in the
past and which ones haven't and, more importantly, why they were approved or
denied." What does this mean, and where can I find this information?

A: This means you need to go through some of the applications that have been
submitted and see what works and what doesn't. You can view past applications
at <http://www.the-project.org/efnet/votes/closed.votes/>,
and the discussion about them at
[http://www.the-project.org/routing/](http://www.the-project.org/routing/).

[Question Index](#idx)

  
Question 18:
{:#q18}

Q: Where can I get the actual IRC server itself?

A: Hybrid is archived at <ftp://ftp.blackened.com/pub/irc/hybrid/>,
and IRCD Comstud is archived at [ftp://ftp.coms
tud.com/pub/cbehrens/ircd/](ftp://ftp.comstud.com/pub/cbehrens/ircd/).

[Question Index](#idx)

  
Question 19:
{:#q19}

Q: Where can I get Hybserv?

A: [ftp://ftp.magenet.com/pub/hybserv/](ftp://ftp.magenet.com/pub/hybserv/).

[Question Index](#idx)

  
Question 20:
{:#q20}

Q: If I decide to send in a server application, where will the discussion and
voting of it take place?

A: The Routing List. It is archived at [http://www.the-
project.org/routing/current/](http://www.the-project.org/routing/current/).
Most of efnets routing/connection "issues" are discussed there.

[Question Index](#idx)

  
Question 21:
{:#q21}

Q: Are there any other mailing lists like the Routing one?

A: Yes. There is the IRC3 mailing list that is archived at [http://www.the-
project.org/ircd/](http://www.the-project.org/ircd/), the Admins mailing list
that is archived at <http://www.the-project.org/admins/>, 
and Operlist which is at 
<http://www.the-project.org/operlist/current/threads.html>.

[Question Index](#idx)

  
Question 22:
{:#q22}

Q: What is a TCM, and what is a TCM Oper?

A: TCM stands for Texas Connection Monitor. It is a connection monitor bot. It
checks for clones, flooders, and other abusive clients. A TCM Oper is someone
with oper access to this bot. A TCM Oper has the same power as a local oper,
with the exception that they cannot /squit or /connect their server.

[Question Index](#idx)

  
Question 23:
{:#q23}

Q: Where can I get TCM Dianora and help/information about it?

A: [http://www.db.net/~db/tcm.html](http://www.db.net/~db/tcm.html).

[Question Index](#idx)

  
Question 24:
{:#q24}

Q: Where can I get OOMon and help/information about it?

A: [http://toast.blackened.com/oomon/](http://toast.blackened.com/oomon/).

[Question Index](#idx)

  
Question 25:
{:#q25}

[Q: What are the new features in Hybrid-6?](#q6)

A: A list of all the new features and changes in Hybrid-6 are available at 
[hybrid6](/ircd/hybrid/hybrid6.html).

[Question Index](#idx)

  
Question 26:
{:#q26}

Q: When I join #us-opers and ask for help, how come sometimes I get banned?

A: #us-opers is not a help channel however, some of the people in the channel
are helpful. My suggestion to you is if you have a question, and you feel
compelled to ask in #us-opers, that you read this faq first and if it's not
covered in here, that you ask once and if no one answers try elsewhere. If
your question is about something non-irc related, like software, or hardware
try #help. If you have an irc related question that no one answers in #us-
opers, try #irchelp or [http://www.irchelp.org/](http://www.irchelp.org/).

[Question Index](#idx)

  
Question 27:
{:#q27}

Q: I need help setting up my irc server, will someone help me?

A: Once again #us-opers is not a help channel. If you need help setting up
your irc server, try reading the help files first, and if you still need help
after that, try asking in #IRCD.

[Question Index](#idx)

  
Question 28:
{:#q28}

Q: I'm looking for a small irc network to chat and maybe link a server to.
Where can I find one?

A: There is a list of IRC networks by size at 
[networks](/networks/).

[Question Index](#idx)

  
Question 29:
{:#q29}

Q: What is timestamp and what does it do?

A: Timestamp is a protocol which disallows netsplit ops and channel desynchs.
For more technical info on timestamp, see [ircserv](/ircd/ircserv.html).

[Question Index](#idx)

  
Question 30:
{:#q30}

Q: When I do /list I get disconnected. What can I do to see a list of
channels?

A: Use the efnet channel list at 
[chanlist](/chanlist/).

[Question Index](#idx)

  
Question 31:
{:#q31}

Q: What is a wallop/operwall and a locop message?

A: A Wallop also known as an Operwall, is a message that is sent to all other
opers on the entire network. Only operators can see these messages. A locop is
the same thing, but it only sends the message to the opers on the same server
you are currently connected to.

[Question Index](#idx)

  
Question 32:
{:#q32}

Q: Someone is bothering/spamming/flooding/etc. me, and there are no active
opers on the server they are on. What do I do?

A: Opers wont kill or kline someone if they are "bothering" you, but if somone
is spamming and/or flooding and there are no active operators on the server to
take care of them. The best thing you can do is /ignore them until either an
oper becomes active or they /quit.

[Question Index](#idx)

  
Question 33:
{:#q33}

Q: I would like to find out more about efnet and how it's run. Where can I
find this information?

A: The easiest way to learn how efnet works is to just stick around. It takes
time, but reading these url's will give you a "heads up". Some of these url's
have been stated in above questions. Think of it as a basic overview/crash
course/reference guide, of how things work on efnet.

<http://www.the-project.org/efnet/opermyth.html> - 
List of what efnet opers do and don't do
(IRC Bible)

<http://www.the-project.org/routing/current/> - US Routing archive

<http://www.the-project.org/ircd/current/> - IRC3 Mailing list

<http://www.the-project.org/operlist/current/threads.html> - Operlist Mailing list

[usfaq](/ircd/usfaq.html) - #US-Opers FAQ (This Document)

[ircopguide](/ircd/ircopguide.html) - A basic but very informative guide for irc
operators

[ftp://ftp.blackened.com/pub/irc/new-server-
guidelines](ftp://ftp.blackened.com/pub/irc/new-server-guidelines) - New
server guidelines and server application

[ftp://ftp.blackened.com/pub/irc/irc-
stats/index.html](ftp://ftp.blackened.com/pub/irc/irc-stats/index.html) EFNet
Stats

[http://www.db.net/~db/tcm.html](http://www.db.net/~db/tcm.html) - tcm-dianora
help and information

[http://www.toast.blackened.com/oomon/](http://toast.blackened.com/oomon/) -
OOMon help and information

[http://www.efnet.org](http://www.efnet.org/) - Misc. EFNet information

[Question Index](#idx)

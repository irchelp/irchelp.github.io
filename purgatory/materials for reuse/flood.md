---
title: Flood Protection and Ignoring People
author: Ruth Mullen (hershey)
layout: default
redirect_from:
  - /irchelp/clients/windows/mirc/flood.html
reviewed: Raccoon Aug 21, 2016
---

/!\ Materials from this page should be considered for reuse in a guide to using
mIRC's features, and also possibly included in a general guide about chat
flooding and online harassment.
Reviewed by a raccoon on Aug 21, 2016.


# Flood Protection and Ignoring People

### for users of mIRC, the Windows Internet Relay Chat client

by Ruth Mullen aka hershey, updated 9/5/97

HTML translation by Joseph Lo aka Jolo

* * *

When you're using [mIRC](/irchelp/mirc/) there are several ways to get rid of
people harassing or flooding you. We will give detailed help in this file, but
first of all you should make sure you use the latest mIRC. Please
[upgrade](/clients/windows/mirc/index.html) if you're using an older version.
Most of the info in this file will NOT help you on versions older than v4.7.
_And you do not need any scripts or bots for flood protection. Everything you
need is built right into mIRC._

The main goal for flooders on IRC is to get you disconnected from the IRC
server you use. A server usually disconnects you for sending too much data to
it in a certain period of time, _or_ if you try to send it data when it hasn't
finished processing your previous data. So what flooders do is send you lots
of CTCP requests and if you answer them all you'll get disconnected. These
kind of floods are called **CTCP floods**. mIRC's flood protection and/or
ignoring these people will stop this.

Besides CTCP floods you can also be bombarded with useless text or other
rubbish, a **text flood**. Or people can harass you with what they (continue
to) say to you. Dont argue with people, a simple **'ignore'** will help a lot
better.

### 1) Fully Automatic Flood Protection

    You can protect yourself against people who are flooding you with the automatic anti-flood system in mIRC. Simple type the command

> **/flood 400 20 2 30**

in any window in mIRC and you'll activate it for now and the future. You can
check your flood protection settings under the **File/Options/Flood/** menu.
This makes sure that -others- cant make you to send too much data to the
server. Usually a server has a buffer of about 512 bytes. mIRC therefore
counts the number of bytes you've sent to a server and if this exceeds a
certain number, mIRC waits for the server to be ready again, before it
continues sending data. In the mean time it nicely buffers unsent lines. This
should protect you properly from all sorts of CTCP floods and so on. You set
the amount of bytes mIRC may safely send (for instance, 400 bytes), the amount
of lines it may buffer (for instance, 20), the amount of lines it may store
maximal per user (for instance, 2) and how long any flooder should be ignored
(for instance, 30 secs) by the command

> **/flood 400 20 2 30**

### 2) Ignoring People

    If certain people continue to try to flood you off IRC, you can put them on ignore. You can ignore a person or a group of people, whatever you want. But dont overdo it ... you'll soon hear _nobody_ anymore ;o)

You can ignore everything somebody does or says to you by setting a full
ignore on either that person, or in extreme cases, everybody from the same
Internet Service Provider. In the **File/Options/Control/** menu you'll see a
list of all people you currently ignore.

Here are some different options for **ignoring people or sites**. Where you
see "nick" below, put in the person's nickname.

command what it does

**/ignore nick 3**
ignore one person totally

**/ignore nick 4**
ignore all other people from the same Internet Provider

Normally, if people flood you, it is enough to just **ignore CTCP requests**.
This will allow them to normally talk to you but they wont be able to get you
disconnected from IRC.

command what it does

**/ignore -t nick 3**
ignore all CTCP requests from one person

**/ignore -t nick 4**
ignore all CTCP requests from people on the same Internet Provider

**/ignore -t *!*@***
To ignore all CTCP requests from _everybody_

If you activate mIRC's built-in flood protection (**/flood 400 20 2 30**) and
put individuals who keep disturbing you on ignore, you'll be pretty 'safe' and
you'll enjoy IRC as it is meant to be; a place to _CHAT_ :-) Have fun!

* * *



##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.

---
title: user modes for the major irc networks
author: Apatrix (EFnet,IRCnet) with contributions from Toyota (EFnet), prysm(EFnet), Dakal (DALnet), MHz (EFnet,DALnet), Jupiter (EFnet), jilles (EFnet), and others
status: historical
layout: default
redirect_from:
  - /irchelp/misc/umodes.html
---

# User modes for the major networks

partial update Mar 5, 2005

By Apatrix (EFnet,IRCnet) with contributions from Toyota (EFnet), prysm
(EFnet), Dakal (DALnet), MHz (EFnet,DALnet), Jupiter (EFnet), jilles (EFnet),
and others

Looking for information on channel modes instead? The ones which are common to
all networks are explained in the [IRC Tutorial](/faq/irctutorial.html) and the
[New IRC Channel Operator's Guide](/faq/changuide.html).

It's been a long time since there was a single type of server used by all
servers. Since then, the various networks have all continued to develop their
own independently of the others. User modes are one of the things affected by
this. The most standard (i, o and w) have the same function on all networks.
Each network has also added a set of modes unique to that particular network.
This also goes for smaller networks which usually base their ircds on one of
those used by the major networks but often diverge and add modes of their own
or change the behaviour of existing ones.

These user modes are supported by the server versions current as of the date
shown below. Older versions may be missing one or two modes or have a
different implementation for some. User modes which may be set only by IRC
operators are marked with an asterisk. Others will let themselves be set by
all users but will return very little information for a non-IRC operator.

The list is based on the following versions which were current as of the date
above:

EFnet: hybrid or ratbox

IRCnet: 2.10.3

DALnet: bahamut 1.4.3

Undernet: u2.10.10

* * *

Note that DALnet has their own help guide for [DALnet channel and user
modes](http://help.dal.net/docs/modes.html).

{::nomarkdown}
<table width="100%" border="1" rules="all">
  <caption>Overview of user modes for the major IRC networks</caption>
  <thead>
    <tr>
      <td>Mode</td>
      <td>EFnet</td>
      <td>IRCnet</td>
      <td><a href="http://help.dal.net/docs/modes.html">DALnet</a></td>
      <td>Undernet</td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>a</td>
      <td>* Indicates server administrator</td>
      <td>Indicates /away status</td>
      <td>* Indicates server administrator</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>b</td>
      <td>* Monitor floodbot notices</td>
      <td>n/a</td>
      <td>* Receive "chatops" from operators</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>c</td>
      <td>* Monitor client connects and disconnects</td>
      <td>n/a</td>
      <td>* Monitor client connects and disconnects</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>d</td>
      <td>* Monitor server debug notices</td>
      <td>n/a</td>
      <td>*</td>
      <td>Do not receive messages directed at the channel</td>
    </tr>
    <tr>
      <td>e</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>* Monitor DCC sends of possibly malicious files</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>f</td>
      <td>* Monitor Full I:line notices</td>
      <td>n/a</td>
      <td>* Receive flood notices</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>g</td>
      <td><a href="http://www.efnet.org/?module=docs&doc=14&type=text">&quot;Caller ID&quot; message blocking</a></td>
      <td>n/a</td>
      <td>Receive "globops" notices from servers, Services and operators</td>
      <td>Receive "HACK" wallops</td>
    </tr>
    <tr>
      <td>h</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>* Shows operator in /stats p</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>i</td>
      <td colspan="4" align="center">Invisibility to /WHO and /NAMES scans
        unless performed by a user on the same channel</td>
    </tr>
    <tr>
      <td>k</td>
      <td>* Monitor server kill notices</td>
      <td>n/a</td>
      <td>Receive KILL notices</td>
      <td>Special mode for channel service bots</td>
    </tr>
    <tr>
      <td>l</td>
      <td>* Monitor oper locops</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>m</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>* Monitor notices about possible spambots</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>n</td>
      <td>* Monitor local nickname changes</td>
      <td>n/a</td>
      <td>Receive routing notices</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>o</td>
      <td colspan="4" align="center">Indicates active IRC operator status</td>
    </tr>
    <tr>
      <td>r</td>
      <td>* Monitor &quot;rejected&quot; client notices</td>
      <td>Restricted. User may not use channel op commands. Cannot be
      reversed</td>
      <td>Monitor client rejection notices</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>s</td>
      <td>* Monitor generic server messages and oper kills</td>
      <td>n/a</td>
      <td colspan="2" align="center">Receive server notices</td>
    </tr>
    <tr>
      <td>u</td>
      <td>* Monitor unauthorized client connections</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>w</td>
      <td colspan="2" align="center">* Receive server wallops</td>
      <td>Receive operator wallops</td>
      <td>Receive server and operator wallops</td>
    </tr>
    <tr>
      <td>x</td>
      <td>* Monitor server split/intro notices</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>y</td>
      <td>* Monitor links/stats/etc notices</td>
      <td>n/a</td>
      <td>*</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>z</td>
      <td>* Receive operator wallops</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>A</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>* Indicates active server admin status</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>C</td>
      <td>* like +c but more complete and machine-parsable</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>O</td>
      <td colspan="2" align="center">* Indicates active local operator status</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>R</td>
      <td colspan="2" align="center">n/a</td>
      <td>Receive /msg only from registered users to deter spam</td>
      <td>n/a</td>
    </tr>
    <tr>
      <td>Z</td>
      <td>* Monitor operspy notices</td>
      <td>n/a</td>
      <td>n/a</td>
      <td>n/a</td>
    </tr>
  </tbody>
</table>
{:/nomarkdown}

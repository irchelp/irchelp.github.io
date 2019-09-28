---
title: Help for the mIRC Client
author: irchelp.org staff
layout: default
redirect_from:
  - /mirc/
  - /mIRC/
  - /irchelp/mirc/
  - /irchelp/mIRC/
  - /irchelp/clients/windows/mirc.html
  - /irchelp/clients/windows/mirc/
---

<!--div style="text-align: right"-->
<img src="mirc_logo_256p.png" class="img-responsive pull-right" alt="mIRC Logo" title="mIRC Logo">

# mIRC

> When I first started using IRC, most IRC clients were difficult to use or
  limited in features. I wanted to see if I could create an IRC client that
  was both fun and easy to use. <cite>Khaled Mardam-Bey</cite>

**Got mIRC?**

Download, FAQ, installation help, use and scripting.

mIRC is by far the most popular Internet Relay Chat client for Windows and
thus among all users. This page is devoted to the unofficial support of this
shareware product.


## Official mIRC home page

If this page doesn't answer all your questions, go to the official **[mIRC
home page](http://www.mirc.com/)** [ext. link] which contains a wealth of
information on mIRC: getting it, setting it up, using it, etc.

## Recommended Support Channels
Many of us in EFNet, Freenode, and IRCNet #irchelp are familiar with mIRC and can
help you with basic questions regarding it.

There are however, a number of other channels which deal specifically with mIRC,
and, if your question is particularly complex or has to do with scripting, they may
be better able to help you.

* #mirc on EFnet
* #mirchelp on EFnet
* ##mirc on freenode

## Download mIRC

*  **[What's New?](http://www.mirc.com/news.html)** official announcement of new features and changes [ext. link]
*  **[Official download site](http://www.mirc.com/get.html)** at mIRC home page [ext. link]

## Frequently asked questions (FAQ)

<div style="float: left; margin: 0px 25px 15px 0px;">
<img src="mirc_arnie_256p.png" alt="mIRC Logo" title="mIRC Logo">
</div>

The **[mIRC FAQ](http://www.mirc.com/faq.html)** [ext. link] helps you to
solve virtually all setup and install problems you could encounter with mIRC.
You can read the FAQ on the web, but having it for off-line reference is
really handy. On top of answering questions, the FAQ will provide you with a
lot of additional information on mIRC's powerful features. It includes a
tutorial on aliases, popups and on 'programming' the Tools/Remote section.

## Setup and Installation

*  **[Instructions for Net Newbies and Download Dummies](http://www.mirc.com/install.html)** [ext. link]

## Using mIRC and scripting

*  **[mIRC script debugging guide](http://kthx.net/ftb/)** [ext. link]     With scripting now easier than
ever, sometimes it seems like the art of debugging is becoming lost.
Fortunately, argv[0], an experienced helper on EFnet #mIRC, has patiently
shared all his great tips to help you find your script bugs!

*  **Version 6 Hot Links**     These pages (all external links) provide information to ease the dramatic transition to version 6.x.

  * first of all, `/help multi-server`
  * [v6 - Help you can use!](http://mirc.stealth.net/v6Tips.html) - quick introduction to new commands and scripting changes
  * [Scripting Guide to mIRC 6](http://mirc.stealth.net/multi-FAQ.html)** - more detailed examples of scripting changes
  * [A brief look at mIRC's $submenu identifier](http://www.mishscript.de/help/submenu.htm) - this new identifier allows you to dynamically create a list of menu items, and can only be called from a popup menu definition.
  * [CID (Connection ID) Tutorial](http://mirc.codedreamers.com/Tutorials/CID.htm) - the CID is a unique number given to a connection, allows you to use scripts to get/send information from/to a specific connection, or to loop though connections.

*  **[Choosing a mIRC script](bestscript.htm)**
Many new users rush out to try scripts blindly. This is both risky and
unnecessary, because mIRC has many advanced features built in already, and
adding scripts written by strangers can add new features, but they can also
slow down or cripple mIRC, or worse yet, cause you to "hacked" just like if
you opened email attachments blindly. That is why all helpers will tell you to
just learn to use mIRC's built-in features first, and to gradually learn how
to script yourself. For those who still want to know how to get the "best"
script, check out this [guide to picking scripts](bestscript.htm).

*  **[Security](/irchelp/security/)**     Check
out these guides pertaining to IRC security:

  * [Denial of service attacks or "nukes"](/irchelp/nuke/)
  * [Trojan Horse attacks or "IRC viruses"](/security/trojan.html)
  * [Firewall FAQ](../security/fwfaq.html)

*  **Connection problem?**     See our [connection
troubleshooting guide](/networks/connectprob.html).

*  **mIRC commands**     [Official list of all
mIRC commands](http://www.mirc.com/cmds.html) [ext. link]

*  **Numeric Help**     [Numeric help by
Jeepster](http://mirc.stealth.net/download/) [ext. link]. Numerics are the
coded replies to IRC requests you send to a server. Use these replies to do
lots of useful things, such as redirect /whois information to your active
window. There are separate files for 32- and 16-bit mIRC formats. Features
include:

  * Jump to specific numeric code entries or search the file by topic (Whois, ban list, MOTD, trace, mode, stats, etc.)
  * Get dynamic online help from your mIRC command line: just type /numeric <number> or /numeric <keyword>
  * Covers 001 through Series 500 Numerics
  * Contains sample scripting examples to get you started
  * Documents codes specific to EFnet, DALnet, or Undernet ircd
  * Lists and describes related web links: just click on the URL to start your browser!

*  **Universal /onotice replacement**      Having
trouble with /onotice on some servers? Maybe it does not get through to all
ops, or you get error messages like "multiple recipients, message not sent"?
This has become a problem among the majority of EFnet servers running
[hybrid-6 ircd](/ircd/hybrid6.html) as well as some other networks
such as DALnet. Fix it with this replacement [Onotice.mrc](Onotice.mrc)
script, which should allow you to use the replacement alias /wall6 on all
major IRC server versions.

*  **mIRC background images**     As of mIRC 5.4,
you can have .bmp images as backgrounds in a window. Check out [johno's .bmp
collection](bmps.zip) in his original 24 bit mode which are the most colorful,
or if those look wrong, get the [256-color version](bmps256.zip).

*  **Channel Ops Script**     This is a VERY
simple [channel ops giving/getting script](chan_op.mrc). Everybody who wants
to get or give ops must be running it. You are encouraged to use /help to
understand how it works, such as "/help /load" and "/help /guser".

*  **Li0n script for channel ops**      By
Li0nHeart (Ronald Luten), from EFnet #mIRC. [Li0n](Li0n33.zip) for mIRC 5.1 or
higher is a nicely written user/channel protection script that allows you to
automate a lot of the tasks of a channel operator. Features include:
installation instructions, detailed help, clone finder, nick flood detector
and auto-ban, nick completer, filter kicks, kicks for repeat/caps/swear, anti-
ban feature, lag checker, voting, POP mail checker, away system with msg
logging, xdcc fileserve, etc.

*  **Color help file** (Windows format, mIRC 4.7
and later)     By Nazaret Armenagian. [colohlp2.zip](colohlp2.zip) contains a
step-by-step tutorial, complete with examples, for creating colored, reverse,
bold, and underlined text with mIRC. Newly revised, the file explains changes
and improvements to mIRC's tools, such as the color index and the addition of
a transparent color. Just unzip this file and put the contents in the same
directory as your mirc.exe file. Then you can refer to this help file at any
time while using mIRC, by simply typing /colorv2

*  **Custom toolbar help file** (Windows format,
mIRC 5.4 and later)     By Nazaret Armenagian. [toolhelp.zip](toolhelp.zip) is
a fun and useful reference shows you how to replace mIRC's built-in toolbar
buttons with custom buttons provided by the author or with buttons of your own
making. You also learn how to replace your plain toolbar and switchbar
backgrounds with more colorful backgrounds of your choice, as well as the
backgrounds in your main, status, active, finger, Channel and Query/Chat
windows. The author explains how to properly size your .bmp files and use each
of mIRC's /background switches and options.

*  **General IRC help**

* [ The IRC Prelude: Newbie's Introduction to IRC](/irchelp/new2irc.html) (many non-English translations).

mIRC is [shareware](/misc/shareware.html). mIRC is a registered
trademark of mIRC Co. Ltd.

We at IRChelp.org are not affiliated with mIRC Co. Ltd.

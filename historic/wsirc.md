---
title: WSIRC
status: historical
layout: default
redirect_from:
  - /irchelp/historic/wsirc.html
---

*Editor's note: The WSIRC mentioned here was an early 1990s IRC client for Windows 3.1 systems, one of the first to be offered for Windows. This client is long obsolete, but the information on it is retained for historical interest.*


WSIRC14F.zip completely replaces WSIRC14E.ZIP.

**SITES:**

USA: cs-ftp.bu.edu (/irc/clients/pc/windows/wsirc14f.zip) USA:
winftp.cica.indiana.edu (/pub/pc/win3/winsock/wsirc14f.zip) USA:
ftp.undernet.org (wsirc14f.zip)

EUR: ftp.demon.co.uk (wsirc14f.zip)

EUR: ftp.funet.fi (/pub/msdos/networks/irc/windows/wsirc14f.zip) SIN: use CICA
mirror directory

**COMPUSERVE: INETFORUM, WINCON, WINSHARE, EURFOR, INETRESOURCE (WSIRC.ZIP)**

**UPDATE RELEASE:**

This is a minor update release, it contains added wildcard for IGNORE, you can
now do a /IGNORE *!*@somewhere.net.

This release also fixes the GPF problem when a null /CTCP is sent to a
channel.

This version will never expire. It will periodically remind you that it is
shareware software and asks that you register it.

**NEW FEATURES:**

The help file now contains a WSIRC tutorial. SERVERS.TXT contains full server
list, please read it first before sending me email for irc servers. The
SERVERS.TXT contains both EFNET and UNDERNET IRC Servers.

DCC CHAT and DCC SEND are now functional in WSIRC shareware and freeware. DCC
SEND is limited to sending 10240 bytes per file. If you can not initiate DCC
CHAT or SEND check to see that you have configured your DNS properly and that
you have entered your domanized pcname in WSIRC's Server Options dialog box.
On startup if everything is configured correctly, WSIRC will display your
local host name and IP address.

**KNOWN PROBLEMS:**

Problems displaying toolbar buttons when run with PCTools or any desktop shell
program that modifies the default Windows behaviour (new Window buttons,
customized max-min buttons, etc). Please note that this is not a problem with
WSIRC but with the desktop shell that makes use of undocmented Windows calls
or modifies the default Windows message processing behaviour.

The Internet Adapter (TIA) may not be completely compatible with WSIRC's DCC
CHAT and SEND, this is due to the way TIA implements certain name functions
that is required by WSIRC. On initiation of DCC CHAT and SEND, WSIRC requires
the IP address of the host it is running on (TIA's dial up host) and a port to
bind on the dial up host. I've been unable to experiment with TIA, others
appear to have been able to configure TIA to work properly, yet I continue to
receive reports that it does not from other users. Try it out first ! WSIRC
requires a real IP address and pcname to initiate DCC CHAT or SEND.

If a gethostbyname error occurs when initiating DCC CHAT or SEND, check to see
that your pcname and ip address have been entered in your WINSOCK.DLL's hosts
file. It must be entered in the following format:

ip_address pc_name

Note that the ip address occurs first and the pcname second separated by one
space.

GPF's with BC30RTL.DLL is almost always due to an old BWCC.DLL file residing
somewhere on your system and is picked up via the DOS PATH statement. Check to
see if there are and if so, keep the latest version and remove the others.

At times, the window text will appear to clutter up. This seems to be due to
the edit control losing composure. Type /CLEAR to reset the window.

**DESCRIPTION:**

WSIRC is a Windows client for the Internet Relay Chat network. It allows
Internet users to chat electronically with each other using IRC servers.

The advantage is that users worldwide can access the IRC network and converse
with users worldwide.

WSIRC is a Windows Sockets 1.1 compliant application and has been tested with
NetManage's and Trumpet's WINSOCK.DLL tcp/ip protocol stack.

A WSIRC IRC server is currently under construction to provide video, audio,
raw data as well as the currently supported text data.

**SPECIAL REQUIREMENTS:**

WINSOCK.DLL must be present. WINSOCK.DLL is provided as part of your
networking software. It is not part of WSIRC. A number of shareware versions
exist. Of note is Peter Tattam's $20 shareware WINSOCK.DLL available from a
number of ftp sites. A book called Windows Internet Tour Guide includes a
sampler version of Netmanage's Chameleon (version 3.11) for $25.- it's a very
good book for Internet beginners. Explains SLIP/PPP setup, mail, ping, news,
ftp, telnet, mailing lists, etc.

**SPECIAL NOTES:**

There are 4 versions available:

SHAREWARE (WSIRC 1.14f-S).

FREEWARE (WSIRC 1.14f-G).

REGISTERED (WSIRC 1.14f-R).

SITE LICENSE (WSIRC 1.14f-L).

Only the Shareware and Freeware versions may be distributed, if you see a
Registered version being distributed please email me.

The SITE LICENSE version allows unlimited users on a LAN each with a private
WSIRC.INI file.

Please note that I created WSIRC for my own personal enjoyment as a hobby. It
is not meant to be a money-making venture although I don't mind financial
recognition for it. In the spirit of cooperation within the Internet I have
included a FREEWARE version for use by anybody that simply won't or can't
purchase a licensed registered copy. Funds received from registration will go
towards further development of WSIRC. The future includes images, sound and
video in both client and server versions.

International users, please note that you can download an international
version of BWCCxxxx.DLL from FTP.BORLAND.COM if your Windows installation
displays a missing BWCCxxxx.DLL message box due to an International language
Windows intallation.

**COPYRIGHT:**

Copyright 1994 by Caesar M Samsi. Permission is granted to distribute the
complete FREEWARE and SHAREWARE versions only.

**REGISTRATION:**

Please note that you are *free* to use the FREEWARE version, you can use the
FREEWARE version on your TCP/IP LAN if you wish. Try the program out for a few
weeks before registering it. Internet Service Providers may be provided with a
special discount if registrations are done in groups.

Individual use: US$ 39.95 ( 1 Disk, 1 Manual ) Site license: US$ 449.95 ( 20
Disks, 20 Manuals )

Minor bug and feature updates are free (e.g. 1.13 to 1.14 update). Major
version updates are at minimal cost to registered users.

**RESOURCES:**

The WSIRC Homepage has been created by Roddie Hasan and can be found at this
URL: http://www.io.org/~roddie/wsirc.html

The IRC UseNet Newsgroup carrying IRC related news can be found as: ALT.IRC,
there are several other subnewsgroups under ALT.IRC as well.

**EMAIL:**

csamsi@clark.net, 72030.562@compuserve.com

* * *

last modified Dec 14, 1996

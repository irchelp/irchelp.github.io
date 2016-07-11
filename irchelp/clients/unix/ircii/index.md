---
title: ircII
author: RuyDuck, Apatrix, dracus, Jolo, and many other UNIXsaurii
layout: default
redirect_from:
  - /ircii
  - /ircII
  - /irchelp/ircii
  - /irchelp/ircII
  - /irchelp/clients/unix/ircii.html
---


![logo](/irchelp/Pix/irchelp_logo.gif)

** Unix/Linux/BSD/etc.

IRC clients primarily for the Unix shell **

updated May 9, 2004

by RuyDuck, Apatrix, dracus, Jolo, and many other UNIXsaurii

* * *

## Introduction

The UNIX operating system was the original home to the Internet Relay Chat,
when some code developers wanted a way to chat in an easy-to-use, real-time
forum and discuss their developments. Back in the early days of IRC, the
**IrcII** (pronounced irc-two[*]) program was the premiere client. Designed to
run in a text-mode environment, IrcII is not pretty -- it has no sounds,
graphics, menus, pop-ups, etc. (see a [screen capture](ircii.gif)). It is,
however, fast, stable, lightweight, portable, and easily backgrounded using
virtual terminals such as Unix "screen".

UNIX has evolved over the years into many variant OS's such as Linux, BSD,
Solaris, etc., sometimes collectively known as "*nix", "Unix-like" or simply
"Unix". Because of this increasing popularity, more, newer IRC clients have
been developed for Unix systems. Perhaps the most common are **BitchX** and
**EPIC**, both variants of the ircII client with greater functionality built
into them at some stage in their development.

Even more recently, with the increased use of Unix on home PCs, IRC users are
turning to graphical user interface (GUI) clients to meet their needs. As with
[mIRC](http://www.irchelp.org/irchelp/mirc/) for Windows or the various
[Macintosh](http://www.irchelp.org/irchelp/mac/) clients, text-based clients
can be used in in GUI "terminal emulators" that make them available in the
graphical environment. Additionally, pure graphical clients have been
developed to offer some of the look, feel, and functionality of Windows and
Mac clients, and have proliferated in numbers much like their GUI ancestors.
The primary Unix graphical clients are likely **Xchat** and **KVIrc**.

In addition, most of the Unix text-based clients have been ported to work
under Windows or Mac, but you're better off sticking with clients developed
for those OSes (follow the links above). An interesting exception might be Mac
OS X, which is BSD-based and now makes Apple ironically the largest
distributor of UNIX OS systems in the world.

At one time, the IrcII client set the standard against which all other clients
were developed and measured. While this may still hold true to some extent
today, the Windows client [mIRC](http://www.irchelp.org/irchelp/mirc/) has
largely taken over that position.

* * *

## Installing Text-Mode Unix Clients

Many distributions of Linux and BSD come with built-in package management
software (such as rpm for RedHat-based systems or deb for Debian-based
systems). In these cases, installing your IRC client is usually as simple as
downloading the program appropriate for your distribution and then installing
the binary package. Some distributions have source packages, which allow you
to maintain the package management of the distribution while still benefiting
from building your client from source code. Managing distributions this way is
for moderately experienced users who have the patience to read the package
manager's manual pages to understand how it functions.

Alternatively, you can download a "pristine source", usually in the form of a
tarball that ends with the .tar.gz or .tgz extension. This package should be
unpacked (using the gzip and/or tar utilities) into its own directory. Once
that's done, every tarball package comes with two files, usually called README
and INSTALL. Some clients may have additional README.extension files, which
you should also read. These files tell you _important_ information about how
to compile and install the program!

## Installing GUI Unix Clients

Installing the GUI client may be easier than it sounds. Of course, running a
graphical client requires that you have a graphical environment installed on
your computer, such as the XFree86 system. It also requires a window manager,
such as FVWM2, Enlightenment!, Sawfish, WindowMaker, NextStep, BlackBox, or
any of about a hundred other options. Some clients, such as XChat and KVIrc,
require special "widget sets" to be installed on your system. If you go to the
home pages of these IRC clients, they will tell you what you need to download
and install.

Luckily, if you have a package-managed distribution as stated above, the
process is just as simple as downloading and installing the package you need.
Most typical end-users of distributions such as RedHat or Mandrake have the
benefit of a default installation that has already supplied you with
everything you need. Again, if you plan to compile from a source tarball
package, you should follow the instructions in README and INSTALL.

## A Brief Note

We'd also like to take a brief moment to make a very important point: if your
Unix distribution uses package management, it behooves you to use it. Please
do not install source tarball packages into distributions that use package
management, such as rpm or deb, unless your are a fairly experienced user (in
which case, what are you doing here?). While it's likely these programs will
work once compiled, they can still do more harm than good if you don't know
what you're doing! Trust me, I've made this mistake myself....

To install an IRC client, you usually need to have a decent level of [UNIX
knowledge](../misc/unixhelp.html). You may also get some tips from the rather
out-dated [IRC by Telnet FAQ](../misc/telnet.html) (question #6-8).

If you are not very savvy with Unix here are your choices:

  * seek help from somebody else who is,
  * download pre-compiled copies of your favorite client (the default method for users of package-managed distributions),
  * or stick to personal computer operating systems and clients which are easier to set up and use (such as [mIRC](/irchelp/mirc/) for Windows or the various [Mac clients](/irchelp/mac/)),

* * *

## Downloading Unix IRC Clients

### IrcII

There are now 2 main variants of ircII which we describe below:

**[ircII 2.8.2](ircii-2.8.2.tar.gz)** (4/95, 372,733 bytes)     The 'classic' release version of ircII, stable with relatively tame bugs, **recommended** for most people who don't feel the need to be on the bleeding edge. Some of our very experienced helpers have been satisfied with this version since 1995 and see no reason to ever upgrade. You need to get the [help file](ircii-2.8help.tar.gz) (~112KB) separately.

**[ircii-current](http://www.eterna.com.au/ircii/)** (3/2002, ~0.6MB) [ext. link]

After 2.8, ircII went through many, many versions from 2.9roof through 4.4Z,
all of which were extremely buggy, either simply annoying or seriously
compromised. After ircII 4.4 reached the Z release, the ircII team switched to
naming their releases according to date. As of this writing, the most recent
ircII release in source form is ircii-20020310.tar.bz2 (the .bz2 extension
require Bzip2 to unpack). This latest ircii-current release seems to be more
stable than it's 4.4 predecessors, and functions almost as stably as the
original 2.8 release. Because ircii-current is a rolling release at this
point, it's best if you go to the home page by following the link, and
download it from there.

* * *

### Clients based upon ircII

**[BitchX](http://www.bitchx.org/)** [ext. link]     The most popular ircII-based client (forked at ircii-2.8 originally, it's now based on the current EPIC release of ircII), currently at version 1.0c18 (2001). This client is packed with all sorts of desirable as well as useless features which make it complicated to the level of being unnecessarily bloated. This doesn't mean it's a bad client. It's stable, functional and its bugs aren't too irritating (although some can earn you K:lines if you're not careful). Documentation on BitchX-specific features is sparse (though much improved over older versions). Even slight configuration errors can become the cause of embarrassing events. We recommend it only as a heavy duty client, strictly for experienced ircII users who are prepared to figure out a lot of things by yourself and risk such mistakes. It is strongly recommended that you have the help files for ircII and EPIC available when using BitchX, as the functions BitchX shares with these clients are poorly documented (if documented at all) in BitchX's own documentation. Note that BitchX's channel protection settings are turned on by default, with inappropriate triggering thresholds which will probably result in your client turning on fellow channel operators in channels you hold ops in. Most of these protection features are generally counterproductive, and may compromise a channel in a crisis situation. It's strongly recommended that you look through the little bit of documentation that BitchX has, and turn these features off. While you are at it, make sure you turn the public away notices off too, they get a bit annoying, and many channels kick for them.

**[EPIC](http://www.epicsol.org/)** [ext. link]     A definitely "lighter" client than BitchX, it lacks many of the less useful features and the (not exactly stunning) colour scheme. It remains a lot closer to ircII and is based upon extensions to version 2.8.2. Recommended for users who intend to extend their client through extensive scripting.

* * *

### Other Console Clients

[**irssi**](http://www.irssi.org) [ext. link]

Probably the newest of the console IRC clients. irssi has rapidly matured into
a capable IRC client. Its default configuration utilizes hidden windows,
making it much easier to keep track of multiple channels. It also utilizes an
embedded Perl interpreter for its scripting, eliminating the need to learn a
new language. irssi appears to be very full featured, and may eventually
overtake BitchX in popularity. Irssi also lacks the potentially dangerous
defaults BitchX has, making it a good choice for the novice user. Even though
irssi's defaults are more reasonable, it would still be advisable to read the
documentation before trying to use irssi, as it is quite different from other
console clients, and the default use of hidden windows can take some getting
used to.

* * *

### GUI Clients

**[X-Chat](http://www.xchat.org/)** [ext. link]     X-Chat is likely the most popular GUI client for Unix Currently at version 1.8.8 (as of March 2002), it features mIRC-like look and feel and the ability to run powerful PERL-based scripts. X-Chat has also been ported to Windows, but functions best in it's Unix home. Recommended for the novice user to get started for its ease of use, and to the expert for its potential. X-Chat is built on the popular GTK+ toolkit, and is usually included as part of a standard [GNOME](http://www.gnome.org) installation.

**[KVIrc](http://www.kvirc.net/)** [ext. link]     KVIrc is an equally popular IRC client, based on the competing QT toolkit, which is part of the [K Desktop Environment (KDE)](http://www.kde.org/). KVIrc is at version 2.1.1 (May, 2001) and is currently developing V3.0, supposedly a major feature upgrade. KVIrc has the ability to load scripts and modules, all downloadable somewhere on the Web. KVIrc has ALSO been ported to Windows.

* * *

### Bots

**[eggdrop](http://www.egghelp.org)** [ext. link]     Bots are a very advanced subject, so be prepared to do a lot of reading and learning. Start with [Frequently Asked Questions about Internet Relay Chat roBOTs](/irchelp/misc/botfaq.html), then also check out the bot section near the end of the [New IRC Channel Operator's Guide](/irchelp/changuide.html).

* * *

## Help and related files

[Help for ircII commands](commands/)     WWW help files for all 500 commands
and settings! All of these should be available in all ircII-based clients
(ircII, BitchX, EPIC).

[irciiman.txt](irciiman.txt) (formerly called irciiman.wri)     The same help
information as above in one text file that you can download and keep as a
reference. This way you don't have to keep typing /help in ircII or stumble
all over the WWW help links. All ircII-based clients should implement these
features. EPIC and BitchX have numerous additional commands, functions and
capabilities. EPIC is well-documented at [its
homepage](http://www.epicsol.org) [ext. link]. BitchX is not well documented,
and most users need to know what they're doing, or will eventually stumble
upon things as they explore; however, BitchX is based upon the EPIC client, so
many of EPIC's extensions would also apply to BitchX.

[server numerics header](server-numerics.txt)      Techie stuff, useful to
people writing clients and scripts, or to those who simply wonder what all the
numbers mean when you get information from a server.

[pidentd](http://freshmeat.net/projects/pidentd/) [ext. link]     Identd
establishes your identity which is required by servers on most of EFnet and
all of DALnet, as well as many other nets. Requires root (superuser) access to
install, if you don't have it or know what that means, talk to your system
administrator. Also, see [the Firewall FAQ](../security/fwfaq.html) for more
information about potential ident problems.

* * *

## Other Download Sites

Get the latest clients at these archives:

  * [Freshmeat.Net](http://www.freshmeat.net) is almost inarguably the best resource for Unix applications on the web, including just about EVERY IRC client available to Unix users, even the most obscure.
  * [SourceForge](http://www.sourceforge.net) is a community of coders and developers who use this venue to track the latest changes and offerings of their open-source code.

Pre-compiled ircII binaries:

  * [RPMFind](http://www.rpmfind.net) [ext. link] is the definitive archive for RPM-based distributions. RPM users can find anything they need right here. If it's not here, it doesn't exist. RPMFind is not always up-to-date with the latest releases of most IRC clients, however, so caveat emptor - buyer beware.
  * Precompiled binaries may also be available from individual client home pages, which you can find through SourceForge or FreshMeat above. Please note the precompiled binaries will only work under fairly close to the exact same conditions that they were compiled under. It's always preferable to compile your own or assure that your system is compatible (package management is supposed to assure this for you, don't always trust it).

* * *

## Scripts for ircII (and variants)

The best script is still one that you write yourself. Never ever accept a
script from anybody (even friends you trust). It could have cleverly-hidden
back-doors which allow others to take over your client and maybe even steal
your password or compromise the security at your entire site! Many scripts
have lame or hostile features which can inadvertently get you banned from
channels or even servers! These are not idle threats, it happens all too often
in real life.

We recognize that the average user is probably not interested in learning how
to script or just wants some examples to get started. In that case, please see
our [ircII scripts page](/irchelp/script/) for some ircII script packages
which may increase your IRC enjoyment and convenience.

If you do want to **learn how to script**, there aren't really "how to"
guides, but you don't really need any. If you have some basic programming
experience, it's just a matter of getting some good references, such as
[irciiman.txt](irciiman.wri) (aka irciiman.wri) and [server numerics header
](server-numerics.txt), then learning by example from existing scripts such as
those in our [ircII scripts page](/irchelp/script/).

Note on the pronunciation of ircII:

Some of us like to call it "eye-are-see-two". However, the other main variant,
"irk-two" is probably historically more accurate. It's also commonly called
"urk-ee" which is most definitely wrong. Feel free to disagree with us, we're
not going to argue the point to death. What's pretty certain is that it is
"two" and not "ee".

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

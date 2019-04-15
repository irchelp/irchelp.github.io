---
title: ircII
author: RuyDuck, Apatrix, dracus, Jolo, and many other UNIXsaurii
layout: default
redirect_from:
  - /ircii/
  - /ircII/
  - /irchelp/ircii/
  - /irchelp/ircII/
  - /irchelp/clients/unix/ircii.html
  - /irchelp/clients/unix/ircii/
---


# ircII

updated May 9, 2004

by RuyDuck, Apatrix, stephanie, Jolo, and many other UNIXsaurii

* * *

**Security Warning** Versions of ircII earlier than 20030314 contained a buffer
overflow vulnerability. This vulnerability can only be exploited by a malicious
ircd, and not by other clients, however clients are still urged to upgrade!

* * *

## Introduction

The UNIX operating system was the original home to the Internet Relay Chat,
when some code developers wanted a way to chat in an easy-to-use, real-time
forum and discuss their developments. Back in the early days of IRC, the
[ircII](http://www.eterna.com.au/ircii/) (pronounced irc-two[*]) program was the premiere client. Designed to
run in a text-mode environment, IrcII is not pretty -- it has no sounds,
graphics, menus, pop-ups, etc. (see a [screen capture](/media/ircii.gif)). It is,
however, fast, stable, lightweight, portable, and easily backgrounded using
virtual terminals such as Unix "screen".
ircII was the first to implement Client to Client Protocol (CTCP) and Direct Client
to Client (DCC).

![*](/images/2016/07/ircii.gif)

UNIX has evolved over the years into many variant OS's such as Linux, BSD,
Solaris, etc., sometimes collectively known as "*nix", "Unix-like" or simply
"Unix". Because of this increasing popularity, more, newer IRC clients have
been developed for Unix systems. Perhaps the most common are **BitchX** and
**EPIC**, both variants of the ircII client with greater functionality built
into them at some stage in their development.

Even more recently, with the increased use of Unix on home PCs, IRC users are
turning to graphical user interface (GUI) clients to meet their needs. As with
[mIRC](http://www.irchelp.org/irchelp/clients/windows/mirc/) for Windows or the various
[Macintosh](http://www.irchelp.org/irchelp/clients/mac/) clients, text-based clients
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
today, the Windows client [mIRC](http://www.irchelp.org/irchelp/clients/windows/mirc/) has
largely taken over that position.

* * *

* * *

## Getting ircII

### From Packages
Most Linux distributions, as well as other UNIX and UNIX-like
operating systems, will have binary packages based on a
relatively recent version of ircII available.

It's highly recommended that you use distribution-provided
packages if available, even if they are not the latest
version - ircII changes at a glacially slow pace, and by
using your distribution's packages, you can easily
apply any necessary security updates, as well as easily
uninstall ircII if you no longer need it.

#### Debian/Ubuntu and derivatives
Under Debian, Ubuntu, and derivatives, using the apt/dpkg package management system ircII is normally
found in the *ircii* package, and can be installed via `sudo apt-get install ircii`

#### Fedora, RHEL, CentOS, and derivatives
Under Fedora, Red Had Enterprise Linux, CentOS, and derivatives, ircII is normally in the *ircii* package, and
can be installed via `sudo yum install ircii`


### From Source
If your distribution does not offer packages of ircII, or
you wish to use a version newer than your distribution
provides, you can download and compile the source code.

Compiling and installing software from source is not
difficult, but does require a solid understanding of
the *nix shell environment. We highly recommend that users stick to packaged versions if possible, as they are much easier to install and maintain than software compiled from source.

Mixing distribution-packaged software and software built from source on the same system is likely to lead to conflicts.
At the very least, Be sure to install into /usr/local rather than into /usr
when installing from source, so as not to conflict
with files installed by package managers. Due to
systemwide configuration files or scripts for ircII installed by some distribution, you may encounter other conflicts or oddities if a prepackaged
version is installed alongside a source-built version,
even when the source-built version is installed in the
correct location. This can persist even if the distribution
packages are removed, if systemwide configuration files are
left behind.
You may wish to use [GNU Stow](https://www.gnu.org/software/stow/) to
manage packages compiled from source - GNU Stow "packages"
source installed packages into subdirectories and manages
symlinks, making it easy to "install", "update", and "uninstall" such packages without risking leaving traces
behind.

[ircii-current](http://www.eterna.com.au/ircii/)

## Version History
2.8.2 was for a long time the most popular version, and
was widely deployed in the 90s.  After the 2.8 series, ircII went through many, many versions from 2.9roof through 4.4Z,
all of which were extremely buggy, either simply annoying or seriously
compromised. After ircII 4.4 reached the Z release, the ircII team switched to
naming their releases according to date. As of this writing, the most recent
ircII release in source form is ircii-20020310.tar.bz2 (the .bz2 extension
require Bzip2 to unpack). This latest ircii-current release seems to be more
stable than it's 4.4 predecessors, and functions almost as stably as the
original 2.8 release. Because ircii-current is a rolling release at this
point, it's best if you go to the home page by following the link, and
download it from there.

**The older versions are no longer recommended due to a security vulnerability discovered in 2003, and fixed in version 20030314.**

The version history from 4.4 onwards is detailed in [ircII's news page](http://www.eterna.com.au/ircii/news.html)

* * *

### Clients based upon ircII

**[EPIC](http://www.epicsol.org/)** [ext. link]
EPIC is a fork of ircII designed to improve upon the
scripting capabilities of the client. It adds little to
nothing in terms of user interface, but, under the hood,
there are numerous improvements designed to make scripting
easier and more efficient. It retains extremely close
compatability to version 2.8.2, from which it was forked


**[BitchX](http://www.bitchx.org/)** [ext. link]     The most popular ircII-based client (forked at ircii-2.8 originally, it's now based on the current EPIC release of ircII), currently at version 1.0c18 (2001). This client is packed with all sorts of desirable as well as useless features which make it complicated to the level of being unnecessarily bloated. This doesn't mean it's a bad client. It's stable, functional and its bugs aren't too irritating (although some can earn you K:lines if you're not careful). Documentation on BitchX-specific features is sparse (though much improved over older versions). Even slight configuration errors can become the cause of embarrassing events. We recommend it only as a heavy duty client, strictly for experienced ircII users who are prepared to figure out a lot of things by yourself and risk such mistakes. It is strongly recommended that you have the help files for ircII and EPIC available when using BitchX, as the functions BitchX shares with these clients are poorly documented (if documented at all) in BitchX's own documentation. Note that BitchX's channel protection settings are turned on by default, with inappropriate triggering thresholds which will probably result in your client turning on fellow channel operators in channels you hold ops in. Most of these protection features are generally counterproductive, and may compromise a channel in a crisis situation. It's strongly recommended that you look through the little bit of documentation that BitchX has, and turn these features off. While you are at it, make sure you turn the public away notices off too, they get a bit annoying, and many channels kick for them.

### Suggested Alternatives

[irssi](/irchelp/clients/unix/irssi/)

irssi has largely taken the place of ircII as the gold-standard for console IRC clients, due to a simple
but extensible user interface, and defaults that just
work out of the box for most users without needing
any customization.

Users migrating from ircII should note that irssi's default configuration utilizes hidden windows,
making it much easier to keep track of multiple channels.
It also utilizes an embedded Perl interpreter for its scripting, eliminating the need to learn a
new language. This is a positive for new users, but,
might be a downside if you are heavily invested in ircII
customizations.

### Other UNIX/Linux Clients

Our main [UNIX/Linux Clients](/irchelp/clients/unix/) page
lists a large number of clients, including both console
and GUI Clients.


## Help and related files

[Help for ircII commands](/irchelp/clients/unix/ircii/commands/)     WWW help files for all 500 commands
and settings! All of these should be available in all ircII-based clients
(ircII, BitchX, EPIC).

[irciiman.txt](/irchelp/clients/unix/ircii/irciiman.txt) (formerly called irciiman.wri)     The same help
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
administrator. Also, see [the Firewall FAQ](/security/fwfaq.html) for more
information about potential ident problems.

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

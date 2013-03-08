# JoloPak: ircII convenience script

by Joseph Lo

* * *

## Introduction

**JoloPak 1.4.8** was released 10/03/2002 replacing version 1.4.7. You can check out the version changes below. 

JoloPak is an [ircII](/irchelp/ircii/) convenience script package intended for
less experienced users, or as a teaching tool for those trying to learn how to
write their own script. In other words, it's "bloatware" - a large collection
of features, some of which are useful, many of which are probably silly or
unnecessary. It is designed to make ircII easier and more powerful to use,
IMHO. JoloPak does have some basic channel protection functions (borrowed with
permission from [Robin](robin.html)), but it is not a "war script" and does
not contain features that tend to cause trouble or get you in trouble.

Note that JoloPak has been tested extensively with ircII on UNIX shell
accounts. It has been reported to work with several variants of ircII such as
EPIC or BitchX, on UNIX as well as Windows, but your mileage may vary. JoloPak
will **not** work with [mIRC](/irchelp/mirc/).

As I explained in the general [ircII script](/irchelp/script/) page, I'm not
really a script writer myself, but as a #IRChelp op and the webmaster of this
site, I come across a lot of good information and decided to collect the best
stuff together into one script. The Jolopak script combines the best parts of
Barron's SuperPak (IMHO) with a lot of custom features contributed by other
#IRChelp experts. Feel free to use it as is, or to rip out the parts you like.
If you do distribute your variant, just be sure to link here so that other new
scripters can benefit from the full or more updated package here.

## Installing JoloPak

Follow these easy steps to install JoloPak.

  1. Download my [sample .ircrc](ircrc_for_jolopak.txt) file and save it as **`.ircrc`** (note the leading period) in your shell account's home directory. Use a UNIX text editor (like pico, vi, jove, or emacs) to open up this .ircrc file and personalize the 3 variables called `myversion`, `myhome` and `myuserinfo`. Just follow the directions in that file for how to do this.

_Note:_ You only need to do this once. If you're upgrading from an older copy
of Jolopak, just keep your existing .ircrc with all its customizations.

  2. If you are upgrading from an older version, first rename the old one, e.g. `mv jolopak.scr jolopak.old` (just in case you change your mind and want to stick to the old version). 
  3. Download the main JoloPak file [jolopak.scr.gz](jolopak.scr.gz). (**Lynx users: Do not open that link**, instead highlight it and download it with 'd'.) Save it to your home directory and don't change its name. 
  4. Uncompress the file: `gzip -d jolopak.scr.gz` which will produce a file **`jolopak.scr`** - again don't rename that. 
  5. If you installed ircII yourself such that it doesn't reside in the default /usr/local/lib/irc/ directory, change the `LOAD_PATH` and `HELP_PATH` variables accordingly in your new .ircrc file. These allow you to load standard scripts that come with ircII and to use ircII's built-in help files, respectively. 

Now Launch ircII as usual, such as by typing `irc`. You will see "JoloPak
[version number] loaded" indicating the script is installed and running.
That's it!

## Using JoloPak

JoloPak comes with built-in help which you can access by typing `/jhelp`
within ircII. This will bring up several menus that will tell you about
JoloPak's special commands. Here are all the help screens in one place in case
you want to print them all out.

    
    
    +-----------------------------------------------------------------+
    |                   JOLOPAK MAIN HELP SCREEN                      |
    +-----------------------------------------------------------------+
    | The following are available by typing the appropriate command:  |
    | /jhelp 1    Commands Screen 1: Basic chatting                   |
    | /jhelp 2    Commands Screen 2: Channel maintenance              |
    | /jhelp 3    Commands Screen 3: Investigating & ignoring People  |
    | /jhelp 4    Commands Screen 4: Answering machine & DCC chat     |
    | /jhelp 5    Commands Screen 5: Miscellaneous commands           |
    | /jhelp 6    Commands Screen 6: Keyboard shortcuts               |
    |                                                                 |
    | Required arguments are shown, optional ones are in [brackets].  |
    | ***  General IRC help on WWW at  http://www.irchelp.org/  ****  |
    +-----------------------------------------------------------------+
    
    +-----------------------------------------------------------------+
    |           Commands Screen 1: Basic chatting                     |
    +-----------------------------------------------------------------+
    | /j #channel          join a channel or follow an invite         |
    | /n [#channel]        list names of people on irc or channel     |
    | /part [#channel]     part a channel or to part current one      |
    | /w nick              see someone's information and channels     |
    | /idle nick           check how long someone has been idle       |
    | /p nick/#channel     ping a person or channel to test lag       |
    | /m nick              send a private message to someone          |
    | /look [#channel]      show who is on channel with statistics    |
    | /count [#channel]     show channel statistics                   |
    +-----------------------------------------------------------------+
    
    +-----------------------------------------------------------------+
    |           Commands Screen 2: Channel maintenance                |
    +-----------------------------------------------------------------+
    | /t [topic]            set topic or to view it if none supplied  |
    | /wall message         private message to current channel ops    |
    | /chop nick1 nick2...  grant channel ops to up to 4 people       |
    | /deop nick1 nick2...  remove channel ops from up to 4 people    |
    | /k nick [reason]      kick someone out of the channel           |
    | /bk nick [reason]     ban & kick someone out of a channel       |
    | /hbk nick             same as /bk but bans entire domain        |
    | /ban [nick]           ban someone, w/o nick shows channel bans  |
    | /hban nick            same as /ban but bans entire domain       |
    | /unban nick           removes all current bans affecting nick   |
    | /ub nick!user@host    unban specific n!u@h mask                 |
    | /banhelp              Detailed help for above kick/ban commands |
    +-----------------------------------------------------------------+
    
    +-----------------------------------------------------------------+
    |           Commands Screen 3: Investigating & Ignoring People    |
    +-----------------------------------------------------------------+
    | /f nick                 ctcp finger someone                     |
    | /finger nick/host       unix finger nick/host, /finger for help |
    | /v nick                 find out someone's irc client version   |
    | /whoip foo              UNIX whois info, foo = host/domain/IP   |
    | /ig nick or user@host   ignore the specified person             |
    | ctrl-o                  same as /ig for last person to /msg you |
    | /shoo [nick]            timed ignore for nick or last /msg'er   |
    | /uig nick or user@host  unignore somebody                       |
    | /sig  and  /zig         show or zap (delete) ignore list        | 
    +-----------------------------------------------------------------+
    
    +-----------------------------------------------------------------+
    |           Commands Screen 4: Answering Machine & DCC Chat       |
    +-----------------------------------------------------------------+
    | /record [on|off]  check machine status or turn on|off           |
    | /away message     mark yourself as away, turns on ans. machine  |
    | /away             mark yourself as back, turns off ans. machine |
    | /play             play back your messages                       |
    | /erase            erase your messages                           |
    |                                                                 |
    | /chat             to accept a chat request, or close current    |
    |                   request and respond to another, or just close |
    | /chat nickname    to send a chat request, or close current      |
    |                   connection and open new one to specified nick |
    +-----------------------------------------------------------------+
    
    +-----------------------------------------------------------------+
    |           Commands Screen 5: Miscellaneous Commands             |
    +-----------------------------------------------------------------+
    | /autorejoin on|off  to set autorejoin status to ON or OFF       |
    | /dccclear           close all offered DCC gets and chats        |
    | /dns whatever       resolve the IP/host for a host, IP, or nick |
    | /h+ or /h-          another way to turn pause on (+) or off (-) |
    | /list *keyword*     search for channels containing keyword      |
    | /lusers [server]    get user count for current or remote server |
    | /pause              toggle pause mode on|off, e.g. for /list    |
    | /reload             reloads your .ircrc setup file script       |
    | /td number          delete the timer number given, usu. /td 0   |
    | /nocolor            toggle mIRC color codes on|off              |
    +-----------------------------------------------------------------+
    
    +-----------------------------------------------------------------+
    |           Commands Screen 6: Keyboard Shortcuts                 |
    +-----------------------------------------------------------------+
    | escape-p    scroll to previous screen (up), also control-p      |
    | escape-n    scroll to next screen (down)                        |
    | escape-e    scroll to end                                       |
    | contrl-n    toggle to next channel if you're on more than 1     |
    | contrl-w    toggle to next /window                              |
    | tab         switch through nicks you messaged recently          |
    | up arrow    go up through list of previous lines typed          |
    | down arrow  go down through list of previous lines typed        |
    | contrl-k    complete nick (type 1st few letters then ctrl-k)    |
    | contrl-t    cycle through list of completed nicks if >1 matches |
    +-----------------------------------------------------------------+
    

## Customizing JoloPak

In addition to the above commands, JoloPak contains hundreds of settings and
aliases. I encourage you to look through JoloPak to learn more about scripting
and to customize the script for your own preferences. There are comments
throughout the script. To turn any line off, simply comment it out by putting
a # symbol at the beginning of the line. Likewise, some lines containing
unusual optional features are commented out by default; to activate them,
delete the leading # symbol.

**A better way to customize the script** is to avoid modifying jolopak.scr itself, but instead to make changes to a separate file such as your **.ircrc** file. This way you can update to future versions of JoloPak simply by replacing **jolopak.scr**, and all of your changes should still work. I give several examples of how to do this at the end of my [sample .ircrc](ircrc_for_jolopak.txt) file. Essentially the idea is to override Jolopak's settings after they have already been loaded.

## Version Changes

(In chronological order, skip to the bottom for most recent changes.)

    
    
    # Changes from 1.1.4 to 1.2
    # added /td # to delete timers easily, e.g. /td 911 (to cancel autorejoin)
    # added 329 numeric for channel TS
    # /shoo now doesn't bother to tell the other person - a true ignore shouldn't
    #       attempt to antagonize the other guy. Also made it more general so that
    #       it ignores all usernames from that host/IP.
    # incorporated colorstrip.irc to remove color codes, dumped cstrip.irc which
    #       was buggy and required hacking ON PUBLIC etc.
    # adjusted idlesafe back to 15 min instead of 1 hr frequency
    # automatically /whois nicks that /notify reports as having signed on
    # Superpak ban and kick commands replaced by turtle's bans.and.kicks.mod from
    #       robin. Bans can finally handle numeric IPs as well as hostnames!
    #       Transparent change of /k nick [reason] and /ban [nick], but now
    #       /bk nick [reason] replaces /kb (note reversal of kb to bk).
    # garfr ctcp - disabled finger response (back to Garf's original now) since
    #       it increases potential for flood and is really unnecessary
    # added /dccclear to close all offered DCC gets and chats; useful against
    #     lamers offering trojans or flooding with DCC offers
    # garf's hack is breaking for #@channel, taken out
    # enhanced /lusers + /version so you can specify a remote server as argument
    # added /dns which works with nick, hostname, or IP like in mIRC. If you do
    #       "/dns nick" or "/dns hostname" it will give the numeric IP; if you do
    #       "/dns IP" then it will give the hostname.
    # updated /jhelp for all these new commands
    
    # Changes from 1.2 to 1.2.1
    # There were 3 optional features at the end of ircrc_for_jolopak which
    #   were commented out in 1.4.1 but made active in 1.2, these are now all
    #   commented out again to avoid confusion.
    # Fixed my own email address
    
    #Changes from 1.2.1 to 1.3
    # fixed /j alias to allow specifying of keyword or other arguments
    # made lusers numeric 251 & 255 output more general in case IRC admins get
    #   get cute and customize those
    # hbkick renamed to hbk to be shorter and consistent with /banhelp description
    # upped ctcp flood delay to 20 s
    # Garf's ctcp flood protection keeps you from flooding off, but still tells
    #   you about every attempt even if it was aborted, now all aborted messages
    #   fail silently so that you are not bothered by them.
    # added /wall fix by Apatrix so that it works on new hybrid6 ircd's
    # added query commands to check a user's domain information using a part of
    #   either the hostname, such as for abc.foo.com use /whodom foo.com,
    #   or for an IP like 123.4.56.7, use /whoip 123.4.56
    # now allows * as 1st character in topic with /t alias, e.g. /t *** I RULE ***
    # added 317 patch for /whois to show not just idle but also signon time
    #   if you /whois somebody on your server or remotely with /whois nick nick
    # added ignoring of CTCP sound's
    # added on join to shorten "has joined channel" to "joined" and add timestamp
    # added on leave, same as above
    # added on signoff, same as above
    # fixed /nocolor so that it actually toggles now, added author credits finally
    
    # Known Problems:
    # /lusers remote.server.here gives correct, default response from that server
    #       but it's not custom-formatted like /lusers yet, oh well.
    # /dccclear sometimes will crash ircii 2.8.2, not sure why
    
    #Changes from 1.3 to 1.4 - 10/22/2000
    # Changed whois server to use whois.geektools.com, unifying /whoip & /whodom
    #   so whoip now takes host(abc.foo.com), domain(foo.com), IP(1.2.3 or 1.2.3.4)
    # Changed regular bans to exclude all usernames but no mask on host/IP:
    #   *!*user@*.foo.com --> *!*@abc.foo.com, and *!*user@1.2.3.* --> *!*@1.2.3.4
    #   Inspired by mirc's /ban level 3, this is useful for big ISPs like AOL,
    #   since the username is trivial to change w/ a server reconnect and host
    #   masking like *.ipt.aol.com affects too many innocents. If /ban fails due
    #   to lamer changing his host/IP such as from redialing up to his ISP, use
    #   the existing /hban which sets domain bans *!*@*.foo.com and *!*@1.2.3.*.
    #   Also updated /banhelp help instructions for kick and ban commands.
    # Still struggling to deal with hybrid6 (EFnet) new limits on multiple targets
    #   which got dropped to just 2 with ircd h6rc* versions. For now I hacked
    #   /wall to handle all 3 ircd's (see comments in the alias itself).
    
    #Changes from 1.4 to 1.4.1 - 11/15/2000
    # Cleaned up /wall to make separate /dowall alias and clarify maxtarg.
    # Yet another /wall handler to disable it entirely for 2.8/comstud-1.11-REL*.
    
    #Changes from 1.4.1 to 1.4.2 - 5/19/2001
    # Yet another /wall handler to re-enable for 2.8/comstud-1.12-REL*.
    # Disabled response to CTCP ECHO, seems unnecessary.
    
    #Changes from 1.4.2 to 1.4.3 - 5/21/2002
    # Simplify /wall considerably thanks to EFnet modern ircd's fixing old problems
    
    #Changes from 1.4.3 to 1.4.4 - 7/29/2002
    # Added missing leading # in changelog above, mostly harmless but oops anyway.
    # Added /refresh to refresh channel topic.
    # Simplified /wall to eliminate antiquated 2.8/comstud-1.1*, finally fixed
    #   an old bug where it was not checking properly to see if the ircd
    #   supports WALLCHOPS (/notice @#chan as in DALnet, EFnet, etc.). So now on
    #   many nets, /wall will be much faster and more reliable.
    # Known bug - nick completer cannot match if nick begins with ^
    
    #Changes from 1.4.4 to 1.4.5 - 7/29/2002
    # Minor tweak in /refresh - //topic $C not just //topic (2.8.2 seems to care)
    
    # Known bug - nick completer will crash stock ircii-current on really big chans,
    # but then again, so will most things I do anyway, heh.
    
    #Changes from 1.4.5 to 1.4.6 - 9/18/2002
    # Changed /wall to handle new hybrid variants including h7 and ratbox, soon
    # i'll prob just make the @#chan thing the default not the exception
    
    #Changes from 1.4.6 to 1.4.7 - 9/28/2002
    # Changed ban function in several ways.
    # 1. Add ability to handle ipv6 IPs with colons instead of periods, else
    #    anything using ipban (/ban etc.) will break horribly.
    # 2. Noticed that old ipv4 IP ban was buggy. A long time ago, it counted the
    #    length of the leftmost octet (almost always 2 or 3 digits) and lopped that
    #    off the right. It should count the length of the rightmost octet, but
    #    index only works left to right so that would be a pain. Then I changed it
    #    to ban the exact IP without any masking, which seemed too weak. So now
    #    I just changed it to arbitrarily lop off 3 digits, which is just as
    #    effective as the original buggy masking but faster. For nick!user@1.2.3.4
    #    /ban yields *!*ser@1.2.3.* and /hban yields *!*@1.2.3.*
    # 3. Cleaned up hipban to just use ipban with a flag "bandomain" that tells it
    #    whether or not to ban username by *!*ser@whatever or *!*@whatever.
    
    #Changes from 1.4.7 to 1.4.8 - 10/3/2002
    # OK, so I screwed up. :) By adding the ipv6 IP ban I broke the ipv4 IP ban.
    # All fixed now hopefully. I also changed the behavior of ipv4 IP bans to be
    # consistent with hostname bans, i.e., for nick!user@1.2.3.4:
    # /ban yields *!*ser@1.2.3.4 (specific user and IP),
    # /hban yields *!*@1.2.3.* (all users and the domain too)
    
    

[Return to general ircII script page.](/irchelp/script/)

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


---
title: Logging and Reporting IRC Abuse
author: prysm, Joseph Lo (jolo)
layout: default
---

# Logging and Reporting IRC Abuses

by prysm with minor edits by Jolo

updated Oct 13, 1998

**Ed. note:** Are you being attacked by hordes of evil takeover bots, or otherwise feel like you need to contact an IRC operator for help? Before you run off in search of an IRC operator, first see the [Myth of Opers](/irchelp/ircd/opermyth.html) regarding what IRC ops can and cannot do for you, as well as the [IRC Hints](hints.html) regarding takeovers and attacks. If you still think you need an IRC op's help, this file provides some guidelines for logging IRC and reporting abuses. Logs are important because nobody is going to take your word for some alleged abuse. Written by prysm, an IRCop on [EFnet](http://www.efnet.org/), some of these guidelines apply only to EFnet, but most users should find it generally helpful. -Jolo

## 1. The Quick Version

Use **/admin server.name.here** for the email address of the administrator or
mailing list of a server, such as "/admin irc.whatever.com". Include a log of
the event(s), the output of the **/date** command, your current **/whois**
information, and a **/whois** or **/whowas** of the abuser(s).

Now even if that's all you wanted, you probably should take a minute to read
the following anyway.

* * *

## 2. Why do you want to talk to an IRCop?

**First, realize that the job of the IRC operators (IRCops or OPERs) is to run the servers.** _They are not "IRC cops"_ and they do not enforce laws or monitor people for bad behavior. They are not responsible for getting back nicks or channels, since neither are 'owned' or 'registered' on EFnet IRC. On EFnet, IRCops do not have the omnipotent ability to see into secret channels or change channel modes. (For more information on what IRC ops can and cannot do, check out our many guides pertaining to the [IRC operators and servers](/irchelp/ircd/).)

**Opers _can_ sometimes help you** if somebody is viciously attacking you or your channel, running bots or clones, or otherwise violating the rules of that server. These rules are spelled out in the message of the day for every server, type **/MOTD server.name.here** to read them.

If another user is being abusive or insulting or flooding, use the **/ignore**
commands provided with your client for this purpose. You may also want to
change channels, nicks, and even servers, if he is persistent. Considering
there are tens of thousands of people on IRC, IRCops cannot possibly keep up
with your personal problems, nor is it their role to punish people for
profanity, pornography, "unfair" kick/bans, etc.

**A word on channel takeovers.** The maintenance of a channel is the responsibility of the ops of that channel. It's often too late once a channel is lost, because the takeover artists can close the channel so that even opers cannot figure out who to sanction. Also, since channels are not owned, even the few opers who might care about this issue will not interfere based on your word alone, so if your channel was 'stolen' by a another IRC user and not a bot, it's now theirs unless you can come up with some good objective proof. So know the people you decide to give ops to. These days, it is best to require a password as well as checking the other person's user@host before giving ops.....from _every_ person, _every_ time. This is very important.

* * *

## 3. Now, if you _still_ want to talk to an IRCop

If you're really sure you want to talk "live" to an oper, make sure you find
one from the server that the abuser is using. Do not bother the opers from
_your_ server unless the abuser is also on your server. To find out what
server the abuser is using, do **/whois nickname-of-abuser**. Then type
**/MOTD server.name.here** to read the rules of that server. If the server
/MOTD says to send logs of abuse to an email address, that's what they want
you to do, don't waste your time trying to /msg the opers.

Here are some other commands for finding opers. _Use these sparingly_, because
troublemakers often use these commands, and you wouldn't want to be mistaken
for one of those. Some servers will not allow you to do these commands unless
you are connected to the server yourself.

  * **/stats p server.name.here** will show you currently connected opers on that server (and some may show idle time as well)
  * **/trace server.name.here** does much the same thing.
  * **/stats o server.name.here** shows the list of opers authorized by that server, but it does not guarantee they are using that nick or even online at the moment. **/whois nick nick** (typing the nick twice) should show you their idle time.

**Remember, If an oper says they will not or cannot help you, please respect the answer.** Opers are usually volunteers, they are not paid by you or anybody else, so they are not obligated to do anything for you.

* * *

## 4. I found an oper to help me, how do I send them a log?

**Do _not_ copy and paste unexpected or uninvited information to an IRCop.**     Most IRCops do not run mIRC, which has separate windows for each messager. If you copy/paste the flood of the abuse you just got to an IRCop you will most likely get /killed. (When a user pastes 20 lines of floods or abuse to my screen without warning, it totally floods the information I am working on off the screen. I don't know it is a copy, I think _I_ am being attacked.) Information of more than 2-3 lines probably would be better sent as a **/DCC** file send of a log.

**Make your message count.**     Opers are busy. they do not want to have to beg you for the pertinent information. (Sometimes a user takes so long to get to the point, that I have lost the thread of what they are talking about. If the channel name is 3 screens back, it takes me more time to put all the information together) So give the oper the nickname of the abuser and the channel involved, and if it is a bot, any information you have to show why you think it is one.

**If you do email, please be sure you are emailing from an address that will accept a reply.**     I have spent many hours writing a helpful reply to users, only to find they are undeliverable.

* * *

## 5. How to actually make a logfile

Okay, if you need help on how to make a logfile, here are some hints for some
popular IRC clients:

**[mIRC (for Windows)](/irchelp/mirc/)**     type **/log on** or click on the upper left-hand corner of the window and select the logging option. The log then starts to capture what passes through that window from that point in time. If the info you want to save has already passed, backscroll the window with the Page-Up key and highlight the text you wish to select, which saves it to a buffer. Select Clipboard, Notepad, Windows Write, or another text editor, then use the Ctrl-V command to paste the block of information to the screen. Save the file, and it is yours. Save as many windows of text as you need. If the window has been closed, unfortunately, that information is lost if it was not logged before closing.

For the Win 3.x program, one can select another application with the CTRL-esc
keys to get to Program Manager.

**PIRCH (for Windows)**     PIRCH has logging options to select the logfile directory, and whether to Auto-log. Later versions of PIRCH also has a **/set logs on**(or off) command line to toggle logging at the command line. Check your **/help** files for more information on this.

**WSIRC (for Windows)**     **CHANNELlog** will toggle logging on/off for WSIRC.

**[ircII (for UNIX, VMS, Windows, etc.)](/irchelp/ircii/)**     For ircII, you may choose the name of the logfile you desire with: **/set logfile new.logfile.name**. Otherwise the default IrcLog name will be used. (don't forget that UNIX is case sensitive, so you have to use the caps in IrcLog to find it) Use **/set log on** and **/set log off** to open or close the file. The information is saved to that file on your shell account, and subsequent openings/closings will append information to the file. If you use **/quit** to exit IRC, the file is automatically closed.

To capture information that has passed previously, open your logfile as
quickly as possible, and then use the **/lastlog** command to scroll the
information from your lastlog buffer into the opened file. It will capture
much of what has happened. However, there may be things, like channel
parts/joins that do not show up with the /lastlog command.

After /quit'ing IRC and returning to your shell, you would use any text
editor, like pico, vi, or emacs to read it. If you have it, the pico editor is
the easiest to use, since it is similar to the Pine email editor. If you just
want to view it, the 'more' command will show you the contents of your file,
one page at a time (hit space to advance to the next page). For example:
**more IrcLog**

If you are using a mouse-compatible interface, or a communications program
like Telix, which has a screen capture ability (alt-I for Telix allows you to
take a 'picture' of a screen. ), a true backscroll will serve you well, since
more channel information like join/parts will show up. The true backscroll for
ircII is managed with 3 commands, ESC-p (hit "escape" key, then hit "p" key)
for previous half screen at a time, ESC-n for next screen, and ESC-e to exit
from backscroll and return to end. (Remember the ESC-e so you can get back to
your command line.) When using backscroll, use the ESC-p command twice to get
a full screen change, then take your screen image capture.

**[Ircle (for Macintosh)](/irchelp/macintosh/)**     It's easy to log stuff in Ircle and other Mac clients. Simply select the text you want, copy, go to a text editor such as SimpleText or BBEdit, paste, and save. If the text extends beyond the current screen, you can just use the mouse to select and scroll up while holding down the mouse button. You can also "shift-select" the text: click on the first word, use the scroll bar to go to the other end, then hold down shift and click on the last word to select everything in between. Ircle also supports automatic logging if you want to routinely log everything, see File / Preferences / Logging.

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

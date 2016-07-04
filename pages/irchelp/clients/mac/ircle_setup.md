---
title: ircle setup guide
author: Joseph Lo (jolo)
---
#  ![*](/irchelp/Pix/ircle_spin.gif) Ircle Setup Guide
![*](/irchelp/Pix/ircle_spin.gif)

original version by [Jolo](http://deckard.mc.duke.edu/%7Ejyl/) at [http://www.
irchelp.org/irchelp/mac/ircle_setup.html](http://www.irchelp.org/irchelp/mac/i
rcle_setup.html)

last updated 11/24/97

(for version 3.0b9 but later versions are still similar)

**Note: these instructions are for Ircle version 3.x only. They do not apply to earlier versions.**

[ [back to Mac IRC page](index.html) | [Ircle home
page](http://www.ircle.com/) | [download
Ircle](http://www.ircle.com/download.html) ]

_This page has many illustrations and it may take >30 seconds to load them all
over a modem connection._

[Ircle](http://www.ircle.com/) is the gold standard among [Mac IRC
clients](/irchelp/networks/) because it is by far the smallest, least laggy,
most updated, and most stable. If you think Ircle looked ugly or was buggy,
you probably haven't seen a [modern version](ircle_2net.gif). Ircle is easy to
use, plus it supports the full set of standard IRC commands and some very cool
non-standard features too. Ircle is $15
[shareware](http://www.ircle.com/register.html) and well worth it! The
following is an idiot-proof, illustrated, step by step guide to setting it up.
The author of Ircle now also has an [official setup
guide](http://www.ircle.com/reference/pref.html) that is a little shorter.

## Step 0. Setting up your Mac for the Internet

Make sure your Mac has the appropriate software (either MacTCP or [OpenTranspo
rt](ftp://ftptoo.support.apple.com/pub/apple_sw_updates/US/Macintosh
/Networking-Communications/Open_Transport/)) and has a connection directly to
the Ethernet or indirectly via a modem and dial-up account from an [Internet
service provider (ISP)](http://www.thelist.com). If you can use Netscape or MS
Internet Explorer with your Mac, for example, you're ready. Download the
latest version of Ircle (see links at top of page) and if necessary,
uncompress it with [StuffIt
Expander](http://www.aladdinsys.com/consumer/expander2.html).

## Step 1. Launching Ircle.

Launch Ircle by double-clicking on the icon called **ircle3.0bUS** or
something like that - it'll be the only one called "ircle"-something. You will
then see the following array of windows. To get connected, highlight the first
line from the **Connection** window if it isn't already and click **Edit** (as
shown by the red arrow).

![](ircle_init.gif)

## Step 2. Setting up your personal information

This opens up a new **Connection preferences** window. Enter your nickname
(your online "handle"), username (typically the part that precedes the "@" in
your email address, or make up something short, lower case, with no weird
characters), and your real name (or make up whatever you want people to see).
By default the server has been set to _phoenix.az.us.undernet.org_ which is a
server on the "Undernet" - 1 of the 4 major networks. If this is your first
time, you can just click **OK** and proceed to step #6 below to connect to
that server. If however you want to select a different server/port combination
such as to explore some of the other networks or to meet a friend on a
specific server, click on the **Select** button (as shown by the red arrow)
and go to the next step.

![](ircle_conn.gif)

_Note:_ you can check _Auto connect to server_ if you want Ircle to
automatically make this connection when it is launched. You can check
_Invisible_ so people not on the same channels as you cannot find you as
easily, this will give you more privacy and help to avoid unsolicited ads or
attacks.

## Step 3. Selecting a server from the list

This opens up the **Server list** window, where you can select a different
server or port number. For example, scroll to the top to see a list of servers
for [EFnet](http://www.efnet.org/) North America, the biggest [IRC
network](/irchelp/networks/). In the figure below I selected _irc.cris.com_.
Now click **Select** to accept that change.

![](ircle_serv.gif)

## Step 4. Adding a new server to the list

This skill is important, because IRC servers come and go constantly. Many of
the servers in Ircle's default list are in fact defunct. For an up to date
list, check out our IRC networks and servers page at
[http://www.irchelp.org/irchelp/networks/](/irchelp/networks/). Say you want
to meet a friend on a special server that is not shown in the list, just click
**Add**. If you want to edit an existing entry such as to keep the server name
but change the port number from the default 6667 to speed up connecting, just
select the entry and click **Edit**. Either button brings up the **Edit server
name/port** window shown below. Just enter the server and port, such as
_irc.mo.net_ and _6666_ as shown below. If you know the network name like
"EFnet" go ahead and select it in the popup menu, if not don't worry about it.
Finally click **OK**. This returns you to the **Server list** window where you
can click **Select** to use your new or edited server.

![](ircle_servadd.gif)

## Step 5. Miscellaneous personal information

This part is optional. To personalize your copy of Ircle, return to the
**Connection preferences** window (previously described in Step 2) and click
on the tab on top labelled **Misc./CTCP** and fill in the blanks with anything
you like. These replies are given when others query you with the _/ctcp
yournick finger_ or _/ctcp yournick userinfo_ commands.

![](ircle_misc.gif)

_Note:_ the _Autoexec_ tab (between the _Identity_ and _Misc./CTCP_ tabs) will
let you enter startup IRC commands that you routinely type when you first
connect to IRC, such as _/join #my_favorite_channel_.

## Step 6. Connecting to IRC

You are now ready to connect to IRC. Close the **Connection preferences**
window, you are now back to the initial palette of windows shown below, except
the first line in your **Connections** window now has your proper nickname and
the new server if you specified one (in my case, _Joshmo_ and _irc.mo.net_) .
Make sure that line is highlighted and click on the little **Connect** button
(where the red arrow is)... _voila_, now you're on IRC! Note the lines spewing
by in the **Console** window as Ircle connects to the server and they exchange
some information. When the connection has been made, the status picture in the
**Connections** window changes to a unbroken line with the little color
arrows. Before you go further, select **Save preferences** under the **File**
menu so you won't have to redo these steps in the future.

![](ircle_mo.gif)

_What are those **Console** messages?_ The _identd_ is a way to confirm your
identity (the username and your machine's IP address). After the connection is
made, the server tells you how many people are connected to this network, how
many channels there are, etc., plus a _message of the day_ which contains
important policies and announcements. If you have any problems connecting,
copy down the exact error messages and email us using the web form at
[http://www.irchelp.org/irchelp/mail.cgi](/irchelp/mail.cgi) (be sure to
select the Mac helper).

## Step 7. Chatting

You can now issue all standard IRC commands -- for a quick introduction, check
out the **Command Reference** in the Help Menu (near the upper right corner of
your screen, the thing with the Apple Guide and Balloon Help) or see the very
short introductory guide at
[http://www.irchelp.org/irchelp/new2irc.html](/irchelp/new2irc.html) written
by the knowledgeable helpers of the #irchelp channel on EFnet. In the figure
above, I typed "/join #irchelp" (text shown in red for emphasis only) to join
that channel, and a new window appeared. The channel name and server are shown
on top _(#irchelp: irc.mo.net)_ while the channel topic is shown on the bottom
_(Topic: Ask your IRC question etc.)_. To chat, I just type into the bottom
**Inputline** window.

![](ircle_irchelp.gif)

_What are all these windows?_ The chatting is in the big window - purple for
my speech, black for everybody else's speech, red for private messages, blue
for miscellaneous crap like people coming or going, etc. The people in this
channel are listed in the **Userlist** window. The red nicks are operators or
"ops" who run the channel. The channel modes (green and purple switches in the
Userlist window) are _+tn_. Since I am an op on this channel, all the buttons
for _kick_, _ban_, etc. are activated. For more information on all this stuff,
see the [introductory guide](/irchelp/new2irc.html) mentioned above.

## Step 8. Advanced customization

The following is an example of a more advanced setup. You can customize Ircle
to have arbitrary colors, sounds, and fonts. Here I've changed the colors and
established simultaneous connections to 2 channels on different networks
(EFnet's #irchelp and Undernet's #macintosh).

![](ircle_2net.gif)

## Step 9. Quitting.

You can disconnect from any server by selecting its line in the
**Connections** window and clicking **Disconnect**. To quit Ircle, just select
**Quit** under the **File** menu. You can enter an optional farewell message
which will be sent to all channels you are on. If you've made further changes
to the preferences, go ahead and save them when prompted to do so. That's it!
Oh, don't forget to [register your Ircle](http://www.ircle.com/register.html)
to encourage the author to continue his excellent work.

If you have any other questions, visit the Ircle home page at
[http://www.ircle.com/](http://www.ircle.com/) or email us using the web form
below (be sure to select the Mac helper).

[ [back to Mac IRC page](index.html) | [Ircle home
page](http://www.ircle.com/) | [download
Ircle](http://www.ircle.com/download.html) ]

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

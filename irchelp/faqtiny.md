---
title: A Hitchhiker's Guide to ircII for GAS Users
status: historical
---

A Hitchhiker's Guide to ircII for GAS Users

# Written by: linc (Chienting Lin) and jap (Juan A Posada Garcia), Apr.10,'93

    
    
                                      CONTENTS
                                     ~~~~~~~~~~
    

1. What is IRC

2. Basic Commands

3. Mode Commands

4. Ban Commands

5. About nick registration

6. Where can I find more info

7. ircII local FAQ

  1. How to setup IRCNAME 
  2. How to produce nifty effects in ircII 
  3. Partial list of irc servers 
  4. Telnetable IRC clients 
    1. WHAT IS IRC 

* * *

The best way to describe ircII is as a computerized radio ham, where you can
join different "channels" to talk and share info with other people. As in
radio ham seach, an IRCer must have his/her own nickname. The best way to get
the feel for irc is through hands-on experience. So here are some tips to help
you on your way. Good luck!

To begin, issue the following to access irc and specify your server (the
default server in GAS ircII is irc.caltech.edu):

'ircII <nick> <server>'

**2. BASIC COMMANDS**

* * *
    
    
    /nick <nickname>      : Assign your nickname over IRC. ex: /nick test
    /join #<channel>      : Join a channel. If the channel does not exist,
                            you will open a new channel. ex: /join #talk.
    /who *                : List all users on the current channel.
    /msg <nick> <words>   : Talk to someone in private.
    /msg . <words>        : Send words to the last one you use /msg to talk.
    /msg , <words>        : Send words to the last one who msg you.
    /query <nick>         : All you type will just be seen by <nick>.
                            type "/query" to end query with <nick>.
    /leave <channel>      : Leave a channel.
    /exit                 : Leave IRC.
    /whois <nick>         : See details about <nick>,you also can use this command
                            to check if someone is on IRC now.
    /links                : List all servers with links to your server.
    /list                 : List all channels on your server.
    /names                : Same as /list,but with visible user names.
    /server <server name> : Connect to a server.
    /time                 : Show the time of your server
    /time <nick>          : Show the time of <nick>'s server.
    /me <action>          : Used to describe what you are doing to others.
    /invite <nick> <chan> : Invite <nick> to join <channel>. If you are
                            invited, you can use /join -invite to join it.
    /notify <nick>        : If you are looking for someone, use this command to
                            detect <nick>. If <nick> appear , you will get msg.
    /set novice off       : let you join multi-channels simultaneously.
    /set hold_mode on     : pause after one screen.
    

/set show_channel_names on : list all names on this channel when you join.

**3. MODE COMMANDS**

* * *
    
    
    /mode <channel> +o <nick>       To make someone a channel operator
    /mode <channel> -o <nick>       To take away the operator status from someone
    /mode <channel> +i              To make channel invite-only
    /mode <channel> +p              To make channel private
    /mode <channel> +s              To make channel secret
    /mode <channel> +t              Only the op's can change the topic
    /mode <channel> +n              Messages can't be sent to this channel
    /mode <channel> +m              Only op's can talk (moderated)
    /kick <channel> <nick>          To "kick" someone out of the channel
    /mode <channel> +spitn          Give channel ultimate protection.
    

**4. BAN COMMANDS**

* * *

The MODE command allows you to ban somebody from a channel. This is done by
specifying a string of the form nick!user@host. For example:

'/MODE #MyChannel +b netw1z'

bans anybody using the nickname netw1z.

'/MODE #MyChannel +b *!merklin@*'

bans anybody whose user name is merklin.

'/MODE #MyChannel +b jerk!tug@boat.edu' bans the user tug@boat.edu from the
channel whenever he is using the nickname "jerk".

To lift the ban, use '-b' instead. You can list the bans in effect on a
channel with '/MODE Chan +b' if you are a channel operator:

'/MODE #MyCHannel +b'

**5. ABOUT NICK REGISTRATION**

* * *

There is no longer a nick server.

**6. WHERE CAN I FIND MORE INFO?**

* * *

(a) alt.irc Frequently Asked Questions (FAQ)

    
    
           Anonymous FTP pit-manager.mit.edu and get:
           /pub/usenet/IRC_Frequently_Asked_Questions_(FAQ).Z
    

(b) Official IRC tutorial

    
    
           Tutorial of irc listed in alt.irc FAQ can be FTPed from cs.bu.edu
           (/irc/suport/tutorial.*).  Learn basics of ircII commands.
    

(c) IRCprimer 1.1

    
    
           Most complete ircII tutorial.  A must-have toward irc wizardry.
           Anonymous FTP cs.bu.edu and get /irc/support/IRCprimer1.1.txt
    

7. ircII LOCAL FAQ

* * *

a) How can I have my own IRCNAME instead of username in /etc/passwd?

Add the following lines to your .chsrc file so IRCII can access these shell
variables:

# IRC settings

setenv IRCNICK "YourNick"

setenv IRCNAME "Your IRCNAME"

setenv IRCSERVER "irc.caltech.edu penfold.ece.uiuc.edu csa.bu.edu"

b) How to produce nifty effects in ircII?

Bind Key Effect

* * *
    
    
       ctrl-g                produce 'beep' sound
       ctrl-v                add underline effect
       ctrl-_                add bold type effect
       ctrl-w ctrl-b         video reverse (provided you set
                            'bind ^w quote_character' in your .ircrc)  
    

* * *

c) Partial list of IRC servers to connect to:

For a list of servers, anon ftp h.ece.uiuc.edu:/irc/servers.xxxxxx or look for
a monthly posting in alt.irc. Always try to find the most network-wise server
to connect to. Here is a list of major servers that proved to be quite
reliable:

chuang.u.washington.edu 140.142.58.1

    
    
       midway.ecn.uoknor.edu      129.15.22.30
       penfold.ece.uiuc.edu       128.174.114.68
       patriot.mit.edu            18.92.0.10
       csa.bu.edu                 128.197.10.202
    

* * *

d) Telnetable IRC clients

In case you wanna access IRC when GAS goes down temporarily. For all sites,
login as 'irc'.

    
    
       hastur.cc.edu              140.104.9.69
       irc.nsysu.edu.tw           140.117.11.33
       snoopy.ncku.edu.tw         140.116.2.11 
       suncc.ccu.edu.tw           140.123.1.2
    

gopher.csie.nctu.edu.tw 140.113.17.162 (port: 4470)

* * *
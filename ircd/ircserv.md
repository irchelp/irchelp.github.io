---
title: ircserv
author: Jolo
dateupdated: February 2000
status: historical
layout: default
---
Ed. note: This document is fairly out of date, but still provided to explain
these early attempts at timestamping and other services. The details may have
changed, but the ideas are the same. -Jolo 2/2000

# ircserv

* * *
    
    The available patches for 2.8*mu servers are:
    
    Tp8 = TimeStampPre8 - A protocol which disallows netsplit ops and channel
                          desynchs.
    
    Bquiet - does not allow a person who is banned to speak over the channel
    
    Silence - Cuts off flooding at local server
    
    Anc = Anti-Nick collide - *Intentional* nick collides are impossible with
    			   this wonderful patch.
    
    W = Wallops - lets you send messages to other IRC ops
    
    ban = BanInformation - Lets you see who did a ban and when, as well
    
    sw = /stats w - lets you gather statistics on average client connects
    
    To = TopicInformation - Lets you see who set the topic for a channel and when
    
    S = Signon Time - Tells you when a local user signed onto IRC
    
    Cl = Client connect - Notifies opers on your server of client connects/
                          disconnects (with disconnect reason)
    
    TT = Trace Times - displays the time (in secs) since your server last heard
                       anything from a client/server, when you do /trace.
    
    KL = K-line comments - Allows you to modify the lame "no ghosts allowed" default 
    			comment to whatever you wish, or alternately, display a 
                            file to a rejected client.
    
    OF = Oper fail patch - displays a warning to current ops when someone fails
    			in entering the right oper password.
    
    MC = Mixed case patch - useful for those pesky clone bots and hacked logins;
    		disallows userids which have mixed case or control chars
    
    N = Note - allows you keep a "note" for other users, amongst other things
    
    -----------------------------------------------------------------------------
    Explanations for these patches follow.....
    
    Help on patches written by Mandar Mirashi (mmmirash@mailhost.ecn.uoknor.edu)
                               Mmmm on IRC.
    
    
    =============================================================================
                                    TIMESTAMP 
    =============================================================================
    Author: Carlo, carlo@sg.tn.tudelft.nl, Run on IRC.
    Info on TS protocol:
    
    				TSpre7
    
    ------
    Effects of the TS protocol:
    
    > No mode wars possible.
      When you take someones op there are three possibilities:
      - You were too late (You was already de-opped on your server).
      - You take it (On the *whole* net).
      - You start taking it (on your server, but it is 'bounced' (ie your mode
        change is cancelled); This occurs when you try to do mode change
        direct after a net re-connection in a situation were you hacked op by
        net-break riding.
    > No desynchronisation possible.
    > No unnecessary MODE msg send. You can't send 'double' mode's that don't
      make sense. Servers don't send unnecessary MODE's either.
    > Hacking op is from now on *only* possible by admins that hacked their
      servercode, and therefor easier to prosecute. Also you can 'hack' op still
      exactly like now (by riding net break) on an *opless* channel.
    > The protocol is fully compatible with older servers: It is invisible
      and it works with old servers like this: Every 'block' of direct connected
            2.8.x.TS servers will stay synchronized, Hacking op is impossible by means
            of riding a net break between two TS-servers on channels that were created
            within that block. In all other cases the same happens as without TS.
    
    Here follow technical details implemented in TSpre7:
    
    ------
    
    Reference: 2.8.14/15.TSpre7
    Full list of TS-MODE-Change protocol:
    
    -Mode changes (originating by clients) are refused only:
     1) from a client that is directly connected and has no chan ops on 
        the channel on its server.
     2) when not being a change of the internal state of a server (Well, refused
        is to strong, propagation of the mode is just unnecessary and thus not
        done).
     3) from someone flagged as de-opped-by-server. (flag is reset when this
        person is opped again by anyone) (The server detecting this mode change
        cancels the mode change, by bouncing it upstream, thus keeping the net
        synchronized).
    
    -An extra parameter is added behind MODE changes *done* by servers, sended
     *to* other servers. It is a Universal Time in ascii seconds. This extra
     parameter is NOT sended when it is 0 (can happen with old servers on the
     net), 0 means  rather then Jan 1st 1970 :).
     This parameter is the creationtime of the channel being: the universal time at
     which the channel was created by a *local* client; or the non-zero received
     creation time from an other server (as parameter with a mode change) that
     was earlier then its own; or equal 0 when the channel was created by
     a non-local client and no MODE with TS was received (yet).
    
    -Of the channel_flags is 1 bit more used: CHFL_DEOPPED, set when de-opped
     by a server (compare CHFL_CHANOP, set when channel operator). It's reset
     when opped. (And starts reset on joining (creation?) of a channel, this
     will be changed to 'set' on join, when all servers have TS; making detection
     of op hacking by admins a bit easier).
    
    -Timestamps (sended by TS-servers) are handled as follows:
     Received TS      Own TS      Bounced/Propagated
        equal          equal       propagated
        later          >0,earlier  if ops: bounced with own TS
                                   if no ops: propagated with own TS
                                   (own TS is sended upstream too, to make sure
                                    TS stays synchronized).
        earlier        later       TS copied, propagated
        none           any         propagated, own TS sended.
        >0             none        if ops: propagated, no TS sended, own TS stays 0.
                                   if no ops: TS copied, propagated.
    
    -A mode change +/-o nick (+/- v) from a person that is deopped by a server
     results in a -/+o nick back up stream (and is not propagated) if it was
     an attempt to change the internal state of the receiving server.
    
    -kick is handled as mode -o, internal state 'not on channel' being 'already
     de-opped'. Bounce includes JOIN and restoring o and v flags.
     (Effect: You don't even *see* the kick on one side, on the other side
      the person joins again and gets his flags back from the bouncing server).
    
    -A received TimeStamp that claims a creation time *earlier* then that
     this server dissapeared from the net results in a HACK: notice (with
     time difference in seconds). Bye OPER.. (This meaning, to hack op
     on an existing channel that was created 15 minutes before you disconnected
     your server, you will have generated a HACK notice: Clock set back at least
     900 seconds by .) (Not yet implemented, prob. in pre8).
    
    
    				TSpre8
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: *** IMPORTANT; RFC
    To: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    Date: Thu, 14 Apr 94 18:03:38 METDST
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    Hi, please read this carefully and respond if you think it will result
    in INCORRECT behaviour under any circumstances:
    
    Here follow technical details implemented in TSpre8:
    
    ------
    
    Reference: 2.8.17.TSpre8
    Full list of TS-MODE-Change protocol:
    
    -Mode changes (originating by clients) are refused only:
     1) from a client that is directly connected and has no chan ops on 
        the channel on its server.
     2) when not being a change of the internal state of a server (Well, refused
        is to strong, propagation of the mode is just unnecessary and thus not
        done).
     3) from someone flagged as de-opped-by-server. (flag is reset when this
        person is opped again by anyone) (The server detecting this mode change
        cancels the mode change, by bouncing it upstream, thus keeping the net
        synchronized).
     4) When a '0' as timestamp is received, originating from a server (see below).
        Then the whole mode is ignored, a HACK notice is sent to all ops and the
                    string is propagated as received.
    
    -An extra parameter is added behind MODE changes *done* by servers, sent
     *to* other servers *containing* a +o, -o, +v or -v.
     It is a Universal Time in ascii seconds.
     Whenever a HACK is detected, a HACK: notice is sent to all local opers,
     and the full MODE is propagated with a '0' as timestamp, generating
     a HACK notice on all other servers.
     Otherwise this parameter is the creationtime of the channel being: the
     universal time at which the channel was created by a *local* client;
     or the non-zero received creation time from an other server (as parameter
     with a mode change) that was earlier then its own; or equal 0 when the
     channel was created by a non-local client and no MODE with TS was received
     (yet).
    
    -Of the channel_flags is 1 bit more used: CHFL_DEOPPED, set when de-opped
     by a server (compare CHFL_CHANOP, set when channel operator). It's reset
     when opped. It starts *set* on joining (creation?) of a channel, making
     detection of op hacking by admins a bit easier.
    
    -Timestamps (sent by TS-servers) are handled as follows:
     Received TS      Own TS      Bounced/Propagated
        equal          equal       propagated
        later          >0,earlier  if ops: bounced with own TS
                                   if no ops: TS copied, propagated
        earlier        later       TS copied, propagated
        0 or none      any         HACK generated, 0 propagated, own TS is kept
        >0             none        TS copied, propagated.
    
    -A mode change +/-o nick (+/- v) from a person that is deopped by a server
     results in a -/+o nick back up stream (and is not propagated) if it was
     an attempt to change the internal state of the receiving server.
    
    -kick is handled as mode -o, internal state 'not on channel' being 'already
     de-opped'. Bounce includes JOIN and restoring o and v flags.
     (Effect: You don't even *see* the kick on one side, on the other side
      the person joins again and gets his flags back from the bouncing server).
    
    -A received TimeStamp that claims a creation time *earlier* then that
     this server dissapeared from the net results in a HACK: notice (with
     time difference in seconds). Bye OPER.. (This meaning, to hack op
     on an existing channel that was created 15 minutes before you disconnected
     your server, you will have generated a HACK notice: Clock set back at least
     900 seconds by .)
    
    
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: TSpre8 can work! :)
    To: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    Date: Wed, 20 Apr 94 11:44:39 METDST
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    Well... it took me a few days (a night and some dreams actually), but
    I think I found a solution for the problem I mentioned during the meeting :)
    
    Let me first repeat the problem:
    
    - I stated that TSpre8 would prevent op hacking by admins, but... later
      I realized that that was impossible the way wanted it :(
      My idea was at first: Simply generate a HACK notice when a server
      comes on the net with a creation time earlier then when it did split off
      (and earlier then my own creation time). This sounds nice, but in
      even this simple case it doesn't work:
    
    Server A and B, users a and b:
    
      A -- B 
      |    
     @a       TS=100
    
    Split at t=200
    
      A    B
      |    
     @a 
    
    b joins at t=300
    
      A(TS=100)  B(TS=300)
      |          |
     @a         @b
    
    Net joins:
    
      A -- B
      |    |
      a    b
    
    Both are de-opped: b because he sends a TS of 300 with is greater (later)
    then 100 (correctly: he used the netbreak). And a is deopped with a
    HACK notice by B, because he introduces 1) a TS earlier then the existing
    TS (100<300) and 2) the 100 is earlier then the time the split occured.
    
    The reason why this goes wrong is simply because B *forgets* the channel
    AND the TS of 100, after the split... If B would *keep* in memory that
    the channel existed on A and with what TS, it would be possible, but only
    at cost of a lot of extra memory usage...
    
    Now my new idea :) It allows hacking, but only in not so very interesting
    cases... And at least it makes it extremely difficult for a newbee, so we
    might at least catch 99% before they understand how it works :)
    
    (This explanation should not be on a public ftp site anymore after a while :)
    
    New rules:
    
    - Servers that are OFF the net for more then one day are forgotten.
    - New servers (or forgotten servers), are always bounced except on channels
      that have no ops (when they create a channel of their own thus :) unless
      the receiving server is younger then one day and the introduced TS is
      earlier then the start up time (minus 10 minutes :/) of the receiving server.
      'Birthdays' of those servers are also kept.
    - A server that splitted off while a channel already existed, and thus
      has a creation time earlier then the "received squit time" of that
      server, is not allowed to introduce an earlier timestamp then the
      creationtime of the channel (HACK), and also not an equal TS when
      younger then one day.
    - A server introducing a server with an earlier "time of received squit"
      inherrits that time as its own "time of received squit".
    
    This allows to hack op on a channel that didn't exist when you splitted
    (not interesting). You also can't keep a server off the net till you need
    it (a telnet connection), because those can't do anything for one day long,
    unless they send the TS *equal* to the existing TS (The only exception :(),
    having to connect between two and one days before the hack, break between
    zero and one day before the hack but before the channel existed, connect
    and hack with equal TS.
    
    What do you think? Just for fun? :)
    
    Apart from that it would be suspicious when someone connects/breaks every
    24 hours a "test" server, channels that exist longer then one day are
    unhackable.
    
    The "disadvantages" are: servers that break off the net for *longer* then
    one day, but keep a channel up with an op, on *both sides of the net, will
    be completely de-opped after reconnection.
    
    *** IMPORTANT:
    
    I am absolutely not sure ;) if there aren't any other disadvantages or
    unwanted effects :) Please, think this over and mail me if you find some
    objection...
    
    Run
    
    
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: 2.8.19.U3 RELEASED
    To: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    Date: Sun, 22 May 94 14:15:41 METDST
    Cc: carlo@sg.tn.tudelft.nl
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    Hi all :)
    
    Proud to present: 2.8.19.U3 :)
    
    I have spend *enormous* amounts of time in TESTING this version,
    and I really hope it is completely bug free, but the changes are
    very big, so maybe persons who only want to upgrade/compile ONCE
    should wait a little longer then the compile cracks we have here ;)
    
    For real testing we need the HUBs though! So please, don't hesitate,
    Delft (a HUB) is running it already for a long time, also linked to
    other 2.8.19.U3 test servers.
    
    Before I'll tell about whats new in U3, I want to especially thank
    President for the tremendous help in testing TSpre8 -- I would never
    have been able bring up the stength to go through the difficult
    periods without him being there to listen to my technical complaints ;)
    
    =======================================================================
    
    NEW in .U3
    ----------
    
    First all, TSpre8.
    
    It did not become what I hoped/expected to be possible :(
    Hacking will still be possible, but at least it will be a LOT
    more difficult when you don't know what you are doing, and I think
    we WILL catch (new) admins that think they can abuse their powers
    to be GOD on "their" channel.
    
    Especially, nobody will be able to hack *anything* with a normal nick.
    And because server modes are more obvious a hack, this alone is a
    step forward against admin hacking prevention imho.
    
    The .patch file is 
    -rw-------   1 carlo    users      65142 May 22 01:29 irc2.8.19-TSpre8.patch
    big.
    
    I'll now brows through it and mentions changes in the order they appear
    in the .patch file, arbitrary order thus ;)
    
    Zombies
    -------
    
    As mentioned before on 'wastelanders', I changed the internal way a KICK
    is handled, to be able to stop illegal -hacked- kicks from *outside* the
    channel. This has no effect on server-server protocol nor on server-client
    protocol. But because this way it is possible to keep (a little) memory
    for channels you're not on (being kicked from) I thought it would be no
    more then logical to stop people from joining the usual 10 ten channels
    at the same time, *including* the ones you are kicked from (because they
    occupy memory). This memory is released when you 1) Try to rejoin (so with
    all people having a auto-rejoin-on kick NOTHING changed at all), or 2)
    when you do a part - this is new and only intended to use when you do
    NOT have auto-rejoin, when you do not even WANT to rejoin, or try, assuming
    you might not be banned, when you have been kicked like this of a lot of
    channels and all together are "on" 10 channels so you NEED to leave one
    before you can join another... For this rare case, you must know on
    *which* channels you "are", therefor this is visible when you do a
    /names, or /who or /whois to yourself. It is never visible for others.
    Example:
    
    12:07 * Run (Daryl@sg.tn.tudelft.nl) has joined channel #wasteland
    *** Mode change "+o Run" on channel #wasteland by Wasted
    *** #wasteland : created Fri May 13 17:08:34 1994
     Hi Run !
    *** You have been kicked off channel #wasteland by Run (Test)
    *** Run is Daryl@sg.tn.tudelft.nl (/msg Run profile)
    *** on channels: !#wasteland 
    *** on irc via server Delft.NL.EU.undernet.org (Runaway Server
    +[130.161.188.188])
    *** Run is away: Writting E-mail
    *** Run is an IRC Operator
    *** Run has been idle for 642 seconds.
    
    As you can see, the channel is marked with a '!' to show you are NOT
    not that channel... Both, a part #wasteland as well as a join (being
    not able to actually join because of ban, invite-only, key or limit), will
    remove you from this channel. The part will be sent back to (only) you, and
    everything has turned out to be 100% compatible with ircii protocol.
    Finally, of course the channel is removed when everyone is kicked and/or
    left the channel (a channel with only zombies is removed immedeately).
    
    #define RPL_CREATIONTIME     329
    --------------------------------
    
    A new numeric is sent when you ask for a MODE of a channel, by doing
    /MODE #channel
    without parameters.
    The reply is the same as before, but followed by a new numeric 329:
    
    /MODE #wasteland
    Delft.NL.EU.undernet.org 324 Run #wasteland +t
    Delft.NL.EU.undernet.org 329 Run #wasteland 768845314
    
    To supress this, you'll have to add something like:
    ON ^329 *
    to your .ircrc file. If you want to see this new numeric, you would
    add
    On ^329 "*" echo *** $1 : created $stime($2)
    
    It turns out that ircii clients ask for this mode when you join a
    channel, therefor you will see the creationtime when you join a channel,
    I'll leave it as an exercise to suppress this, but still being able to
    see it when you specifically ask for it :)
    
    New ircd.conf line
    ------------------
    
    This is IMPORTANT :
    In order for Uworld to work you MUST add those lines to your ircd.conf file:
    
    U:Uworld.undernet.org::*
    U:Underworld.nl::*
    
    The later to allow the backup Underworld.nl to still function.
    If you forget this, or do it wrong, your server might refuse to accept
    certain mode changes from Uworld.undernet.org and start *bouncing*
    modes done by lusers that got op from it. The name of servers allowed
    to hack have to be agreed upon totally, by all admins. If one admin
    removes his U: line, the service will not work always correctly.
    
    When a server does a mode change that is detected to be a hack, you
    will see -as an oper, or +s luser- this notice:
    
    -> *uworld* opcom MODE #wasteland +o Mmmm
    !Uworld.undernet.org! Run is using Uworld to : MODE #wasteland +o Mmmm
    *** Notice -- HACK: Uworld.undernet.org MODE #wasteland +o Mmmm 
    *** Mode change "+o Mmmm" on channel #wasteland by Uworld.undernet.org
    
    Normally, this HACK notice would NOT take effect! You still *see* the
    HACK notice for the U: line server(s) but then they DO take effect.
    
    Every other message (some including the word HACK) do also take effect,
    and are only a warning that someone is MAYBE hacking...
    I didn't see it occur yet.
    
    Removed bugs
    ------------
    
    I did find some bugs in TSpre7, never thought that was possible :)
    I forgot what it exactly was, but under (very rare) circumstances it
    could be pretty serious :/
    
    One rather important thing is that now the TimeStamp is sent during a
    net re.join when there are no ops. Before it was possible to create
    a partly TimeStamp less net on an opless channel. TSpre8 garantees
    that the TS is synchronized on the whole net at any time.
    
    Other messages
    --------------
    
    Apart from the (true) HACK notice, you can get a:
    
    BOUNCE or HACK: notice, which does take effect and is most probably
    just a bounce of a mode done by an attacker: someone immedeately after
    a net re.join with his net.ride ops trying to de-op the others.
    I don't think this will happen often because it will be clear to all lusers
    that it is useless to try.
    
    NET.RIDE on opless #channel notice, you'll see this if someone does
    really abuses a net break to get ops on some opless channel. The mode
    does take effect however.
    
    FULL bounce of modes
    --------------------
    
    When before someone would ride a net break, and try something, ONLY
    his +/- o/v modes. Other modes like +mlk 1 \\|/\|/  would still take
    effect. With TSpre8 this changed... All modes (except bans) are bounced
    when someone rides a net break. Also the bouncing is more compact, while
    with TSpre7 every o and v mode took one line, now all modes are kept into
    one line.
    
    More allowed
    ------------
    
    Before you was (how lame) not allowed to mix things like k, o and v...
    Now you are allowed, why not? Also you can use up to six parameters,
    really gives you a power kick ;)
    
    *** Mode change "+vvvvvv flux epa Skip Run Mmmm gyn" on channel #wasteland by
    +Run
    
    User friendly mask fixing
    -------------------------
    
    The lame way Avalon fixes a mask (for a ban) is like this:
    
    /mode * +bb *.tudelft.nl Daryl@sg*.tn.tudelft.nl
    
    becomes:
    
    *** Mode change "+bb *.tudelft!*@* Daryl!*@sg*.tn.tudelft.nl" on channel
    +#wasteland by Run
    
    The same on a TSpre8 server gives:
    
    *** Mode change "+b *!*@*.tudelft.nl" on channel #wasteland by Run
    
    While just Daryl@sg*.tn.tudelft.nl results in:
    
    *** Mode change "+b *!Daryl@sg*.tn.tudelft.nl" on channel #wasteland by Run
    
    which what one would expect!
    
    
    ----------------------------------------------------------------
    
    Goodluck with compiling,
    
    Run
    
    PS If you encounter any problems, realize it is VERY unlikely that
       it is .U3, but if you really think so, then first try to compile
       plain 2.8.19. If you succeed, save the Makefile the include/config.h
       and the include/setup.h. Unpack .U3, replace those files and recompile.
       With this I assume you don't put your ircd.conf inside the source
       directories of course, that would still have the paths set wrong then.
    
       A smart move is to make patch file once for your Makefile/config.h :
       First ONLY edit the Makefile and config.h (or copy the them from a
       working source tree to a empty directory), and then make a diff with:
       diff -rc irc2.8.19.clean irc2.8.19.my.makefile > Makefile.config.h.patch
    
       That really speeds up upgrading with later versions.
       (irc2.8.19.my.makefile only needs to contain
        irc2.8.19.my.makefile/Makefile
        irc2.8.19.my.makefile/include/config.h )
       Of course, keep the include/setup.h seperately.
    
    ### KILL for Mmm. Mmmm (stop it lamer (unnecessary flooding of alexbot))
    
    
    =============================================================================
    				BQUIET
    =============================================================================
    Author: Carlo, carlo@sg.tn.tudelft.nl, Run on IRC.
    Helpful ideas by: Aaron, agifford@sci.dixie.edu, Karll on IRC
    
    
    In order to fight flooding, and as discussed on wastelanders, banning
    someone on a channel will now also stop him from doing anything visible
    on the channel. This allows to let someone see what you think of him
    without even kicking him, he will leave by himself.
    He will still be able to appologise by private msgs of course and then
    he can be de-banned. A ban is this way a short cut for +m+vvvv everyone
    excpet the flooder. Note that even NICK floods are stopped: When you are
    on a channel where you are banned, you are not allowed to change your nick.
    
    =============================================================================
    				SILENCE 
    =============================================================================
    Author: Carlo, carlo@sg.tn.tudelft.nl, Run on IRC.
    Helpful ideas by: Aaron, agifford@sci.dixie.edu, Karll on IRC
    
    My solution to flooders with clone bots etc :)
    Let the user that GETS flooded decide he doesn't want that and stop
    the flooder right at his own server (the server of the flooder).
    This is a new command, and the clients will need unfortunately a few
    lines in their .ircrc before it can work.
    Moreover, before this works, ALL servers must have .U3.
    
    The lines I use at the moment are:
    
    ALIAS SILENCE QUOTE SILENCE
    ALIAS SILE QUOTE SILENCE
    ON ^RAW_IRC "% SILENCE %" echo *** $*
    
    It turns out that some auto-rejoin on kick lines, like Davemans toolbox,
    disables the use of ON RAW_IRC, or at least makes it work incorrectly.
    You should disable this auto-rejoin line and you could add the one I use
    instead:
    
    ON ^RAW_IRC "% KICK % % *" {
        IF ([$3]==[$N]) {
            //QUOTE JOIN $2
            ECHO $MID(11 5 $STIME($TIME())) * You have been kicked off channel $2 by $LEFT($INDEX(! $0) $0) \($MID(1 256 $4-)\) } {
            ECHO $MID(11 5 $STIME($TIME())) * $3 has been kicked off channel $2 by $LEFT($INDEX(! $0) $0) \($MID(1 256 $4-)\) }
    }
    
    which are 6 lines, not 8.
    
    The way the silence patch works is as follows:
    
    When you add a silence mask (using the same user friendly mask fixing)
    like:
    
    /SILENCE Tsunami*@
    
    It will echo back to you how it is added:
    
    *** Run!Daryl@sg.tn.tudelft.nl SILENCE +*!Tsunami*@*
    
    Note that there is a '+' infront of the mask now.
    You can also type:
    
    /SILENCE +bot*
    
    *** Run!Daryl@sg.tn.tudelft.nl SILENCE +bot*!*@*
    
    If you want to silence one particular nick, you must add the '+', because
    when you do:
    
    /SILENCE nick
    
    and 'nick' exists, you will get the silence list of nick. Just using
    /SILENCE gives your own silence list:
    
    *** Run bot*!*@*
    *** Run *!Tsunami*@*
    *** End of Silence List
    
    However, check the silence list of someone ELSE make only really sense
    when you already did sent a message to this person. Because a silence
    mask only propagates to the server of the flooder when it is actually
    necessary. For instance: You can add up to 5 silence masks and delete them
    again and it will only be local to your own server. Only when someone
    would message you, matching a mask, the mask propagates to the server of
    the flooder. And stays there till you signoff, or till you delete it.
    If you delete a mask, it follows the same path as the +masks...
    
    As a result of this, +s lusers and opers will see the message:
    
    *** SILENCE : Unknown command (from Lausanne.CH.EU.UnderNet.org)
    
    When someone from *behind* a non .U3 server sends you a message
    (Lausanne is this case). So, you will STILL be flooded ;) UNTIL ALL
    servers are upgraded... (Or must do -s, but at least the net is flooded).
    
    
    To: wastelanders@rush.cc.edu
    From: agifford@sci.dixie.edu (Aaron Gifford)
    Subject: HELP with HELP for SILENCE
    Status: RO
    
    Hey, here's a VERY VERY VERY rough draft of a HELP entry for SILENCE,
    assuming it becomes a new command for ircII and not a replacement for
    IGNORE either via new code, or aliases like:
        ALIAS SILENCE { QUOTE SILENCE $* }
    
    Anyway, PLEASE PLEASE PLEASE alter, modify, correct, add, hack-up, etc this
    rough draft and send me your alterations.  I just typed this up VERY
    quickly because StGeorge is now running irc2.8.19.U3.1.  The bug I mention
    in the file will hopefully disappear very soon, so that text will have to
    do likewise and vanish.  :)
    
    Here it is, draft #1 HELP for SILENCE:
    
    Usage: SILENCE []
           SILENCE [+|-]
    
      SILENCE allows you to TOTALLY ignore all private messages (PRIVMSG's)
      and notices (NOTICE's) from any user whose nick!user@host matches
      the  parameter.  The characters * and ? can be used
      as wildcards in the pattern.
    
      If you wanted to ignore all users from "somewhere.com" you would use:
        SILENCE +*!*@somewhere.com
    
      To ignore some with the nickname "Jerk" you would use:
        SILENCE +Jerk
      NOTE: The server will complete the pattern, storing it as "Jerk!*@*"
    
      The only drawback of just SILENCE'ing someone by nickname only is
      that the user could quickly change nicknames to avoid your pattern.
    
      To remove a pattern, use a - before the pattern you want to remove.
      When the command is used without any parameters, the server will list
      all stored patterns you are currently ignoring with the SILENCE
      command.
    
      When used in the first form listed, you will see the SILENCE list for
      the specified user.  This list is not necessarily complete nor accurate
      because of how servers share SILENCE information internally.  You can
      check to see if someone is ignoring you with SILENCE by first sending
      that user a private message, then using the command to see the user's
      SILENCE list.
    
      Currently there is a bug in the servers (hopefully to be fixed soon)
      that will add the nickname you specify to your SILENCE list when you
      attempt to see that user's SILENCE list if that user is not currently
      online.
    
      Because SILENCE is a part of the IRC server protocol (on the Undernet)
      it works much more efficiently than IGNORE, but is limited to a very
      brief list of patterns.  Also, you don't have as may options as you
      do with IGNORE.  If a user is flooding you, SILENCE is many times
      more efficient than IGNORE because the offending user's PRIMSG's or
      NOTICE's (including CTCP) are stopped at the server and never even
      sent to your client.
    
    See Also:
      IGNORE
    
    
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: Re: HELP with HELP for SILENCE
    To: agifford@sci.dixie.edu (Aaron Gifford) (Aaron Gifford)
    Date: Wed, 25 May 94 12:29:37 METDST
    Cc: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    In-Reply-To: <9405250313.AA18446@sci.dixie.edu>; from "Aaron Gifford" at May 24, 94 9:20 pm
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    > Here it is, draft #1 HELP for SILENCE:
    > 
    > Usage: SILENCE []
    >        SILENCE [+|-]
    > 
    
    As it is now (I do not consider what you mentioned as a bug, I was aware
    of this effect and didn't choose to alter it), it really is:
    
    Usage: SILENCE [+|-]
    Or   : SILENCE 
    
    When you leave the '+|-' away A '+' is assumed.
    
    The second possibility allows you to check your own silence lists, or
    allows to check if you are silenced by someone after you did message
    him but didn't get a respond (did ping him for instance).
    Indeed, this could be interpreted as a pattern, when  doesn't
    exists.
    
    >   If you wanted to ignore all users from "somewhere.com" you would use:
    >     SILENCE +*!*@somewhere.com
    
    SILENCE somewhere.com
    
    would do.
    
    >   When used in the first form listed, you will see the SILENCE list for
    >   the specified user.  This list is not necessarily complete nor accurate
    >   because of how servers share SILENCE information internally.  You can
    >   check to see if someone is ignoring you with SILENCE by first sending
    >   that user a private message, then using the command to see the user's
    >   SILENCE list.
    
    Mention that a EVAL CTCP  PING $TIME() is better...
    It would not be necessary to do the silence if the ping returns...
    To determine between huge lag and silence, you have to do the silence
    check after that.
    If you add something like this in the manual, people will automatically
    wait a while after the 'message' (ping), so that the servers have time
    to send the silence mask back. Otherwise they might think they can do
    a quick msg+silence at the same time. Nah... Not too important, unless
    with huge lag + silence combination.
    
    > 
    >   Currently there is a bug in the servers (hopefully to be fixed soon)
    >   that will add the nickname you specify to your SILENCE list when you
    >   attempt to see that user's SILENCE list if that user is not currently
    >   online.
    
    I didn't consider this as too bad...
    But if people want it, I can change it so that you MUST add a '+' to
    add a mask that doesn't contain a '.', '!' or '@'.
    That would lead to 2.8.19.U3.2 and a very tiny patch for the people who
    already compiled .U3
    
    Run
    
    
    =============================================================================
    			U3 - required additions to .ircrc
    =============================================================================
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: Re: .ircrc codes for the new patches :)
    To: lamberdc@dad.cs.tuns.ca
    Date: Mon, 23 May 94 11:41:31 METDST
    Cc: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    In-Reply-To: <9405222118.AA02415@dad.cs.tuns.ca>; from "Donald "WHIZZARD" Lambert" at May 22, 94 6:18 pm
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    > hiya All
    >       I was wondering if some one could send me a copy of the script/
    >  for the new patches including the ban , topic and client connecting patches.
    > 
    >       And whatever is now out with the new .19 code :)
    > 
    >       thanks 
    > 
    >               -- Donnie
    > 
    >               aka WHIZZARD
    
    The ftp.undernet.org:/pub/undernet/servers/Patches/README file:
    
    These are lines you need to add to your .ircrc file in order
    to use all posibilities .U3 profides you:
    
    To see when a channel was created:
    
    On ^329 * echo *** $1 : created $stime($2)
    
    When your server has the .ban patch use this to see who did a ban and when:
    
    On ^367 * if ([$4] != []) {echo *** $1 \($3 - $stime($4)) $2} {echo *** $1-}
    
    ---------------------------
    When ALL servers upgraded to .U3, you can use this command:
    
    ALIAS SILENCE QUOTE SILENCE
    On ^RAW_IRC "% SILENCE %" echo *** $*
    
    Use this as:
    /SILENCE +mask
    
    To add 'mask' to your silence list (will completely stop all private
    messages from people matching 'mask' with their nick!user@host).
    You can VIEW your silence list by typing:
    /SILENCE
    
    If you message someone and he doesn't react (like with ping), then you
    can check if you match a silence mask he added by viewing his silence list
    with:
    /SILENCE nick
    
    A mask can be deleted by using the command:
    /SILENCE -mask
    
    When the some messages you from behind a NON-.U3 server you will not
    receive his message but the line:
    *** Unknown command (SILENCE) (From server.name.undernet.org)
    instead, so you will still be flooded.
    We hope all servers will be upgraded within a few months.
    
    ------
    And my ircd.motd from Delft* :
    
    *%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%*%
     N E W : - This server now runs the official released
               beta version 2.8.19.U3.1.ban
     For you as users this means that:
     -More security : .U3 contains the .TSpre8 patch with
      disallows even ADMINs of servers to hack op on your
      channel with a nick, most server modes are detected.
     -The possibility to see the *creationtime* of a channel
      (used with the TimeStamp (TS) protocol - unique on
       undernet (disables the possibility of 'net.riding'))
     -The possibility to stop EVERY kind of channel flooding
      by *banning* someone : Now a ban stops not only
      part/join floods, but also message floods and even
      nick floods!
     -The possibility to see who did when a certain ban.
     -The possibility to stop anyone flooding you with
      any kind of private messages at his *own* server!
      (This will only work when ALL servers have upgraded)
    To be able to use all of this, ftp to sg.tn.tudelft.nl
    login: ftp ; password : anything ; file: /pub/README
    Put those lines in your .ircrc initialisation file !
    Have fun, Run.
    
    ----
    
    Run
    
    =============================================================================
    			U3.1 -> U3.2	
    =============================================================================
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: *BUG* .U3.1 found !!
    To: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    Date: Wed, 25 May 94 16:45:39 METDST
    In-Reply-To: <457.9405250732@ccws-09.brunel.ac.uk>; from "James T Lowe" at May 25, 94 8:32 am
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    > :-> 
    > :-> Hiya..
    > :-> 
    > :->     Here's what I observed tonight:
    > :-> 
    > :-> *** Mmmm (mandar@roosevelt.ecn.uoknor.edu) has joined channel #friendly
    > :-> *** Users on #friendly: @Mmmm 
    > :-> *** Mode change "-o Mmmm" on channel #friendly by Uxbridge.*
    > 
    > Not surprising : 
    > 
    > #friendly  RedRum    H*  cs93jtl@ccws-09.brunel.ac.uk
    > #friendly  Emmy      H   lamphear@cheshire.oxy.edu
    > #friendly  ChemBot   H@  cmrobert@hellcat.ecn.uoknor.edu
    > 
    > 
    > 
    > >From Norman : 
    > 
    > *** ChemBot is cmrobert@hellcat.ecn.uoknor.edu (Charles Michael Roberts)
    > *** on channels: @#ChatZone 
    > *** on irc via server Norman.OK.US.undernet.org
    > *** ChemBot has been idle 10 minutes
    > 
    > 
    > and from Uxbridge : 
    > 
    > ** ChemBot is cmrobert@hellcat.ecn.uoknor.edu (Charles Michael Roberts)
    > *** on channels: @#chatZone @#friendly 
    > *** on irc via server Norman.OK.US.undernet.org
    > 
    > :-> But,
    > :-> 
    > :-> *** Mmmm has left channel #friendly
    > :-> *** Mmmm (mandar@roosevelt.ecn.uoknor.edu) has joined channel #test
    > :-> *** Users on #test: @Mmmm 
    > :-> 
    > :-> works fine..
    > :-> 
    > :-> Is this due to the U lines?  Uworld was in no way involved though :-(
    > :-> 
    > :-> I personally feel that uxbridge's retaining timestamps of old channels - 
    > :-> Run, can ya take a look asap. It can prove most distressing for our users :(
    > :-> 
    > :->                           Thanks!!
    > :-> 
    > :->                                                   Mmmm
    > 
    > 
    
    Weeehhhw, yeah a real bug :/
    
    RedRum and I looked for it for almost 4 hours before it was found...
    
    I will release .U3.2  and a patch for .U3.1-U3.2 asap...
    
    Description of bug:
    
    When someone gets kicked (and doesn't (try to) rejoin), it is flagged
    as a zombie. After a net-break, users are mutual re-joined on both
    sides of the net. It turned out that a zombie is also rejoined after
    a net rejoin.
    
    What happened with ChemBot:
    
    ChemBot was on #friendly via Norman (non TSpre8). It was banned and then
    kicked. It tried to rejoin, but Norman didn't allow that (ban).
    Delft never saw this try, and ChemBot stayed as a zombie on #friendly.
    Then Delft-UxBridge broke and reconnected... Delft did send a JOIN for
    ChemBot to UxBridge, ending up in a nick-desynced state.
    When Mmmm joined #friendly, he was the first on #friendly on all of the
    net except UxBridge... He was opped by Norman, but that is considered
    as a HACK by UxBridge and was bounced (ChemBot was still there *with*
    ops (those flags aren't reset when someone is marked zombie)).
    The second time Mmmm joined, he again got ops from Norman which now
    was accepted by UxBridge because this +o could be a BOUNCE of the de-op
    by UxBridge (Generating a BOUNCE or HACK: notice on UxBridge).
    
    Run
    
    
    
    From: Carlo Kid - Runaway <carlo@sg.tn.tudelft.nl>
    Subject: Release 2.8.19.U3.2
    To: wastelanders@rush.cc.edu (New Wastelanders MailingList)
    Date: Wed, 25 May 94 23:30:57 METDST
    Mailer: Elm [revision: 66.33]
    Status: RO
    
    Hi all,
    
    I released 2.8.19.U3.2
    
    Fixed:
    
            - Rejoining of zombies after net break :/  (ChemBot case)
            - Silence command now give: No such nick, when doing /silence nick
            - I fixed the way a kick is handle, because in a last minute
              thought I realized MURC would get trouble otherwise, see below.
    
    As usual you can get it from ftp.undernet.org:/pub/undernet/servers
    
    Patches/irc2.8.19.U3.1-2.patch     : If you already had .U3.1
    
    irc2.8.19.U3.2.tar.gz              : If start from scratch (DO SO!!!)
    
    For those who use the irc2.8.19.U3.1-2.patch ...
    
    ------------------------------------------
    *** EDIT include/patchlevel.h !!!!!!!! ***
    ------------------------------------------
    
    This patch will change your version to irc2.8.19.U3.2  so if you run
     .ban  EDIT it !!!
    
    =========================================================================
    
    The change in KICK handling is as follows:
    
    - A kick received from a local client, or for a local client or
      from a direction in which the kicked client is located, is
      simply handled as before: completely removed from channel, no zombie.
      This means also that there is no client-server protocol change anymore:
      /who, /whois and /names won't change.
    
    - A kick received for a local client originating from a remote client
      lets the server sent a PART upstream. Since this results for non TSpre8
      servers in a remote "You're not on that channel" message, this
      message is suppressed (would never occur anyway now we are completely
      synced).
    
    The reason why this was needed is mainly because MURC constantly kicks
    people who have auto-rejoin disabled from different channels. With U3.1
    they would get into problems after ten channels (needed to send extra
    PART's).
    
    Run
    
    --
    -------------------------------------------------------------------------------
    |  carlo@sg.tn.tudelft.nl           |  Run @ IRC                              |
    |                                   |  Admin of Delft.NL.EU.undernet.org      |
    | * Don't expect anything of live,  |  and      Ircserver.et.tudelft.nl       |
    | or you'll miss all the rest of it.|                                         |
    -------------------------------------------------------------------------------
    
    
    
    =============================================================================
    			U3->U4, ANTI NICK COLLIDE 
    =============================================================================
    Author: Carlo, carlo@sg.tn.tudelft.nl, Run on IRC.
    
    Hi all...
    
    After we dealt with channel msg-, join/part- and nick-floods (.bquiet),
    and with private message flooding (.silence), now in a sort of follow up
    to the anti net.break.ride (.TSpre7) and anti admin.hacks (TSpre8) we are
    about to deal with one of the last vulnerabilities of our net:
    nick-collision bots.
    Called .anc (anti nick collision).
                 -    -    -
    
    Socially spoken it does the following (I hope):
    
    - Only kills the RIGHT person, when a nick collision occurs.
    
    This would mean:
    
    A) If someone tries to harash by connecting to servers that just broke off
    and then take the nick of a person on the other side, both would be
    killed on reconnection. But with the .anc patch on both connecting servers,
    only the net.break rider will be killed.
    
    B) Secondly, when your server (or side) breaks off and you connect to some
    other server on the other side, it happens sometimes that due to lag you get
    killed by a nick collision after reconnection of the net.
    
    A and B differ strongly in the sense that in case A the *new* -the youngest-
    nick must be killed, while in case B the *old* (lagged) nick must be
    killed.
    Technically this means that we have to look at the user@host.name too.
    This gives rise to some incompatible changes, and therefor, this patch
    must be done in two steps: First we deal with the nick-collision bots and
    make the server compatible with both - the old and new protocol. And then
    once all server upgraded, we deal with the last step: the nick collision
    with yourself.
    
    In the future there will be a third possible condition in which we can have
    a nick collision: (long example follows, can be skipped)
    
    C) The net breaks, and reconnects else where, and somehow a race condition
    occurs between the 'SERVER' messages of the servers of one side.
    For example:
    
    Servers:        Part A                  Part B1                 PartB2
    Nicks           a(A),b(B)               a(A),b(B)               a(A),b(B)
    Part A breaks off Part B:
                    <-- :b QUIT             --> :a QUIT
                    <-- SQUIT serversB      --> SQUIT serversA
    Result:         a(A)                    b(B)                    b(B)
    A reconnects to Part B1, but immedeately breaks off again:
                            -->SERVERs A
                            -->NICK a
                            -->:a USER ...
    Break: 
                                                    -->SERVERs A
                                                    -->NICK a
                                                    -->:a USER ...
                                            --> :a QUIT
                                            --> SQUIT serversA
    A connects to part B2, note that 'part B1 --> part B2' is lagged and the
    "SERVERs A ... etc" didn't arrive yet on partB2.
    Servers:        Part B1                 Part B2                 Part A
    Nicks:          b(B)                    b(B)                    a(A)
                            -->SERVERs A
                            -->NICK a
                            -->:a USER ...
                    --> :a QUIT
                    --> SQUIT serversA
                                                    --> SERVERs B
                                                    --> NICK b
                                                    --> :b USER ...
                                                    <-- SERVERs A
                                                    <-- NICK a
                                                    <-- :a USER ...
    Result *before* the lagged messages arive on Part B2:
    Nicks:          b(B)                    b(B),a(A)               b(B),a(A)
                            -->SERVERs A
                            -->NICK a
                            -->:a USER ...
                            -->:a QUIT
                            -->SQUIT serversA
    And when the lagged messages arrive on Part B2, the
    'SERVERs A' get all ignored: "server exists", even more, Part B2 disconnects 
    Part B1... :/. Now we are going to deal with the "server exists" problem
    *once* (attaching a timestamp to SERVER I think), in which case 'SERVERs A'
    would only be ignored by Part B2. Then the 'NICK a' would cause a nick
    collision with 1) Same user@host.name, 2) same server A, and 3) same
    nick-TS ! This means: We need to ignore 'NICK nick' when is has the same 
    TimeStamp and the same user@host. But when the user@host differ, two people 
    signed on at exactly the same time with the same nick and we must kill 
    *both* to avoid a desync.
    ----
    
    How to handle a nick collision, general
    ---------------------------------------
    
    Up till now when a nick collision occurs, both nicks (when a nick change
    from 'old' to 'new' is involved) are KILLed in ALL directions.. wiped off the
    net thus.
    But even with wiping off the net in mind, it doesn't make sense to kill in
    old direction, it is sufficient to deal with "our side" of the net, because
    every nick collision occurs on two servers, both can deal with their side.
    As an example:
    
    Servers:        A               B
    Nicks:          a(A)            a(B)
    Reconnection:
                    <-- NICK a
                        NICK a -->
    
    As you see, if A receives the 'NICK a' from B, it only has to deal with
    its own side, because it is certain that B will receive the 'NICK a' from
    A and handle it too as a nick collision (and therefore this 'NICK a' *is*
    already a 'KILL' message).
    
    Thus, when we receive a 'NICK' that gives rise to the need of purging
    a nick on *our* side, we deal with it by doing:
    sendto_serv_butone(cptr,":%s KILL ...
    which sends the KILL to all server connections except the link 'cptr' that
    generated the nick collision.
    Also then we have to destroy the memory usage of the killed client on our
    own server, and disconnect him if it is ours, so we call exit_client().
    
    Summary so far
    --------------
    
    Ok, we discussed when to kill who. Resulting rules are:
    
    We receive a "NICK new" or ":old NICK new" from a server direction, and
    we already have a registered 'new'. Then we have a nick collison and deal
    with it as follows:
    1) If the user@host differ,
            and our 'new' is younger or equal, KILL our 'new'.
            and our 'new' is older, ignore the 'NICK new', but kill 'old' on
                    our side if it was a nick change.
    2) If user@host is the same:
            and our 'new' is older, KILL our 'new'.
            and our 'new' is younger, ignore the 'NICK new', but kill
                    'old' on our side if it was a nick change.
            and our 'new' is equal, KILL our 'new',
                    and kill 'old' on our side too if it was a nick change.
    
    Remarks:
            The last case, where have a ':old NICK new' collission with
    the same user@host and TimeStamp, can't be case C), but it
    is possible that *we* did send a 'NICK new', and the server at
    the other side kills 'old' off... So we have to do it too.
            With this protocol we *ignore* 'NICK new' message, but of course
    in most cases they will be followed by at least a ':new USER ...' and
    probably
    more like ':new JOIN #...'. This would cause 'Fake direction' errors and
    the current protocol KILLs such a nick in *ALL* direction (???). Now, we
    DON'T want to KILL the nick in the right direction do we? And killing the
    fake direction nick makes no sense: it will be killed automatically due to
    the fact we did send a 'NICK new' in that direction. Thus: we can/have to
    remove the Fake Direction kills.
            Of course, when we receive a 'NICK new hopcount :TimeStamp', we
    *can't* compare with the user@host, because it takes some time before we
    will receive the 'USER'... We also can't store the nick, because it must
    be unique. To solve this, we need to change the protocol so that 'NICK new'
    contains all information and the USER message will be redundant and removed
    in a later patch. This also reduces net.bursts.
            
    Attaching a TimeStamp (TS) to nicks
    -----------------------------------
    
    Whenever someone takes a new nick, which is available of course, either by
    changing nick or by signing on, the local server attaches a TimeStamp (TS)
    to the nick. Now there will be sent:
    
    NICK new hopcount TS user host.name server.name :Real name
    or
    :old NICK new :TS
    
    This is 100% compatible with the existing protocol.
    
    When a server receives such a nick from a neighbouring server it copies the
    TS, keeping track of the local change time. (When not all servers have
    upgraded, and no TS is received, the .anc server will fill in the time
    itself - being a slight advantage over keeping it 0. It also will assume 
    that the host.names are equal or not equal resulting a as many kills as 
    needed in the worst case).
    
    
    Examples
    --------
    
    Servers:    A                     B
    Nicks:      a(A),b(B)             b(B),a(A)
    Both change simultaneously to nick 'c', but 'a' slightly faster (at time=1,
    and b at time=2):
                c(A),b(B)             c(B),a(A)
                     -> :a NICK c :1
                     :b NICK c :2 <-
    Then A receives a ':b NICK c :2' where 2 > 1, and KILLs b on its own side.
    B however receives ':a NICK c :1' where 1 < 2, and KILLs c on its own side.
    Result:     c(A)                  c(A)
    
    Due to 'lag', more :c PRIVMSG .. from B to A can follow, resulting in a
    fake direction. 'A' will simply ignore them and not kill c (kills for
    fake direction are nonsense anyway).
    
    In the case that someone signs on, taking the same nick as a nick change
    we have almost the same:
    
    Servers:    A                     B
    Nicks:      a(A)                  a(A)
    'a' changes simultaneously to nick 'c', but slightly faster (at time=1),
    as a new 'c' signs on at B (time=2).
                c(A)                  a(A),c(B)
                    -> :a NICK c :1
                      NICK c 1 :2 <-
    Then A receives a 'NICK c 1 :2' where 2 > 1, and ignores it simply.
    B however receives ':a NICK c :1' where 1 < 2, and KILLs c on its own side.
    Result:     c(A)                  c(A)
    
    If the new 'c' was a little bit earlier, we get:
    
    Servers:    A                     B
    Nicks:      a(A)                  a(A)
    'a' changes simultaneously to nick 'c', and slightly slower (at time=2),
    as a new 'c' signs on at B (time=1).
                c(A)                  a(A),c(B)
                    -> :a NICK c :2
                      NICK c 1 :1 <-
    Then A receives a 'NICK c 1 :1' where 1 < 2, and KILLs c on its own side.
    B however receives ':a NICK c :2' where 2 > 1, and KILLs a on its own side.
    
    Result:     c(B)                  c(B)
    
    Last case, two people sign on (or during a net reconnection):
    
    Server:     A                     B
    Sign on:    c(A)                  c(B)
                    -> NICK c 1 :1
                       NICK c 1 :2 <-
    Then A receives 'NICK c 1 :2' where 2 > 1, and ignores it.
    and B receives a 'NICK c 1 :1' where 1 < 2, and KILLs c on its own side.
    Result:     c(A)                  c(A)
    
    Note: the above didn't take equal TS's into account, and I assumed
    user@hosts to be different: the nick collision bot cases.
    
    A last possibility when someone starts hacking... a 'NICK new' twice
    from the same direction, should not be accepted: we kill the earlier one
    always.
    
    Compatibility problems
    ----------------------
    
    In the future, we want to also take 'user@host' into account... Therefor,
    we need to start to ignore 'NICK new' and only act upon ':new USER ...'.
    We can only do that if also 'USER contains the hopcount and TimeStamp'...
    If we change the protocol immedeately to say:
    :nick USER user host.name server.name hopcount TimeStamp :Real name
    the 'hopcount' would be treated as realname, and we the rest would be
    lost :(
    
    We can also transfer the info to 'NICK', with:
    
    :server.name NICK nick hopcount user host.name TimeStamp :Real name
    
    and later forget the USER message. Although someone lamer uses
    the C source line " if (sptr == cptr) ..." in m_nick() to determine if
    it was a 'NICK new' or a ':old NICK new' :/ Geesh (unlogical). He should
    have used " if (IsServer(sptr)) ...". You would need three upgrade steps
    or we will have to do with:
    NICK nick hopcount user host.name server.name TimeStamp :Real name
    
    The nice thing about this is, that we can check how many parameters we
    receive and then immedeately use the user@host if it is there... That way
    the .acn will immedeately work once everyone upgraded once, and the second
    step would only get rid of the 'USER' line between servers.
    
    Run
    
    
    =============================================================================
                                    WALLOPS
    =============================================================================
    Usage: /WALLOPS 
    
    Sends a message to IRC ops on-line. Remember that users who are /umode +w
    can see wallops as well.
    
    
    =============================================================================
                                    STATS W
    =============================================================================
    Author: Michael Vanloon (michaelv@iastate.edu) - mlv on IRC  
    Help on /stats w :
    
    I've been working on something I think would be quite a useful
    addition to the ircd.  It keeps track of the average number of local
    clients, total clients, and total connections (including servers) over
    various periods of time, currently over the last minute, hour, day and
    week.  It is invoked by "/stats w server.name".  You may try it
    yourself by "/stats w *.iastate.edu".  A sample from
    ircserver.iastate.edu looks like this:
    
    *** Minute    Hour      Day       Week      Userload for:
    ***  44.91     39.4      33        33       iastate.edu clients
    *** 114.40    103.2      69        65       total clients
    *** 120.40    109.0      73        70       total connections
    *** * End of /STATS report
    
    I'm debating changing it to show average connections over the last
    minute, hour, day, prev. day, and prev. day, as I think the data
    doesn't change enough after that to really be useful to justify
    keeping it over an entire week.
    
    On smaller, less used servers, it should add a negligible amount to
    the resident memory consumed by the ircd.  On a large hub such as the
    *.bu.edu servers, penfold, or ircserver.iastate.edu, it might add as
    much as 300k to the amount of memory the ircd attempts to keep
    resident.  The amount is determined solely by the number of
    connects/disconnects the server processes over the span of time
    measured.
    
    The code is bulletproof and has undergone *extensive* debugging and
    testing before I announced it here.
    
    The reason I'm posting this is because I would like to know how many
    people think this would be a useful addition to the server.  In
    addition, I'd like feedback on whether you think this should be a
    standard part of the distributed server code.  I think it should, but
    Avalon wants me to post here first and see how others feel about it.
    I'd appreciate your input.
    
    I will be making a patched 2.7.2 server available with this included,
    for those who would like to have this and stability too.  I'll also be
    hooking it into 2.8.x soon, and giving it back to Av to include in the
    standard 2.8 distribution as it matures, if he sees fit to do so.
    
    Thanks for your time...
    
                                    --Michael (mlv)
    
    IRC log started Wed Aug 18 21:52
    *** Value of LOG set to ON
    *mlv* it's the usage of your server
    *mlv* average number of users on your server over the last minute, hour, day, yesterday, and the day before
    *mlv* local clients, total clients, and total connections (clients + servers)
    -ircserver.iastate.edu- Minute   Hour  Day  Yest.  YYest.  Userload for:
    -ircserver.iastate.edu-  23.00   23.0   16    17      11   iastate.edu clients
    -ircserver.iastate.edu-  52.00   52.8   37    35      23   total clients
    -ircserver.iastate.edu-  61.00   61.7   45    42      21   total connections
    -> *mlv* hmm...so iastate had 23 local clients in the last minute?
    *mlv* right... in the last minute the average number of local users on our server was 23
    *mlv* 23.45 actually
    -> *mlv* okie...gotcha... thanks :)   one other thing
    *mlv* there were an average of 23.1 local users on here over the last hour
    *mlv* shoot
    -> *mlv* is it possible to specify multiple domains?
    -> *mlv* for e.g.  uoknor.edu  and  okstate.edu    cos those will be local to midway
    *mlv* it could be coded in, but 1) my code doesn't support it out of the box, and 2) that would add more state info which would increase the memory usage a bit
    -> *mlv* hmm...
    *mlv* it's purely informational... i wouldn't worry about it, really that much
    -> *mlv* okay...also, the Makefile on the ftp site seems hosed.....there's junk at the end...I tried both the .Z and the .gz
    *mlv* i'm thinking about making it log by connection class... but i'll have to use a more efficient statistical algorithm (less precise) if i do that
    *mlv* that way you could put all the local domains into certain classes
    *mlv* oh yeah... it's harmless, just weird
    -> *mlv* that'll work :)
    -> *mlv* well...thanks for your help....will have a look at the stats w patch when you're finished with it :)
    IRC Log ended *** Wed Aug 18 22:22
    
    
    =============================================================================
                            BAN/TOPIC/SIGNON INFO
    =============================================================================
    Author: Paul Foley (pfoley@kauri.vuw.ac.nz)  SIO on IRC
    
    Help on Ban/Topic/Signon :
    
    Since these patches allow the server to maintain additional information, the
    server replies have been changes for the /mode #channel +b (#367), /whois
    (#317) and an additional reply #333 has been added for topic info. The time
    is returned as a long integer in UTC format in all cases. Since the existing
    clients will ignore this additional information, you will need to either
    patch the client, or in case you're using ircII, use the foll. /on statements
    to take benefit of these patches :
    
    on ^367 * if ([$4] != []) {echo *** $1 \($3 - $stime($4)) $2} {echo *** $1-}
    on ^333 * echo *** Topic for $1 set by $2 on $stime($3)
    on ^317 * if (index(012345679 $3) != -1) {echo *** $1 has been idle for $2 seconds.  Signon at $stime($3)} {echo *** $1 has been idle for $2 seconds.}
    
    
    Once you have done this, you can see info as follows:
    /mode #wasteland +b
    *** #wasteland (Mmmm - Thu Aug 19 04:44:24 1993) test!*@*
    
    /topic #wasteland
    *** Topic for #wasteland: We all love Axl Rose!
    *** Topic for #wasteland set by rbarnes on Thu Aug 19 04:26:56 1993
    
    /whois Mmmm
    *** Mmmm is mandar@essex.ecn.uoknor.edu (Mmmm,I get high with a little help
    +from my friends)
    *** on channels: @#wasteland
    *** on irc via server essex.ecn.uoknor.edu (MIDWEST HUB..HELPS YOU GET THERE
    +SOONER)
    *** Mmmm is an IRC Operator
    *** Mmmm has been idle for 454 seconds.  Signon at Wed Aug 18 23:47:19 1993
    
    
    =============================================================================
                            CLIENT NOTIFY
    =============================================================================
    Authors: Patrick Ashmore (pda@engr.engr.uark.edu) - Twilight1 on IRC
             Mandar Mirashi  (mmmirash@mailhost.ecn.uoknor.edu) - Mmmm on IRC
             Tony Vencill    (vencill@iastate.edu) - Tony/Tonto on IRC
    
    Help on Client Notify:
    
    This patch allows all opers on your server to see clients connecting to your
    server and disconnecting from it (with the reason why they disconnected). 
    This can help you identify troublesome clients, or redirect remote clients
    to closer servers, or troubleshoot the reason why a client disconnected.
    
    A sample output:
    
    *** Notice -- Client connecting : Karll (agifford@sci.dixie.edu).
    
    *** Notice -- Client exiting : Karll (agifford@sci.dixie.edu) [Bad link?].
    
    PS: if you wish to selectively decide when you wish to see these connection
    notices, use the foll. script
    
    on ^server_notice "% % NOTICE -- CLIENT*" if (hideit != 1) {echo *** $2-}
    alias show @ hideit = 0;echo *** You can now see clients connecting/exiting
    alias hide @ hideit = 1;echo *** You will no longer see clients connecting/exiting 
    
    If you then wish to not see client connects/exits when you are opered, simply
    type /hide. If you wish to see them again, type /show.
    
    =============================================================================
                            TRACE TIMES
    =============================================================================
    Author: Tony Vencill    (vencill@iastate.edu) - Tony/Tonto on IRC
    
    Help on Trace Time:
    
      This useful patch lets you identify the times since your server last
    heard from any connected servers or clients. This time is displayed in
    seconds, appended to each line of your /trace output. It can be very
    helpful in identifying which servers are going to drop off or which
    clients may ping timeout from your server.
    
    A sample output:
    
    /trace essex*
    *** Serv [30] ==> 10S 8C cancun.caltech.edu *!*@essex.ecn.uoknor.edu 73
    *** Serv [30] ==> 9S 6C imageek.york.cuny.edu *!*@essex.ecn.uoknor.edu 27
    *** Serv [0] ==> 1S 0C inga1.acc.stolaf.edu[130.71.192.16]
    +*!*@essex.ecn.uoknor.edu 58
    *** Serv [0] ==> 1S 0C shadow.acc.iit.edu *!*@essex.ecn.uoknor.edu 97
    *** Serv [0] ==> 1S 2C curie.ualr.edu Mmmm!mmmirash@essex.ecn.uoknor.edu 98
    *** Serv [0] ==> 1S 1C piaget.phys.ksu.edu *!*@essex.ecn.uoknor.edu 117
    *** Oper [0] ==> Mmmm[essex.ecn.uoknor.edu] 0
    *** Serv [50] ==> 1S 0C pv1629.vincent.iastate.edu *!*@essex.ecn.uoknor.edu 7
    *** Class 0 Entries linked: 6
    *** Class 50 Entries linked: 1
    *** Class 30 Entries linked: 2
    
    
    =============================================================================
    			K- line comments
    =============================================================================
    Author: Mandar Mirashi (mmmirash@mailhost.ecn.uoknor.edu) - Mmmm on IRC
    
    This extremely useful patch allows you to specify either a comment or an
    interval in the 2nd field of the K line (instead of the previous format
    of just a restricted interval). The "comment" can even be configured to
    be a *file* name which can then be displayed to the client rejected via
    the K line. All existing K lines will work as they are. This patch is
    an *enhancement* to the K-lines.
    
    e.g. (of a comment field)
    
    K:*.sdsu.edu:Flooding.is.not.cool.lamer:masc0482
    
    As far as possible, do not use a white space in the comment field, because
    this breaks ircII's /stats k handling. You can use the period (.) or the
    underscore instead (_).
    
    e.g (of a file to be output to a rejected client 
         -   #define COMMENT_IS_FILE  in config.h)
    
    K:*.netcom.com:/ecn/staff0/irc/servers/vinson/sorry.txt:*
    
    
    =============================================================================
    				OPER FAIL
    =============================================================================
    Authors: Michael Vanloon (michaelv@iastate.edu) - mlv on IRC  
             Jon C Green (jcgreen@iastate.edu) - Jon2 on IRC
    	 Bryan Collins (b@ctpm.org) - bwy on IRC
    
    This patch notifies you if someone tries to gain oper on your server and
    fails. The notice goes out only to the operators on the server.
    
    *** Notice -- Failed OPER attempt by M (mmmirash@lincoln.ecn.uoknor.edu)
    [crackit]
    
    
    =============================================================================
    				MIXED CASE
    =============================================================================
    Authors: Michael Vanloon (michaelv@iastate.edu) - mlv on IRC
             Jon C Green (jcgreen@iastate.edu) - Jon2 on IRC
    
    "Here's a patch mlv and I wrote that prevents clients with mixed-case usernames
    from connecting.  I don't know of many sites that allow mixed-case, so it
    is effective for stopping many clonebot attacks and also stops many
    would-be username hackers."  - Jon2
    
    This has been slightly modified by Mmmm to give an option of ignoring the
    case of the first character if desired (useful for those PC users who
    intuitevely enter their first name with the first letter capitalised).
    
    e.g.
    *** Notice -- Invalid username: buankBOT[saucer.cc.umr.edu]
    
                                   
    =============================================================================
    				NOTE
    =============================================================================
    
    Usage:
      NOTE USER [&passwd;] [+-flags] [+-maxtime] <nick!username@host> 
    -   or  SEND|SPY|FIND|WAITFOR|NEWS 
    *   or  SEND|SPY|FIND|WAITFOR|WALL|WALLOPS|DENY|NEWS|KEY 
      NOTE LS|COUNT|RM|LOG [&pwd;][+-flags][#ID] <nick!user@host> [date]
      NOTE FLAG [&passwd;] [+-flags] [#ID] <nick!username@host> <+-flags>
    *  NOTE SENT [NAME|COUNT|USERS] <f.nick!f.name@host>  [RM]
    -  NOTE STATS [MSM|MSW|MUM|MUW|MST|MSF|USED]
    -  NOTE SENT [NAME|COUNT]
    *  NOTE STATS [MSM|MSW|MUM|MUW|MST|MSF|USED|RESET] [value]
    *  NOTE SAVE
    
      The Note system have two main functions:
      1. Let you send one line messages to irc users which 
         they will get when they next sign on to irc.
         Example: NOTE SEND  Hi, this is a note to you.
      2. Let you spy on people, to see when they sign on or off,
         change nick name or join channels.
         Example: NOTE SPY +100   (spy on nick for 100 days)
    
      You may fill in none or any of the arguments listed above, including
      * or ? at any place, as nick@*.edu, !username, ni?k!username etc...
      Other usefull features may be NOTE WAIT , making nick and
      you get a message when you both are on at the same time.
     
      Note was developed 1990 by jarle@stud.cs.uit.no (Wizible on IRC).
    
    
    *Usage: NOTE [] ANTIWALL
    *  Switch off b flag for wall's which you have received on specified
    *  server. The person who queued the wall would be notified about
    *  the antiwall, and who requested this.
    
    
    Usage: NOTE COUNT [&] [+|-flags] [#] <nick!username@host>
      Displays the number of messages sent from your nick and username. See
      HELP LS for more info. See HELP FLAG for more info about flag setting.
    
    
    *Usage: NOTE DENY [&] [+|-] [+|-]
    *		<nick!user@host> 
    *  DENY is an alias for USER +RZ (default max 1 day)
    *  This command makes it impossible for any matching recipient to
    *  queue any Note requests until timeout.
    
    
    Usage: NOTE FIND [&] [+|-] [+|-]
    		<nick!username@host> 
      FIND is an alias for USER +FLR (default max 1 day)
      This command makes the server search for any matching recipient, and
      send a note message back if this is found. If  field is used, this 
      should specify the realname of the person to be searched for. Examples:
        FIND -4 foo*!username@host
        FIND @host Internet*
        FIND nicky Annie*	     
        FIND +7 * Annie*
    
    
    Usage: NOTE FLAG [&] [+|-] [#]
    		<nick!username@host> <+|-flags>
      You can add or delete as many flags as you wish with +/-.
      + switch the flag on, and - switch it off. Example: -S+RL
      Following flags with its default set specified first are available:
        -S > News flag for subscribing.
        -M > Request is removed after you sign off.
        -Q > Ignore request if recipient's first nick is equal to username.
        -I > Ignore request if recipient is not on same server as request.
        -W > Ignore request if recipient is not an operator.
        -Y > Ignore request if sender is not on IRC.
        -N > Let server send a note to you if message is delivered.
        -D > Same as N, except you only get a message (no queued note to you).
        -R > Repeat processing the request until timeout.
        -F > Let server send note info for matching recipient(s). Any message
             part specify what to match with the realname of the recipient. 
        -L > Same as F, except you only get a message (no queued note to you).
        -C > Make sender's nicks be valid in all cases username@host is valid.
        -V > Make sender's "nick*" be valid in all cases username@host is valid.
        -X > Let server display if recipient signs on/off IRC or change
             nickname. Any message specified is returned to sender.
        -A > Show what server matching user is on using X flag.
        -J > Show what channel matching user is on using X flag.
        -U > Do not display nick-change using X flag.
        -E > Ignore request if nick, name and host matches the message text
             starting with any number of this format: 'nick!name@host nick!... '
    *    -B > Send a message to every account who match the nick!user@host 
    *         This creates a received list with flag H set. (see LS +h)
    *    -T > Send a message not all nicks on same accounts too using B flag.
    *    -K > Give keys to unlock privileged flags by setting that flags on.
    *         The recipient does also get privileges to queue unlimited 
    *         numer of requests, list privileged flags and see all stats.
    *    -Z > Make it impossible for recipient to queue anything at all.
      Other flags which are only displayed but can't be set by user:
        -O > Request is queued by an operator.
        -G > Notice message is generated by server.
    -    -B > Broadcasting message.
    *    -H > Flag list for who's received Broadcast message (B flag).
    -  Notice: Message is not sent to recipient using F, L, R or X flag.
    -  Using this flags, no message needs to be specified.
    *  Notice: Message is not sent to recip. using F, L, R, X, K, Z or H
    *  flag (except if B flag is set for R). For this flags, no msg. needed.
    
      Examples:
        FLAG * +cj     : Switch on c and j flag for all requests.
        FLAG +x * +c   : Switch on c flag for all req. which have x flag.
        FLAG nick -c+j : Switch off c flag and which on j flag for nick
    
    
    *Usage: NOTE KEY [&] [+|-] [+|-] <nick!user@host>
    *  KEY is an alias for USER +KR (default max 1 day)
    *  This command is for allowing no-opers to use oper-options by specifying
    *  the flag to unlock. Be careful with this option!
    *  Example: KEY +365 +s * would make it possible for everybody to use s flag.
    
    
    Usage: NOTE LOG [&] [+|-] [#] <nick!username@host>
      Displays how long time since matching person was on IRC. This works 
      only after use of NOTE SPY. The log is protected to be seen for other
      users than the person who queued the SPY request. To get short
      output, do not specify any arguments. Example:
        LOG      : Print short log of all
        LOG *    : Print long log including real names of all
        LOG nick : Print long log for user nick.
    
    
    Usage: NOTE LS [&] [+|-] [#]
    		<nick!username@host> []
      Displays requests you have queued. No arguments would show you
      all requests without the message field.
      Use flags for matching all messages which have the specified flags set
      on or off. See HELP NOTE FLAG for more info about flag settings. Time 
      can be specified on the form day.month.year or only day, or day/month, 
      and separated with one of the three '.,/' characters. You can also 
      specify -n for n days ago. Examples: 1.jan-90, 1/1.90, 3, 3/5, 3.may.
      If only '-' and no number is specified max time is set to all days.
      The time specified is always the local time on your system. Example:
        LS !user    would show you all requests to username@*
        LS +x       would show all your SPY requests.
        LS #300     would show you only request #300.
    
    
    Usage: NOTE NEWS [&] [+|-] [+|-]
    		<group!username@host>
      NEWS with no message is an alias for USER +RS (default max 60 days)
      This command is for subscribing on a specified newsgroup from any
      user(s) or host(s). Wildcards may be used anywhere. Example:
        NEWS irc.note       : Subscribe on irc.note
    *    NEWS irc.note@*.no  : Send to group irc.note, but only for
    *                          users at host *.no
    *    NEWS irc.note       : Send to all for group irc.note
    *    NEWS Users@*.edu Hi : Send Hi to all users using note in your
    *                          server located at host *.edu.
       (Advanced users may use User +rs <...>  where filter is a 
       string which must matches with field in received news message)
    -  Only opers can send news as default.
    *  To send news add message and use same format as subscribing, except 
    *  that username field must matches with subscribed group as alt.irc!*.irc - 
    *  everybody subscribing on a*.irc or *.irc or alt.irc... would get the news.
    *  A speciall case is the group Users which everybody using note in the server
    *  are member of.
    
    
    Usage: NOTE RM [&] [+|-] [#] <nick!username@host>
      Deletes any messages sent from your nick and username which matches
      with nick and username@host. Use flags for matching all messages which
      have the specified flags set on or off. See HELP FLAG for more info
      about flag settings, and HELP LS for info about time.
    
    
    *Usage: NOTE SAVE
    *  SAVE saves all messages with the save flag set. Notice that the
    *  messages are automatically saved (see HELP STATS). Each time server is
    *  restarted, the save file is read and messages are restored. If no users
    *  are connected to this server when saving, the ID number for each
    *  message is renumbered.
    
    
    Usage: NOTE SEND [&] [+|-] [+|-]
    		<nick!username@host> 
      SEND is an alias for USER +D (default max 60 days)
      This command is for sending a message to recipient, and let the server
      send a note + a notice to sender if this is on IRC - if message is sent.
        SEND foobar Hello, this is a test.
        SEND +7 !username@*.edu Hello again!
    
    
    -Usage: NOTE SENT [NAME|COUNT]
    *Usage: NOTE SENT [NAME|COUNT|USERS] <f.nick!f.name@host>  [RM]
      Displays host and time for messages which are queued without specifying
      any password. If no option is specified SENT displays host/time for
      messages sent from your nick and username.
      NAME displays host/time for messages sent from your username
      COUNT displays number of messages sent from your username
    *  USERS Displays the number of messages in [], and names for all users
    *  who have queued any message which matches with spec. nick/name/host.
    *  RM means that the server removes the messages from the specified user.
    
    
    *Usage: NOTE SERVICE  
    *  Useful in robots. Note will take the requests as if from 
    
    
    Usage: NOTE SPY [&] [+|-] [+|-]
    		<nick!username@host> [msg]
      SPY is an alias for USER +RX (default 1 max day)
      SPY makes the server tell you if any matching recipient sign(s)
      on/off IRC or change nick name. No message needs to be specified.
      However, if a message is specified this is returned to sender including
      with the message about recipient. Message could for example be one or
      more Ctrl-G characters to activate the bell on senders machine.
      As an alternative for using C flag,  field could start with
      any number of nicks on this format: %nick1 %nick2... %nickn, with
      no space between % and the nick name you use. Spy messages would be
      valid for any of the nicks specified.
      SPY with no argument would tell you what users you have spy on who are 
      currently on IRC. The system logs last time the last matching person was 
      on IRC for each SPY request is queued in the server. See NOTE LOG for this.
      You may use flag +A to see what server matching user is on, 
      and/or +J flag to see what channel. (Read HELP NOTE USER for more). Example:
        SPY foobar!username@host 
        SPY +10 foobar
        SPY +aj &secret; * 
        SPY +365 +e !user nick!*@* 
        SPY % +7 foo!user
        SPY +5 nicky %mynick %meenick
    
    
    -Usage: NOTE STATS [MSM|MSW|MUM|MUW|MST|MSF|USED]
    *Usage: NOTE STATS [MSM|MSW|MUM|MUW|MST|MSF|USED|RESET] [value]
      STATS with no option displays the values of the following variables:
        MSM: Max number of server messages.
        MSW: Max number of server messages with username-wildcards.
        MUM: Max number of user messages.
        MUW: Max number of user messages with username-wildcards.
        MST: Max server time.
        MSF: Note save frequency (checks for save only when an user register)
      Notice that 'dynamic' mark after MSM means that if there are more
      messages in the server than MSM, the current number of messages are
      displayed instead of MSM.
      Only one of this variables are displayed if specified.
    *  You can change any of the stats by specifying new value after it.
    *  RESET sets the stats to the same values which is set when starting the
    *  server daemon if no note file exist. Notice that this stats are saved
    *  in same file as the other messages.
    
    
    Usage: NOTE USER [&] [+|-] [+|-]
    		<nick!username@host> 
      With USER you can queue a message in the server, and when the recipient
      signs on/off IRC, change nick or join any channel, note checks for
      valid messages. This works even if the sender is not on IRC. See HELP
      FLAGS for more info. 
      Password can be up to ten characters long. You may specify password 
      using the &, % or $ character. & is equal to to $, except working much
      better cause client use $ for other things...
      The % character works like &, except it makes the queuing silent. It
      makess also sense to use this without any following password.
      If any request queued is equal to any previous except time and maxtime,
      only maxtime is changed as specified. You then get "Joined" instead of
      "Queued". 
      HELP FLAGS for info about flag settings. Username can be specified
      without @host. Do not use wildcards in username if you know what it
      is, even if it's possible. Max time before the server automatically
      remove the message from the queue, is specified with hours with a
      '-' character first, or days if a '+' character is specified, as
      -5 hours, or +10 days. Default maxtime is 7 days.
      Note: The received message is *directly* displayed on the screen,
      without the need for a read or remove request.
        NOTE USER &secret; +WN +10 Wizible!jarlek@ifi.uio.no Howdy!
      is an example of a message sent only to the specified recipient if
      this person is an operator, and after receiving the message, the server
      sends a note message back to sender to inform about the delivery.
        NOTE USER +XR -5 Anybody 
      is an example which makes the server to tell when Anybody signs
      on/off irc, change nick etc. This process repeats for 5 hours.
        NOTE USER +FL @*.edu *account*
      is an example which makes the server send a message back if any real-
      name of any user matches *account*. Message is sent back as note from
      server, or directly as a notice if sender is on IRC at this time.
    
    
    Usage: NOTE WAITFOR [&] [+|-] [+|-]
    		<nick!username@host> []
      WAITFOR is an alias for USER +YD (default max 1 day)
      Default message is [Waiting]
      This command is for telling the recipient if this appears on IRC that
      you are waiting for him/her and notice that this got that message. Example:
        WAITFOR foobar
        WAITFOR -2 foobar!username@*
        WAITFOR foobar Waiting for you until pm3:00..
    
    
    *Usage: NOTE WALL [&] [+|-] [+|-]
    *			<nick!user@host> 
    *  WALL is an alias for USER +BR (default max 1 day)
    *  This command is for sending a message once to every matching user
    *  on IRC. Be careful using this command. WALL creates a list of 
    *  persons received the message (and should not have it once more time)
    *  with H flag set. This list can be displayed using ls +h from the
    *  nick and username@host which the WALL request is queued from.
    *  Removing the headers (H) before WALL request is removed would cause
    *  the message to be sent once more to what users specified in list.
    *  WALL +7 @*.edu Do not do this! - Makes it clear for all users using 
    *  IRC on host @*.edu the next 7 days how stupid it is to send such WALL's ;) 
    
    
    *Usage: NOTE WALLOPS [&] [+|-] [+|-]
    *		<nick!user@host> 
    *  WALLOPS is an alias for USER +BRW (default max 1 day)
    *  This command is same as WALL, except only opers could receive it.
    =============================================================================
    

* * *


##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many others.


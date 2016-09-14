# ircd

* * *
    
    
    
    Path: news1.digex.net!news2.digex.net!howland.reston.ans.net!pipex!news.oleane.net!oleane!jussieu.fr!nef.ens.fr!bireme!espel
    
    From: espel@bireme.ens.fr (Roger Espel Llima)
    
    Newsgroups: alt.irc
    
    Subject: Re: How to setup local ircserver
    
    Date: 31 Jan 1995 00:03:56 GMT
    
    Organization: Ecole Normale Superieure, PARIS, France
    
    Lines: 39
    
    Message-ID: <3gjupc$7rr@nef.ens.fr>
    
    References: <D38Hu4.3CK@cs.vu.nl> <slworkD38Mpv.22u@netcom.com>
    
    NNTP-Posting-Host: bireme.ens.fr
    
    
    
    In article <slworkD38Mpv.22u@netcom.com>, Steve Work <slwork@netcom.com> wrote:
    
    >Marcel Knol (mlknol@cs.vu.nl) wrote:
    
    >: Hello,
    
    >
    
    >: If I want to set up a local irc server so that client within the
    
    >: network and only within the network can talk to eachother, how do I
    
    >: set up the server. I compiled ircserv but that seems to be only
    
    >: suitable for connections to other ircservers. 
    
    >
    
    >: So I want a program which can stand alone and only connect to local
    
    >: irc client. Does anyone know how to do this. 
    
    >
    
    >: Please respond by email.
    
    >
    
    >Please post, too, as I am interested in doing the same thing.  One thing 
    
    >I was wondering is whether you need root access on the machine on which the 
    
    >server is running.
    
    
    
    You don't need root access at all. Grab a copy of the irc server on
    
    cs-ftp.bu.edu : /irc/servers/irc2.8.21.tar.gz, compile it, create
    
    an ircd.conf file according to the explanations in the doc/INSTALL
    
    file, and execute the ircd program.
    
    
    
    If you only want people from your domain connecting, say, *.vu.nl,
    
    you'll want lines such as I:*.vu.nl::*.vu.nl::1 in your ircd.conf
    
    file.
    
    
    
    Good luck :)
    
    
    
            orabidoo @ IRC
    
    
    
    -- 
    
    +----------------------------+---------------------------------------------+
    
    |   Roger ESPEL LLIMA        |                                             |
    
    |   45, rue d'Ulm            |     email: roger.espel.llima@ens.fr         |
    
    |   75005 PARIS FRANCE       |                                             |
    
    +----------------------------+---------------------------------------------+
    
    |  I've got to get dressed to go out of my mind - King Crimson, VROOOM     |
    
    +--------------------------------------------------------------------------+
    
    

* * *



##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.


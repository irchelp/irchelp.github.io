#  IRC (EFnet) by telnet

Frequently asked questions

By Ron Ritzman (socrerx@gsusgi2.gsu.edu)

Last modified 5/2/95

added better instructions for compiling a client

added list of ftp sites from the alt.irc faq

* * *

## 1: What is the current list of available telnet clients?

  * Begin list --- 
  * End list --- 

* * *

## 2: Why is the list in "1" empty?

Because most of the time there are no available telnet clients. The reason for
this is that there is so much demand for such services that as soon as one of
them makes it on to a list, it gets so overloaded that it has to shut down.
Therefore this faq will *never* contain a list of EFnet telnet clients.

* * *

## 3: Does that mean that it is practically impossible to access irc by
telnet?

Yes and no. A few freenets and some bbs's and public access unix sites provide
irc as one of their services. This is one way to access irc by telnet.

* * *

## 4: Which freenets, bbs's etc. offer irc?

  * Begin list --- 
  * End list --- 

* * *

## 5: OK smart ass, why is the list in "4" empty? Why are you screwing with me
like this?

The list in "4" is empty for a similar reason that the list in "1" is empty.
Many people who cannot afford internet access depend on these services for
their only internet access. If I was to post a list of them as "irc
providers", then they may also have to shut down because of the insane demand
for irc by telnet. You will have to look around and find one on your own.

* * *

## 6: So just what are my options?

Ask your system administrator to install an irc client.

Install your own irc client. If you have a Unix shell account and about 3 megs
of disk space, then you can ftp to cs-ftp.bu.edu and retrieve
"/irc/clients/CURRENT"

Follow these instructions step by step.

  1. From the shell prompt type "zcat CURRENT | tar -xvfm -". (if you are lacking disk space then use your tmp directory. It is usually "/tmp" "/var/tmp" or "/usr/tmp") 
  2. chdir do the directory created. 
  3. Type "./configure" (this will take a few minutes) 
  4. look at the files "Makefile and "include/config.h" to see if there is anything you wish to change. Edit "Makefile" and change the lines that define where irc looks for its helpfiles, scripts, and translation tables (You can still build the client without editing these files) 
  5. Type "make all". If make finishes without saying something like "error code 1", "exit 1" and/or "stop" then you have your very own irc client. The file is called "irc" or "ircII" and it is in the /source directory. Copy it to your home or private bin directory. You will also find programs called "ircserv" "ircflush" and "wserve". These complement the client but are not absolutely nessessary. 
  6. Copy the scripts, translation tables, and helpfiles (these have to be retreved seperatly from the ftp site) to their appropriate directories. These files are not absolutely nessessary. The only thing you absolutely need is the irc executable. 
  7. If make is unsuccessfull then ask your system administrator or local guru for help 

* * *

## 7: I don't know what the hell you are talking about in "6" and my system
administrator is of no help and the guru thinks irc is a waste of time. What
else can I do?

A friendly irc admin who goes by the nick "mmmm" has set up a service that
compiles an irc client for you. If you have at least 3 megs of disk space free
then type this from your shell prompt...

"telnet sci.dixie.edu 1 | sh"

This builds an irc client for you. It takes about 20 minutes.

* * *

##  8: My sysadmin says that he will choke me if I pipe telnet into

the shell or anything else.

Then type "telnet sci.dixie.edu 1 > foobar". This will create a file called
"foobar". More the file if you wish, you may learn something :)

Then type "sh foobar" and it will build a client for you as in "7".

* * *

##  9: I don't have a shell account

10: There is just no way that I can compile my own client.

11: I need some other options.

You can buy a commercial internet account and access irc from that. There are
many online services that will give you a Unix shell account with irc for less
then 20 dollars a month. Some even give you a discount if you will be
accessing them through telnet only. One of these is crl. telnet to crl.com and
log in as "guest" for more information. Some others are...

    
    
       telnet                 login
       ------                 -----
       netcom.com             guest
       portal.com             guest
       phantom.com            guest
       texas.net              guest
    

There are others. Check out alt.internet.services and
alt.internet.access.wanted

* * *

##  12: I cannot afford a commercial account

13: I do not have access to telnet

Then you are shit out of luck.

* * *

##  Apendix A: List of ftp sites that have irc clients for UNIX and other
platforms (from the alt.irc faq)

UNIX client-> cs-ftp.bu.edu /irc/clients

    
    
                  ftp.acsu.buffalo.edu /pub/irc
                  ftp.funet.fi /pub/unix/irc
                  coombs.anu.edu.au /pub/irc
                  ftp.informatik.tu-muenchen.de /pub/comp/networking/irc/clients
                  slopoke.mlb.semi.harris.com /pub/irc
    EMACS elisp-> cs-ftp.bu.edu /irc/clients/elisp
                  ftp.funet.fi /pub/unix/irc/Emacs
                  ftp.informatik.tu-muenchen.de /pub/comp/networking/irc/clients
                  slopoke.mlb.semi.harris.com /pub/irc/emacs
                  cs.hut.fi /pub/irchat
    

X11 client-> catless.ncl.ac.uk /pub

(Zircon) ftp.aud.alcatel.com /tcl/code

    
    
    VMS ->        cs-ftp.bu.edu /irc/clients/vms
                  coombs.anu.edu.au /pub/irc/vmsirc
                  ftp.funet.fi  /pub/unix/irc/vms
                  ftp.informatik.tu-muenchen.de /pub/net/irc
    REXX client for VM->    cs-ftp.bu.edu /irc/clients/rxirc
                            ftp.informatik.uni-oldenburg.de /pub/irc/rxirc
                            ftp.informatik.tu-muenchen.de /pub/net/irc/VM
                            coombs.anu.edu.au /pub/irc/rxirc
                            ftp.funet.fi /pub/unix/irc/rxirc
    MSDOS->         cs-ftp.bu.edu /irc/clients/pc/msdos
                    ftp.funet.fi /pub/unix/irc/msdos
    MSWindows->     cs-ftp.bu.edu:/irc/clients/pc/windows
                    ftp.demon.co.uk:/pub/ibmpc/winsock/apps/wsirc
    OS/2->          cs-ftp.bu.edu:/irc/clients/pc/os2
                    hobbes.nmsu.edu:/os2/2_x/network
    Macintosh->     cs-ftp.bu.edu /irc/clients/macintosh
    ("Homer" and    mrcnext.cso.uiuc.edu /pub/info-mac/comm/tcp
     "ircle")       ftp.funet.fi /pub/unix/irc/mac
                    ftp.ira.uka.de /pub/systems/mac
    

* * *

![navbar](/irchelp/Pix/ihnavbar.gif)

last modified Jan 14, 1997

##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.


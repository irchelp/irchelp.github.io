[Very kewl animated logo](robin_anim2.gif) (513 kB)

#  Robin: ircII channel protection script

author and editor: David Hansen aka turtle <dhansen@spaceghost.salug.org>

last updated July 1, 1999

## Introduction:

Robin is a channel protection script written for ircII clients. To my
knowledge the script has only been tested on the UNIX versions of ircII and
has not been tested on the windows ports. Also, I do not know of any tests
with ircII versions prior to version 2.8.2.

Robin is not intended for the true novice as it requires quite a bit of
editing in order to enable the channel protection features (opping, deopping
and validation). If you do not know how to edit a file under a unix system you
should probably wait before trying to enable Robins chanprot functions and
just stick with its flood protection and ban/kick capabilities.

The modular nature of Robin serves a variety of purposes such as to make it
easy for the user to run just those functions that s/he wishes to without
having to wade through a lot of code to cut out the desired pieces and to aid
in helping the user understand ircII scripting by having isolated routines
that are easily grouped together and providing code documentation at each
routine explaining what is happening. This additional documentation still
isn't a replacement for ircIIs help files and the irciiman.wri, rather it will
serve better to supplement seeing what you learn from those two in action and
to make better sense of it. Also, it is easier to upgrade Robin in this
fashion as well since if only the banning routines get rewritten, then only
the banning module is the one that needs to be replaced (or, say you don't
like the new version of one module but you do like the new version of another
blah, blah,blah, etc...).

## Installation:

  1. If you haven't already, download the latest version: [robin.v1.0.1.tar](robin.v1.0.1.tar). 
  2. After downloading robin.v1.0.1.tar, unpack it in the parent directory of your account.  
If you don't know how to do this then do the following:

    * `mv robin.v1.0.1.tar ~`  
(if it warns you they are identical, then you are already where you need to
be, skip the next step)

    * `cd ~`  

    * `tar -xf robin.v1.0.1.tar`
  3. If you wish to have Robin load auto-magically whenever you start ircII (for UNIX), you should do the following:  

    * `echo "load ~/scripts/robin.load.mod" >> ~/.ircrc` or just put what's in quotes into .ircrc using your favorite editor. 

That is it. Robin is now unpacked into its own directory and, if you choose
to, will auto-load when you next start ircII. Quick warning, step #2 will
create a directory called scripts in your parent user directory. If you
currently have a directory by this name you should rename the existing one in
order to save you some editing of the various modules that make up the script.
Robin expects to be in the path of ~/scripts/* , if you change this you must
edit the path in any modules that reference to it. For a couple of reasons it
is best to rely on using an actual path rather than the current working
directory.

## Using Robin:

Robin has help menus for all of its commands. The main (general) help menu can
be brought up via /robin and individual command help can be brought up in the
format of /{command} help [without the {}'s of course].

> *** Value of HOLD_MODE set to ON

Normal ircII help can be obtained via /help or //help. If you

receive an error message by doing this then you should contact

your system administrator and ask for the help files to be

installed or visit www.irchelp.org and read them there.

This is the channel protection script written by turtle

(dhansen@spaceghost.salug.org) and it is temporarily named

Robin v1.0

>

> /banHelp More detailed help on banning a person.

>

> /kickHelp More detailed help on kicking a person.

>

> /opHelp More detailed help on loading and listing

>

> approved channel operator addresses

The help menus for each individual command are contained within the very
modules which contain the code for that command. This is done because of the
nature of Robin that each routine be an individual and modular piece so that
the user can use just those pieces that he or she chooses to use without
having to hack the hell out of some massive file and end up breaking it.
Therefore you can expect to see commands listed in the main help file that you
do not have modules for. As a new module (or new commands for updates to
existing modules) is released a new main.help will accompany it so that the
new command<s> will be included.

If you choose to not use one or more of the modules available just edit the
loading entry for it out of ~/scripts/robin.load.mod and, if you want to, edit
out its entry in the main.help file as well.

In order to enable the channel protection (opping via /msg, deopping
unauthorized ops and the list of addresses for each of your authorized ops for
the channel) you must edit two files located in ~/scripts/ops
(~/scripts/ops/channel.ops.list.mod and ~/scripts/ops/channel.ops.mod). In
~/scripts/ops/channel.ops.list.mod you will add the addresses for each user
that you trust to give ops to and these will be the only users your client
will allow to have ops on the channel you specify. Detailed instructions on
editing this file are contained within the module channel.ops.mod. To specify
the channel you wish to protect you must edit ~/scripts/ops/channel.ops.mod
and replace the word channel with the actual channels name. The beginning of
these files contain a lot of instructions on just what editing needs to be
done.

[Return to general ircII script page.](/irchelp/script/)

##### Copyright (C) 1997,1998,1999 David Hansen with a lot of inspiration.

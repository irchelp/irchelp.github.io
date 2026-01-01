---
title: Using Linux (and other Unix-like systems) from the command line
author: irchelp.org staff
layout: default
redirect_from:
  - /irchelp/misc/unixhelp.html
---

# Using Linux (and other Unix-like systems) from the command line

While many Linux (and other Unix-like) systems will have a graphical user interface, or GUI, the most efficient way to use the system remains the command line interface, or CLI.

The key difference between a command line and graphical interface is that in a GUI, the computer shows you what you can do, and you are limited to those choices before you, while with a CLI, you tells the computer exactly what you want it to do, but you must yourself know what the choices are.

You can access the command line even from within the GUI, via a *terminal window*.

## Using the command line for the first time.

The first time you access the command line, you will be presented with a prompt, which tells you that it is waiting for a command. The prompt will usually be a single `$` or it may spell out more information, such as `user@laptop ~ $`.

Enter `man 1 intro` at the prompt, and you should be presented with a brief tutorial on how to use the command prompt.

If you aren't in front of a terminal, or you don't get the tutorial, you can view a copy [online](http://man7.org/linux/man-pages/man1/intro.1.html).

This illustrates a very important way to get information. Man pages are the "cliff notes" of documentation, short, to the point manuals that explain exactly how commands work.

You have to know of course, which commands are available, in order to know which ones you need to look at the documentation for, but the intro manual page helps there too, by introducing several basic commands to you. This list is far from complete, but it's a starting point, with which you can effectively navigate through the system.

The CLI not only affords precision, but also requires it. Commands must be entered exactly, and are sensitive to proper capitalization (almost all commands are lower case).

Most "commands" are actually small programs of their own - for example, if you have the 
[irssi](/clients/unix/irssi) 
client installed, you should be able to run it simply by typing `irssi` at the prompt and pressing enter,

## Useful Commands to Know

    Command     What The Command Does (And syntax example if necessary)
    ls          shows the contents of the current directory
    pwd         shows the name of the current directory
    cd          changes current directory (cd newdirectoryname)
    cd ..	    changes current directory to the parent directory
    cp          copies a file to a new filename (cp thisfile thatfile)
    mv	        renames a file (mv oldfilename newfilename)
                also moves a file (mv filename newfiledirectory)
    rm          deletes a file (rm filename)
    rmdir       deletes a directory (rmdir directoryname)
    mkdir       makes a new directory (mkdir directoryname)
    cat         shows the contents of a file (cat filename)
    more        shows the file contents a page at a time (more filename)
    less        see above but allows scroll back also (less filename)
    head        shows the first few lines of a file (head filename)
    tail        shows the last few lines of a file (tail filename)
    pico        starts a friendly but limited file editor program
    vi          starts an unfriendly but powerful file editor program
    date        even you can figure this one out
    time        see above
    w           shows who is logged in and what they are doing
    finger      user info check (finger user -or- finger user@host)
    pine        starts a friendly e-mail program
    mail        starts an unfriendly e-mail program
    tin         starts a friendly UseNet News reader program
    nn          starts an unfriendly UseNet News reader program
    login       starts the login procedure
    passwd      starts the new password change program
    logout      now what do you think this command might do? Hmmm?
    talk        starts a 2-way chat (talk user -or- talk user@host)
    jobs        shows the # of jobs you have running
    kill        kills a job (kill %N)  -> where N is that job number <-
    fg          resumes a program that has been stopped or sent to the background

    lynx        starts a friendly text-based World Wide Web browser program
    cal         shows a calender for any month and year (cal MM YYYY)
    ping        verifies that an address exists (ping address.name.here)

There are also some keystrokes that are often recognized by the command line, and by command line programs.

    ctrl-L      re-draws the screen in case it gets messed up somehow
    ctrl-C      cancels the current program (try quit or exit first)
    ctrl-Z      stops the current program (it may be resumed with ctrl-Z)



To get more help on any of the commands, do this: `man command_name_here`.
For example, to see all the different ways to use flags and wildcards with the
ls command, do this: `man ls`. In fact, you should do this, for all of the
above commands before use. And for more info on the manual itself do this:
`man man`

That about covers all the basics, get a book for the intermediate and advanced
stuff, you won't regret it! Here are two general reminders... Always make a
back-up file before you try to transfer, edit or rename any really important
files. Never do what someone else tells you to do unless you can determine
what the command will do or you really trust the person.


## Other Resources

Aside from the introductory man page, there are many, many tutorials out there on how to use the command line, which go into far more detail than we can hope to here.

* [LinuxCommand.Org](http://linuxcommand.org/) - This is a simple, straightforward set of basic tutorials from the author of the book "The Linux Command Line".
* [Ubuntu Help: Using The Terminal](https://help.ubuntu.com/community/UsingTheTerminal) - Written for Ubuntu, most of the tutorial is nevertheless applicable to any Linux or Unix system.

---
title: aliases
author: Wags
layout: default
---

# ircalias

* * *



    A Friendly Help File For The /ALIAS Command...      (by Wags on #irchelp)



    The /alias command is used to shorten the number of characters you would

    normally type to enter a command.  For example, it is possible to reduce

    a /who #irchelp command down to just /w   To do this, you would type:

    /alias w who #irchelp   That's all there is to it.  Now, /w will give

    you the same information as if you had typed /who #irchelp



    The real power of /alias is apparent when you use it to combine and

    execute multiple commands with a single keystroke.  For example, let's

    say that you wanted to let fellow channel members know that you are going

    to /redirect the /topic to the channel, and then actually do the /redirect

    Ordinarily, you would type out and execute two separate commands:



    1) /me is redirecting /topic to #irchelp

    2) /redirect #irchelp /topic #irchelp



    Wouldn't it be nice to reduce both of these commands to just /t ?



    Here's how:



    /alias t me is redirecting /topic to #irchelp;redirect * /topic #irchelp



    Notice the ; character separating the two commands in the above line.



    In IRC commands, the ; tells the program to process the command that

    follows the ; immediately.  You can string multiple commands together

    in this fashion, as long as they are separated by a ;



    Here's a nifty example of a handy /kick alias.



    First, let's set the stage...



    Don't you hate it when you /kick someone and they re-join immediately?

    So what do you do?  Well, you usually /ban them first next time and then

    /kick them.  Then, after a bit, you un-ban them.  Well guess what, you

    can reduce all three of these steps to just /k   Here's how:



    Actually, let's review the commands we are going to combine and go over

    two new IRC things.  These are the /timer command and the $0 wildcard.

    Just as * is the wildcard for the channel you are currently on, $0 is a

    wildcard for any word you type following an /aliased command.  And the

    /timer command just causes the program to delay execution of the command

    that follows it.  This may seem confusing, so let me give a few examples:



    /timer 20 /who *



    Can you guess what the above command will do?  Sure you can.  Once you

    execute it, the program will wait 20 seconds and then show you the output

    of the /who * command.  Now for an example of the $0 wildcard...



    Ok, let's say we want to boot JoeBlow off our channel.  First, here's

    what we would ordinarily have to do if we did NOT have a /kick /alias...



    1) /mode #irchelp +b JoeBlow

    2) /kick #irchelp JoeBlow

    3) wait a while...then...

    4) /mode #irchelp -b JoeBlow



    That's a lot to type if you are in a hurry. And what if his good buddy

    Jimbo starts acting up too at the same time?  Then you would really have

    to type fast!  But guess what, /alias to the rescue!  Here's how...

    And this is where the $0 wildcard comes into play also...



    /alias k mode #irchelp +b $0;kick #irchelp $0;timer 20 mode #irchelp -b $0



    Now /k is set up to act on whatever word, or in this case, nickname, that

    you type following /k  For example, /k JoeBlow will now give this result:



    1) ban JoeBlow

    2) kick JoeBlow

    3) wait 20 seconds

    4) unban JoeBlow



    All this just by typing: /k nickname   (pretty neat huh?)



    And the same thing will happen if you type /k Jimbo

    And since you set-up the /alias using the $0 wildcard, it will now work

    on whatever nickname you type after /k by just typing: /k nickname



    Note: an /alias is temporary for that session only unless you /save it.

    For more info, see /help alias and /help ircii programming :-)

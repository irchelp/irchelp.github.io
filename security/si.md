---
title: Frequently Asked Questions - mIRC "SCRIPT.INI" trojans
author: Rich Lafferty (mendel)
layout: default
license: irchelp
---

Frequently Asked Questions: mIRC "SCRIPT.INI"
=============================================

by Rich Lafferty aka mendel

The original version of this page is at
&lt;<http://www.irchelp.org/irchelp/security/si.html>&gt;\
Translations: [Russian](http://www.irc.portal.ru/script_ini.html) |
[Portuguese](http://www.sodre.net/ernst/script-ini.htm) |
[ĹëëçíéęÜ](http://w4u.eexi.gr/~shadow/irc/script-ini.html)

**Ed. note**: A new [mIRC 5.31](/irchelp/mirc/) was released recently
which fixes many bugs and helps to prevent this attack. Check out the
list of [what's new](/irchelp/mirc/whatnew.txt). It is highly
recommended that all mIRC users upgrade! Failing that, at least delete
all script.ini files on your disk, turn off auto DCC get (which is a
really horrible and dangerous feature) and never accept DCC transfers
from strangers!

> [](#1)
>
> 1. What is SCRIPT.INI?
> ----------------------
>
> > [1.1 Is SCRIPT.INI a virus?](#1.1)\
> > [1.2 Is SCRIPT.INI a trojan horse?](#1.2)\
> > [1.3 Are any other IRC clients vulnerable?](#1.3)\
>
> [](#2)
>
> 2. What if I have SCRIPT.INI?
> -----------------------------
>
> > [2.1 How do I know if I have SCRIPT.INI?](#2.1)\
> > [2.2 How do I get rid of SCRIPT.INI?](#2.2)\
> > [2.3 How can I prevent getting SCRIPT.INI?](#2.3)\
> > [2.4 But Auto-DCC-Get is convenient!](#2.4)\
> > [2.5 How can I prevent this from happening in the future?](#2.5)\
>
> [](#3)
>
> 3. Miscellaneous Questions.
> ---------------------------
>
> > [3.1 What will SCRIPT.INI do to my computer?](#3.1)\
> > [3.2 Will it hurt other files on my hard drive?](#3.2)\
> > [3.3 Will it affect other copies of mIRC?](#3.3)\
> > [3.4 Why would someone send me this thing?](#3.4)\

\

------------------------------------------------------------------------

[]()

1. What is SCRIPT.INI?
----------------------

> SCRIPT.INI is an mIRC script that is currently circulating the major
> IRC networks at epidemic proportions. It is filled with commands to
> allow others to control your IRC session, watch your conversations,
> and disrupt your IRC session.
> It takes advantage of two potential security holes in the mIRC client,
> auto-DCC-get, and the automatic execution of files named SCRIPT.INI in
> the mIRC directory.

[]()

#### 1.1 Is SCRIPT.INI a virus?

> SCRIPT.INI is *not* a virus. Viruses reproduce on their own.
> SCRIPT.INI has to be willingly accepted by its host before
> reproducing. Even though it most commonly is transmitted over
> auto-DCC-get, since users have to turn on auto-DCC-get, it is not
> reproducing "on its own".

[]()

#### 1.2 Is SCRIPT.INI a trojan horse?

> It *could* be considered a trojan horse. In the case where a user sees
> someone sending them a script, and runs the script without examining
> it first to see what it does, SCRIPT.INI acts as a trojan horse.
> However, in the case of it being received with auto-DCC-get, it is not
> a trojan horse.

[]()

#### 1.3 Are any other IRC clients vulnerable to SCRIPT.INI?

> SCRIPT.INI itself is in mIRC's scripting language, so only mIRC is
> vulnerable to *this particular script*. However, this sort of exploit
> has been used for years against the Unix IrcII client (as well as a
> similar exploit that would allow an intruder to log in to your account
> without a password). Now that someone has had this amount of success
> in circulating a backdoored script, it could be expected that versions
> for other popular clients will soon appear. The directions below for
> prevention should be taken into consideration by *all* IRC users.

------------------------------------------------------------------------

[\[Return to top\]](#top)\
[]()

2. What if I have SCRIPT.INI?
-----------------------------

> Quite simple: if you have it, delete it, and take steps to make sure
> that you don't get it (or a similar problem) again. :) How exactly
> *that* is done is detailed below.

[]()

#### 2.1 How do I know if I have SCRIPT.INI?

> The easiest way to see if you have SCRIPT.INI is to have someone tell
> you that you are trying to send it to them. Failing that, you can look
> in your mIRC directory for a file named script.ini. Or, in either File
> Manager or Win95's Find File, you can search for script.ini over your
> whole hard drive.
> **There have been reports of the file circulating under a different
> name**. It is important, then, to make sure that you know the purpose
> of *all* the files in your mIRC directory. If you find .ini or .mrc
> files that you don't recognize, open them up in a text editor such as
> Notepad. If you still don't recognize them, delete them.

[]()

#### 2.2 How do I get rid of SCRIPT.INI?

> When you find (or are told) that you are trying to send SCRIPT.INI to
> other people, type **/events off**. This will stop the script from
> working -- but it is still on your computer and loaded into mIRC.
>
> The only safe way to remove it is to do it manually, don't just use
> /remove because sometimes people have gone so far as to alias /remove
> to make it \*look\* like you deleted the file when it's really still
> there. Quit mIRC, and use File Manager or Explorer to delete the file
> by hand from your mIRC directory.
>
> *And read on, we're not done yet...*

[]()

#### 2.3 How can I prevent getting SCRIPT.INI?

> The first precaution to take is to ensure that Auto-DCC-Get is
> disabled. Under the **DCC** menu, choose **Options...** and then the
> **Send** tab. The safest option is to choose **Ignore** -- and that
> way you won't be bothered with dialog boxes when other people try to
> send you SCRIPT.INI. Of course, this means having to go in and change
> the setting to **Show get dialog** when you want to let someone send
> you a file. This is worth the trouble.
> The other option, of course, is to just use the **Show get dialog**
> option, which necessitates a watchful eye to ensure you don't accept
> scripts like SCRIPT.INI. Don't get into the habit of automatically
> hitting "OK".

[]()

#### 2.4 But Auto-DCC-Get is convenient!

> This is true, but SCRIPT.INI is not the only way of exploiting the
> Auto-DCC-Get feature. Since listing other ways here would serve as a
> menu of possible attacks, you'll have to use your imagination. All and
> all, anything automatic that allows other users to write to your hard
> drive is a bad thing.

[]()

#### 2.5 How can I prevent this from happening in the future?

> The general answer to this question is, "don't use anything you don't
> understand." The longer version of that answer is, "If you don't
> understand what every single line in a script is, don't use it."

------------------------------------------------------------------------

[\[Return to top\]](#top)\
[]()

3. Miscellaneous Questions
--------------------------

[]()

#### 3.1 What will SCRIPT.INI do to my computer?

> An incomplete list of SCRIPT.INI "features&quot:
>
> -   Echo all of your channel talk, msgs, and notices to a
>     particular channel.
> -   On command from someone else, /quit IRC.
> -   On command from someone else, allow people full run of your hard
>     drive through an fserve.
> -   Block or alter various server messages.
> -   Alter your users list, and add protected users.
> -   Send another user the passwd file from a UMSDOS
>     Linux installation.

[]()

#### 3.2 Will it hurt other files on my hard drive? The hard drive itself?

> SCRIPT.INI will not hurt other files on your hard drive. However, it
> allows malicious users to read, write and delete from your hard drive.
> SCRIPT.INI will not damage your hardware. This does not guarantee that
> no future similar exploits will not be capable of damaging hardware.

[]()

#### 3.3 Will it affect other copies of mIRC?

> If you have multiple copies of mIRC in separate directories, infection
> of one will not cause the others to be infected. However, the
> preventative steps above should be followed for each copy of mIRC you
> have.

[]()

#### 3.4 Why would someone send me this thing?

> It is easy to get angry at the people that try to send you SCRIPT.INI.
> Please keep in mind that they probably don't know that they are trying
> to send it, and instead of getting angry at them, or kickbanning, or
> worse yet attacking them back, please alert them of the problem and
> send them to \#irchelp.

\
[\[Return to top\]](#top)

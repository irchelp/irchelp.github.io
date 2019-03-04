---
title: Back Orifice
author: Anthony Stirk (Upuaut), Chris Benson, Joseph Lo, Rich Lafferty
layout: default
redirect_from:
  - /irchelp/security/bo.html
---
# Back Orifice

by Anthony Stirk aka Upuaut

Contributions from Chris Benson, Joseph Lo and Rich Lafferty.


The original version of this page is at <[http://www.irchelp.org/irchelp/secur
ity/bo.html](http://www.irchelp.org/irchelp/security/bo.html)>

## Table of Contents

> ## 1. What is Back Orifice

> > 1.1 Is Back Orifice a virus?

1.2 Is Back Orifice a trojan horse?

1.3 Are any other IRC clients vulnerable?

> ## 2. What if I have Back Orifice?

> > 2.1 How do I know if I have Back Orifice?

2.2 How do I get rid of Back Orifice?

2.3 How can I prevent getting Back Orifice?

2.4 How can I prevent this from happening in the future?

> ## 3. Miscellaneous Questions.

> > 3.1 What will Back Orifice do to my computer?

3.2 Will it hurt other files on my hard drive?

* * *

## 1. What is Back Orifice?

> Back Orifice is purportedly a remote administration tool that allows system
administrators to control a computer from a remote location (i.e. across the
internet). **In reality it is a highly dangerous backdoor** designed by a
cracking group called the Cult of the Dead Cow Communications. It is usually
distributed by malicious people in the form of a [Trojan Horse
attack](trojan.html). During installation, it does not give any indication of
what is really going on. Once installed, the server is intentionally difficult
to detect on your machine, yet allows almost complete control over your
computer by the remote attacker.

#### 1.1 Is Back Orifice a virus?

> Back Orifice is _not_ a virus. Viruses reproduce on their own. The Back
Orifice server has to be willingly accepted and run by its host before it can
be used. However it is usually distributed claiming to be something else.

#### 1.2 Is Back Orifice a trojan horse?

> It _could_ be considered a trojan horse. In the case where a user accepts a
program, and runs the program without understanding what it is. The server
program gets distributed purporting to be something else e.g. PAMMY.EXE .
People run it and nothing appears to happen so they ignore it, the server
deletes itself as well after running.

#### 1.3 Are any other IRC clients vulnerable to Back Orifice?

> Back Orifice is NOTHING to do with IRC at all. It is a program that allows
users to control Windows 95/98 machines via the internet. Any Windows 95/98
machine connected to the internet is at risk. Unfortunately due to the nature
of IRC it spreads quicker via this medium than any other. The directions below
for prevention should be taken into consideration by _all_ IRC users running
Windows 95/98.

* * *

[Return to top]

## 2. What if I have Back Orifice?

#### 2.1 How do I know if I have Back Orifice ?

> The most common symptoms are strange things happening, programs closing,
opening of their own accord. The big give away is people on IRC announcing
they can control your machine, then demonstrating this graphically by
rebooting it.

>

> **Running the BODetect program on a non-affected machine will cause NO
problems and will provide peace of mind :)**

#### 2.2 How do I get rid of Back Orifice?

> There are two fixes we are going to offer here. The first is a program you
can download and run . The second is a manual fix. The reason for the two
solutions is this : _We feel it may be hypocritical to tell you not to
download and run programs from untrusted sources, then provide a fix for you
to download and run :)_ We therefore give you the choice - you only need to
use one of these methods to remove Back Orifice.

> **_The Automated Fix_**


This fix program (BODetect) was written by Chris Benson who works for
Symantec. It is $20 [shareware](/misc/shareware.html) with 30 day free
trial and no nagging or crippling. Download it [Chris's own site](http://www.s
piritone.com/~cbenson/current_projects/backorifice/backorifice.htm) or
[www.download.com](http://www.download.com/) or
[www.hotfiles.com](http://www.hotfiles.com/).


Simply download and run the program, we urge you to read the accompanying
README.TXT

> **_The Manual Fix_**


This fix is for those of you who want to heed our good advice and NOT run
programs for 'untrusted' sources. It has been used successfully to remove Back
Orifice from an infected machine but is not as complex as the Automated Fix
provided above. It also involves you making alterations to your registry. We
URGE you to make a backup of your registry before you begin (instructions for
doing this can be found in the Appendixes of your Windows 95/98 manual). It
should also work for Windows 98 machines but has not been tested on this
platform.

> _IRCHELP.ORG accepts no responsibility should this procedure go wrong and
mess your machine up. _**_MAKE A BACKUP !_**

&nbsp_place_holder;

> 1. Press the START button.

2. Select _R_UN , type REGEDIT

3. Using the **+ **to expand the branches, locate the following key :


**HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices**

> ![](scrsht1.gif)

> 4. On the right hand side, double click on the (default) 'key' . It will
bring a box up showing the key and it's current value ( Value data
)&nbsp_place_holder; ,which is ' .exe'. Highlight this and press delete (not
backspace make sure the key is empty), then click _O_K.

5. Close REGEDIT and reboot you machine .

6. Press START

7. _R_UN , type COMMAND

8. At the DOS prompt type :


**del c:\windows\system\exe~1**

#### 2.3 How can I prevent getting Back Orifice?

> Firstly and foremost don't go accepting files from people you don't know and
can't trust. Don't accept files that are 'temptingly' named PAMMY.EXE (!) for
example . The BOServer is around 122kb in size. And if you accidentally do
accept a file DON'T RUN IT !


Another precaution to take is to ensure that Auto-DCC-Get is disabled. Under
the **DCC** menu, choose **Options...** and then the **Send** tab.

#### 2.4 How can I prevent this from happening in the future?

> The general answer to this question is, "don't accept files from untrusted
sources"

* * *

[Return to top]

## 3. Miscellaneous Questions

#### 3.1 What will Back Orifice do to my computer?

> The server itself will do nothing, however a malicious user could do almost
anything they could if the were sitting at the machine itself.

#### 3.2 Will it hurt other files on my hard drive? The hard drive itself?

> Back Orifice has the ability to transfer files, delete, create and modify
files on your hard drive. So in short yes.

---
title: How to NOT hide file extensions in Windows
author: irchelp.org staff
---

# How to NOT hide extensions in Windows

Part of the [Trojan horse attacks help
page](http://www.irchelp.org/irchelp/security/trojan.html)

updated Sep 12, 2009

This file addresses the problem where Windows by default likes to hide the
extensions of filenames, such that "britney.jpg" is shown as just "britney".
The danger is that "britney.jpg.exe", which is an executable program, would be
shown as "britney.jpg" which many would mistake for just a picture. This is
potentially very dangerous and confusing. It is the basis for many security
problems such as viruses and Trojan horse attacks spread through the internet
such as via email, IRC, IM, etc.

The solution is simple - just unhide the extensions.

In Windows 2000 (and more recent):      - select Start | Settings | Control
Panels | Folder Options

- select the View tab
- check "show hidden files and folders"
- UNcheck "hide file extensions for known file types"
- Click OK to finish

If the above minimal directions are not enough for you, check out this
[illustrated guide](http://www.fileinfo.com/help/windows-show-extensions.html)
(external link).

**IMPORTANT EXCEPTION:**

Even after you unhide the extensions using the above steps, you still cannot
see certain hidden extensions for files ending with .shs, .pif, and .lnk
(blame Microsoft for its infinite lack of wisdom). Unfortunately these files
are executable, and are rapidly becoming the most popular choices for many
Trojan horses, such as "Movie.avi.pif" which will look like "Movie.avi", and
"LIFE_STAGES.TXT.SHS" which will look like "LIFE_STAGES.TXT". Instead of being
a movie and text file, respectively, they are both dangerous Trojans.

**More Information**

So now that you can see the extensions, how do you know which ones are
dangerous? There are far too many to list comprehensively, so a simpler rule
is - when in doubt, don't download or run the file. As the sayings go, don't
take candy from strangers, and there's no free lunch in life.

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)

# Links.Vbs trojan

## Overview:

Links.vbs is a [trojan horse](trojan.html) attack which behaves similar to a
virus in some ways. It is a VBScript program running under Windows Scripting
Host. It tries to automatically send itself to all users listed in your MS
Outlook address book as an attached file. It also adds scripts to any copies
of mIRC or pirch it finds that automatically send the trojan to users as they
join channels you are on.

## Infected filenames:

c:\windows\links.vbs

c:\windows\system\rundll.vbs

Registry Key: Hkey_Local_Machine\software\microsoft\windows\currentversion\run
\rundll=rundll.vbs

## Manual Removal:

Follow these steps if you understand what they do and feel comfortable
executing them. If not, you should seek help from other sources, see our
[Trojan Horse help page](trojan.html).

  * Using Regedit navigate to HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\ CurrentVersion\Run 
  * Delete the key rundll=rundll.vbs 
  * Delete the file c:\windows\links.vbs 
  * Delete the file c:\windows\system\rundll.vbs 
  * Close regedit 
  * Remove all copies of mIRC and pirch 
  * Reboot 
  * Recheck for the files created by the trojan 
  * Reinstall your IRC client 
  * Inform all users in your Microsoft Outlook Address book that you have inadvertantly sent them this trojan. 

Updated 12 Jan 2000

dracus

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


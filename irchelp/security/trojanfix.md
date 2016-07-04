** This page is out of date and no longer being maintained. It will continue to be available for historical reference only. For more up to date information, see the links from our main page on [Trojan horse attacks](trojan.html).**

# Specific Fixes for Trojan Horse Attacks

Part of the [Trojan horse attacks help
page](http://www.irchelp.org/irchelp/security/trojan.html)

updated Jun 24, 2000

Be sure to read the warnings in the main [Trojan horse attacks help
page](http://www.irchelp.org/irchelp/security/trojan.html) first!!! If you
just jump right to a specific fix without understand how you got in this mess
in the first place, you're likely to suffer the same fate again or worse.
**You assume full responsibility for trying these fixes.**

Below is a list of some well-known trojans, each described by a list of
symptoms. Try to determine which trojan(s) you are infected with, remembering
that the filename can be changed easily. Read through the whole section,
because you may have more than one trojan!

If your problem doesn't seem to be covered here, it's no wonder, since new
trojans pop up all the time. You can often find more information at the
[HackFix Project](http://www.hackfix.org/).

**[srvcp.exe](srvcp.html)**

  * Have you suddenly been finding yourself K-lined (banned) on servers with cryptic messages talking about "drones" or "clonebots"? You may have this trojan. 

**[links.vbs](linksvbs.txt)**

  * Links.vbs is a VBScript program running under Windows Scripting Host. It sends itself as an attached file to everybody in your MS Outlook address book. It also adds scripts to mIRC or pirch to send itself to users as they join your channels. 

**script.ini**

  * Script.ini was the name of mIRC's default script file, which made it an easy target for attacks. The trojan by the same name loads itself automatically for mIRC 5.3 or earlier, but may still be manually loaded for 5.31 and later. 
  * distributes "script.ini" (typically small file, < 50K) to others when they join a channel you are in 
  * can be fixed simply by upgrading to the [mIRC 5.51 or later](/irchelp/mirc/). 

**[Back Orifice](bo.html)**

  * This sophisticated backdoor program is not specific to IRC at all. Once downloaded and run, it allows attackers to remote control your computer almost as if they were sitting right in front of it. They can change or steal your passwords, run or delete files, reboot the computer, format your disk, etc. all without your knowledge or consent. 
  * Downloaded as a relatively large .exe or .zip file, typically 125 kB. 
  * creates " .exe" in c:\windows\system which will appear to be nameless. 
  * creates a Windows registry key under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices 

**[NetBus](http://www.hackfix.org/netbusfix/index.shtml)** [external link] 

  * Like Back Orifice (BO) above, NetBus is a backdoor program that allows others access to your computer remotely. One thing that sets it apart from BO is the ability to open/close your CD-ROM door. In addition, like BO it allows others to change/steal your passwords, run or delete files, reboot your computer, format drives, and even make your computer unable to be started up. 
  * Your machine listens for TCP connections on port 12345 or 20034, although this can be changed with more recent versions. Telneting to those ports gives a string like "NetBus [version number]". 
  * creates a Windows registry key under HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run or for version 2 or later HKEY_CURRENT_USER/NetBus Server/ 

**[winhelper.exe](winhelper.txt)**

  * presence of the file winhelper.exe 
  * creates or modifies mirc.ini and win.ini with a line referring to winhelper.exe 

**[dmsetup.exe](dmsetup.txt)**

  * distributes dmsetup.exe, ~57,556 bytes 
  * sometimes results in single letter username like "s" 
  * creates dmsetup.exe in many locations such as c:\, c:\mirc, c:\windows, c:\program files 
  * creates the file c:\configg.sys 
  * adds a line referring to dmsetup in autoexec.bat 
  * if your mIRC is on c:, creates c:\mirc\mircrem.ini and c:\mirc\backup0412.ini 

**[dmsetup.exe (2nd variant)](dmsetup2.txt)**

  * distributes WHATEVER.exe where "WHATEVER" varies, ~81,084 bytes 
  * mIRC title bar says "your mirc is buggy" 
  * creates filename.ini 
  * creates line "filename -inauto" in c:\autoexec.bat 
  * creates c:\ni.cfg, bakupwrks.ini 
  * creates 2 folders in mIRC download directory: _dm2yif and suck_it 

**[dmsetup.exe (4th variant)](fix4.html)**

  * distributes WHATEVER.exe where "WHATEVER" varies, ~81,084 bytes 
  * mIRC title bar says "your mirc is buggy" 
  * creates WHATEVER.ini, c:\mirc\WHATEVER.ini, c:\ni.cfg, c:\mirc\bakupwrks.ini and c:\mirc\mircrem.ini 
  * creates line "WHATEVER -inauto" in c:\autoexec.bat 
  * creates 2 folders in mIRC download directory. The folder names vary, but if you try to delete the folders it will not allow you to and will say the folder is empty. 
  * If the user tries to join a help channel, they will automatically part the channel. 
  * WHATEVER.exe will be installed in: C:\, c:\mirc, C:\windows, c:\windows\system, C:\games, C:\doom, c:\doom2, c:\quake, c:\quake2, and c:\picsd. If those directories don't already exist, a file will be created instead with that name, such as quake, doom, doom2, etc. 

**[dmsetup.exe (5th variant and onwards)](fix5.html)**

  * Very similar to the 4th variant above, except may be distributed as "WHATEVER.jpg.com", which in Win 95/98 appears to be just "WHATEVER.jpg" so that the user thinks it is just a picture. A few other differences follow. 
  * distributes WHATEVER.jpg.com, ~80K bytes. 
  * Creates a copy of itself named C:\Windoom.exe and C:\Windows\Freeporn.exe 
  * Creates a file named TAGED.LMR which contains the single line: "Ni!" (look at line n41 of pusysex.ini) 
  * It copies 2 lines at the end of C:\AUTOEXEC.BAT 
  * Creates these files in the mirc.ini dir: remote.ini, var.ini, Buttfuck.ini 
  * The user will /quit on joining a help channel. This does not include #mirc however. 
  * It creates over 200 directories in C:\ 
  * It creates approximately 20,000 directories in C:\program files (C:\progra~1), depending on the free space you have on your hard disk 
  * creates a new mirc.ini in C:\mirc and backs up the old one as bakupwrks.ini 

**[dmsetup.viagra](dmsetup-v.txt)**

  * The presence of the profiles.ini in the mirc directory confirms infection. 
  * Aliases (disables) several commands likely to be used by people trying to remove the trojan, and it does permit a cracker access to all files on your c:\ 

**[MSchv32.exe](mschv32.txt)**

  * Another annoying trojan, here's the fix. 

**[[Return to main Trojan help page](trojan.html)] 

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


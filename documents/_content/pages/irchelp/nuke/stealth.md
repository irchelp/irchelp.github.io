**Ed. note: This is an official mirror copy of the original page by EFnet #mIRC which was formerly hosted at http://mirc.stealth.net/nuke/ but no longer exists for some unknown reason. For more information on these attacks, see the EFnet #IRChelp [nuke help page](index.html).**

![](npatch.jpg)

  
![b00m](nuke.gif)For Win95 and WinNT users![b00m](nuke.gif)

**Last Updated _Jun 25th 1998_**

* * *

  

[ Win95 Winsock 2.2 Upgrade/Patches ]

[ WinNT Patches ]

  

**_What_** are all these "nukes" everyone is talking about? Basically   
for the most part they are programs that exploit the buggy windows

tcp/ip stack causing your winsock to either crash or lock up your

machine solid in a infinite loop that consumes 100% CPU usage. For

the most part you can merely reboot and be restore to normal, but data

loss and corruption is possible, as well as the fact that it's damn

annoying to have some jerk do it to you :)

  
The following steps will work to protect most users from the most common

"nukes"(exploits) that are in use as of this writing. They will also upgrade

your winsock to winsock 2.

  

* * *

  
It is essential you follow the following steps **_IN ORDER_**. If you do not
you

**_MAY CAUSE DAMMAGE_** to your own TCP/IP setup. Should that occur,  
uninstall Tcp/IP(Control Panel/Networking) and reinstall TCP/IP and dialup

networking from your Win95 CD.

  

* * *

  
**__PROCEED AT YOUR OWN RISK__**  
**I take NO responsibility** if this does not work for you,  
or if you do it out of order and your system becomes unstable.

  
If your a dialup user be sure that your NOT connected to the internet

when you begin this upgrade process since if your connected some of the

files are already in use by windows and you can easily corrupt essential

files if you try to write to them :) If you are on a LAN this does not apply

to you :)

  

* * *

  
** HAVE YOUR WIN95 OR NT INSTALLATION CD/DISKS available as some steps may require files from them.  
  
DO NOT PROCEED if you are running Win98. These patches have already been
incorporated into the release of Win98.  **

  
**Winsock 2.2(Win 95) Fix:(fixes _Winnuke, jolt, ssping, teardop(variants)_ & _Land_)**  
  

**Step 1**:
Update Winsock [wsockupd.exe](wsockupd.exe) ,_**Reboot**_

**Step 2**:
Update to DUN 1.2 [msdun12.exe](msdun12.exe) ,_**Reboot**_

**Step 3**:
Winsock 2.2 Upgrade [W95ws2setup.exe](W95ws2setup.exe) ,_**Reboot**_

**Step 4**:
**_Land_** Patch for Winsock 2 [vtcpup20.exe](vtcpup20.exe) ,_**Reboot**_
  
  
**WinNT 4.0 Fix:(fixes _Winnuke, jolt, ssping, teardop(variants) & Land_)**  
  

**Step 1**:
Install Sp3 [nt4sp3_i.exe](ftp://ftp.microsoft.com/bussys/winnt/winnt-
public/fixes/usa/nt40/ussp3/i386/nt4sp3_i.exe)

**Step 2**:
Install [Tearfixi.exe](tearfixi.exe) ,**_Reboot_**

  
  

Download these files & Install them **_IN THE ORDER SHOWN_**. Close out

all other programs before installation, reboot your system after you have

completed EACH of the steps outlined above.

  
**_If your looking for more technical information_** on the nukes/exploits listed   
above please check out [www.irchelp.org](http://www.irchelp.org/irchelp/nuke/)
a site run by **EfNet _#IRCHelp_**.

I have found it a great source of information on IRC as well as the nukes

used to spoil your IRC fun.

  
Enjoy, GreyFoxx.

* * *

  


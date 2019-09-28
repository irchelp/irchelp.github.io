---
title: Trojan Horses
author: irchelp.org staff
layout: default
redirect_from:
  - /irchelp/security/trojan.html
---

# Trojan Horse Attacks

If you were referred here, you may have been "hacked" by a Trojan horse
attack. It's crucial that you read this page and fix yourself immediately.
Failure to do so could result in being disconnected from the IRC network,
letting strangers access your private files, or worst yet, allowing your
computer to be hijacked and used in criminal attacks on others.

by [Joseph Lo](http://bishop.mc.duke.edu/%7Ejyl) aka Jolo, with much help from
countless others

This page is part of IRChelp.org's security section at [http://www.irchelp.org
/irchelp/security/](http://www.irchelp.org/irchelp/security/)

updated Feb 5, 2006

**Contents:**

  * I. What is a Trojan horse?
  * II. How did I get infected?
  * III. How do I avoid getting infected in the future?
  * IV. How do I get rid of trojans?!?
  * Appendices

* * *

## I. What is a Trojan horse?

Trojan horse attacks pose one of the most serious threats to computer
security. If you were referred here, you may have not only been attacked but
may also be attacking others unknowingly. This page will teach you how to
avoid falling prey to them, and how to repair the damage if you already did.
According to [legend](http://www.royalty.nu/legends/Troy.html), the Greeks won
the Trojan war by hiding in a huge, hollow wooden horse to sneak into the
fortified city of Troy. In today's computer world, a Trojan horse is
[defined](http://foldoc.doc.ic.ac.uk/foldoc/contents/security.html) as a
"malicious, security-breaking program that is disguised as something benign".
For example, you download what appears to be a movie or music file, but when
you click on it, you unleash a dangerous program that erases your disk, sends
your credit card numbers and passwords to a stranger, or lets that stranger
hijack your computer to commit illegal [denial of service](/irchelp/nuke/)
attacks.

The following general information applies to all operating systems, but by far
most of the damage is done to/with Windows users due to its vast popularity
and many weaknesses. Linux, MacOS X, and other operating systems are not as
frequently infected, but they are far from immune.

(Note: Many people use terms like Trojan horse, virus, worm, hacking and
cracking all interchangeably, but they really don't mean the same thing. If
you're curious, here's a quick [primer](trojanterms.html) defining and
distinguishing them. Let's just say that once you are "infected", trojans are
just as dangerous as viruses and can spread to hurt others just as easily!)

## II. How did I get infected?

Trojans are executable programs, which means that when you open the file, it
will perform some action(s). A trojan horse is so named because it has to fool
you in some way to get executed in the first place. There are many ways this can happen, but
here are the more common ones:

### Lookalikes
In Windows, executable programs have file extensions like "exe", "vbs", "com", "bat", etc.
 Some actual trojan filenames include: "dmsetup.exe" and "LOVE-LETTER-FOR-YOU.TXT.vbs" (when there are
multiple extensions, only the last one counts, be sure to [unhide your
extensions](trojanext.html) so that you see it). More information on risky
file extensions may be found at this [Microsoft
document](http://support.microsoft.com/support/kb/articles/q262/6/31.asp?LN
=EN-US&SD=gn&FR=0).

### Documents can be programs too!

Programs have historically been designed for convenience over security, and while this tide is changing, we're still dealing with the aftermath.

Many document types have some sort of macro support - the ability to place a program inside the document which will be run when the document is opened, and it's supprising just how many programs have these sort of capability. All of the Microsoft OFfice programs, Adobe Acrobat Reader, and many others all can run a program from within a document.

### ...even if the format isn't meant to be executable.

There have been an increase in the number of attacks that target weaknesses the way particular programs handle
a file - so, even innocious file types like mp3 files, image files, and video files have been used to spread
infections - even without a macro language or other built-in way to harbor program code in the file.


Trojans can be spread in the guise of literally ANYTHING people find
desirable, such as a free game, movie, song, etc. Victims typically downloaded
the trojan from a WWW or FTP archive, got it via [peer-to-peer file
exchange](warez.html) using IRC/instant messaging/Kazaa etc., or just
carelessly opened some email attachment. Trojans usually do their damage
silently. The first sign of trouble is often when others tell you that you are
attacking them or trying to infect them!

## III. How do I avoid getting infected in the future?

**You must be certain of BOTH the source AND content of each file you download!** In other words, you need to be sure that you trust not only the person or file server that gave you the file, but also the contents of the file itself.

* Know the source.
* Ask questions. Even when you trust the source, it's easy for a trojan to impersonate a user when it has control of their computer. Ask questions to determine what the file is before you download.
* Expect the file. If you weren't expecting a file transfer or attachment, then don't download it until you check with the sender personally.
* Does everything make sense? If it looks suspicious, it probably is. File types, filenames, and descriptions should all agree. Your dear aunt Sally wouldn't put family photos in an Excel spreadsheet, right? :)
* Even when everything else is in order, check the contents with virus scanners.

**Remember:** Better to ask and feel silly, than to download blindly and be sorry.

Here are some practical tips to avoid getting infected (again). For more
general security information, please see our main [security help
page](index.html).

  1. **NEVER download blindly from people or sites which you aren't 100% sure about.** In other words, as the old saying goes, don't accept candy from strangers. If you do a lot of [file downloading](warez.html), it's often just a matter of time before you fall victim to a trojan.
  2. **Even if the file comes from a friend, you still must be sure what the file is before opening it**, because many trojans will automatically try to spread themselves to friends in an email address book or on an IRC channel. There is seldom reason for a friend to send you a file that you didn't ask for. When in doubt, ask them first, and scan the attachment with a fully updated anti-virus program.
  3. **Beware of hidden file extensions!** Windows by default hides the last extension of a file, so that innocuous-looking "susie.jpg" might really be "susie.jpg.exe" - an executable trojan! To reduce the chances of being tricked, [unhide those pesky extensions](trojanext.html).
  4. **NEVER use features in your programs that automatically get or preview files.** Those features may seem convenient, but they let anybody send you anything which is extremely reckless. For example, never turn on "auto DCC get" in mIRC, instead ALWAYS screen every single file you get manually. Likewise, disable the preview mode in Outlook and other email programs.
  5. **Never blindly type commands that others tell you to type, or go to web addresses mentioned by strangers, or run pre-fabricated programs or scripts** (not even popular ones). If you do so, you are potentially trusting a stranger with control over your computer, which can lead to trojan infection or other serious harm.
  6. **Don't be lulled into a false sense of security just because you run anti-virus programs**. Those do **not** protect perfectly against many viruses and trojans, even when fully up to date. Anti-virus programs should not be your front line of security, but instead they serve as a backup in case something sneaks onto your computer.
  7. Finally, don't download an executable program just to "check it out" - if it's a trojan, the first time you run it, you're already infected!

## IV. How do I get rid of trojans?!?

Here are your many options, none of them are perfect. I strongly suggest you
read through all of them before rushing out and trying to run some program
blindly. Remember - that's how you got in this trouble in the first place.
Good luck!

### To repair or to reformat?

The decision whether to attempt to repair an infected computer or reformat and do a clean reinstallation is a difficult one.
On one hand, no antimalware software will ever be able to provide 100% assurance that all malware has been removed. On the other hand, most infections are from the same couple of hundred actively circulating trojans, that are well understood and reliably removed by the appropriate removal tool, and a clean reformat and reinstall with take anywhere from several hours to several days.

As a practical matter, it's worth trying to repair infected computers first. Most of the time, you can completely get rid of the infection quickly and easily. If an infection persistantly returns, it's likely that it wasn't completely removed in the first place, at which point stronger measures should be considered.

### Getting Help

There are several resources for one-on-one assistance with malware issues, including trojan horses. If you aren't sure what to do, you can try one of the following:

  * **IRC Help Channels**: If you're the type that needs some hand-holding, you can find trojan/virus removal help on IRC itself, such as EFnet #dmsetup. These experts will try to figure out which trojan(s) you have and offer you advice on how to fix it. The previous directions were in fact adapted from advice given by EFnet #dmsetup. (See our [networks page](/networks) if you need help connecting to those networks.)
  * **Your antimalware vendor**: If you are paying for security software, you may be entitled to support from the vendor.
  * **Your PC manufacturer**: If you are under a support agreement, or some warranties, your PC manufacturer may provide malware removal assistance.
  * **Professional Repair Services**: A professional PC repair service can be contracted locally for assistance with removing viruses or trojans.


### Repairing the Damage


  1. **Anti-Virus Software**: _Some_ of these can handle _most_ of the well known trojans, but _none_ are perfect, no matter what their advertising claims. You absolutely MUST make sure you have the very latest update files for your programs, or else they will miss the latest trojans. Compared to traditional viruses, today's trojans evolve much quicker and come in many seemingly innocuous forms, so anti-virus software is always going to be playing catch up. Also, if they fail to find every trojan, anti-virus software can give you a false sense of security, such that you go about your business not realizing that you are still dangerously compromised. There are many products to choose from, but the following are generally effective: [AVP](http://www.kaspersky.com/products.html), [PC-cillin](http://www.antivirus.com/pc-cillin/), and [McAfee VirusScan](http://www.mcafee.com/). All are available for immediate downloading typically with a 30 day free trial. For a more complete review of all major anti-virus programs, including specific configuration suggestions for each, see the HackFix Project's [anti-virus software page](http://www.hackfix.org/software/antivirus.html) [all are ext. links]. When you are done, make sure you've updated Windows with all [security patches](http://windowsupdate.microsoft.com) [ext. link].
  2. **Anti-Trojan Programs**: These programs are the most effective against trojan horse attacks, because they specialize in trojans instead of general viruses. A popular choice is [The Cleaner](http://www.moosoft.com/), $30 commercial software with a 30 day free trial. To use it effectively
  When you are done, make sure you've updated Windows with all [security patches](http://windowsupdate.microsoft.com) [ext. link], then change all your passwords because they may have been seen by every "hacker" in the world.

#### Using The Cleaner effectively

The Cleaner is specifically designed for trojans, and should be used as a supplement rather than a replacement for other antimalware software.

Follow these instructions carefully, if you skip a step, your system may still be infected.

1. Download the program The Cleaner 2012 from http://www.moosoft.com/ or ftp.moosoft.com  in  /pub and remember where you save it to.
2. Run cleaner8_setup.exe to install the program.
3. Run The Cleaner by clicking on the desktop icon created.
4. Press the Update tab then the Check for Updates button.
5. Close The Cleaner and reboot your computer into Safe Mode -- If you do not know how to boot into Safe Mode, instructions are at http://support.microsoft.com/kb/315222
6. Unplug your modem during the scan and leave it unplugged until instructed otherwise.
7. When your computer reboots, start The Cleaner AS STEP 3, select Scan, then select Full Scan and Use Heuristics and then select Start then select all your drives and then select Ok.
8. When you are finished with the above, reboot again, plug your modem back in, and update your Windows at http://windowsupdate.microsoft.com
9. Change ALL your passwords, and review your accounts for suspicious access. Trojan horses will usually capture sensitive information, including any passwords that were saved on or typed into the computer during the time it was infected.
10. Finally, review outstanding authorizations on sites you use - changing your password alone isn't enough to lock someone out of GMail, Twitter, Hotmail, Facebook, and many other services that issue authorization tokens to third party applications. See below for specific advice for common services.

#### Instructions for securing access to online services

* [GMail - Account Security Checklist](http://support.google.com/mail/bin/static.py?hl=en&page=checklist.cs&tab=29488)
* [Facebook - What can I do to keep my account secure?](https://www.facebook.com/help/213481848684090/)



### Clean Re-installation
 When all else fails, or when any risk of continued infection is unacceptable, the only option left is a clean re-installation. Although arduous, this will always be the only sure way to eradicate a trojan or virus.

 A clean re-installation will take anywhere from several hours to several days to fully complete, depending on your system configuration, operating system, amount of data to be recovered, and many other factors. This will require some degree of technical competency, and you will need to have your original operating system or recovery media, as well as original media for any application software, as well as any license keys ready before you begin.

 Extreme caution must be taken in backing up and restoring data to make sure that the infection is not reintroduced when data is restored.

 A professional PC repair shop can be contracted locally to perform a clean reinstallation, should you not feel capable of doing so yourself.


 1. Back up your entire hard disk.
 2. Reformat the disk.
 3. Re-install the operating system and all your applications from original CDs
 4. Install security software and configure it according to manufacturer's recommendations.
 5. Install all operating system updates. (Setting updates to automatically install here is a good idea too.)
 6. Install all updates to your application software.
 7. Make sure system is clean up to this point by scanning the system.
 8. At this point, you may wish to make an image of your system in a pristine state, before restoring anything from backup. You can use this image at a later time to speed up a clean reinstallation by only needing to download updates.
 9. Treat the contents of the backup as infected, and handle accordingly during the restore process. Scan everything you decide to restore, and restore only your user files, and not configuration files for programs, registry settings, or applications.

This will take several hours, and require some degree of technical competancy. If you are not up to the task a professional repair shop can be paid to perform these steps.





## Appendices:

These files were referred to in the text above, and provide additional
information.

  * [IRChelp.org Security Page](index.html)
  * [Hacker / Cracker / Trojan / Virus? - A Primer on Terminology](trojanterms.html)
  * [How to unhide Windows file extensions](trojanext.html)

* * *

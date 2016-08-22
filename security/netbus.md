---
title: netbus
author: internet security systems
layout: default
---

# NetBus Backdoor Attack

**Webmaster's Note:** The following is an advisory issued by [Internet Security Systems, Inc.](http://www.iss.net/xforce/), a commercial company which makes security software. I took the liberty of deleting 2 URLs for downloading the attacks themselves, to minimize our role in facilitating new attacks. I also replaced the 2 broken links providing fix information for NetBus with an alternative, trustworthy source. For a more detailed, illustrated guide to the Back Orifice backdoor mentioned in this article, please also see our own guide at [http://www.irchelp.org/irchelp/security/bo.html](http://www.irchelp.org/irchelp/security/bo.html) -Jolo



    * * *

    ISS Vulnerability Alert
    September 10, 1998


    Windows Backdoors Update

    Synopsis:

    This advisory is an update of our cDc Back Orifice advisory, which was
    released August 6, 1998.

    The following information is new to this advisory:
    * Information about the NetBus backdoor that works on Windows 95/98 and NT.
    * A backdoor in NetBus and how to remove the program.
    * Dramatic increase in backdoor compromises since the release of Back Orifice.
    * New enhancements to Back Orifice that help hackers, and availability of
      additional tools to detect and remove Back Orifice.
    * The BoSniffer trojan horse.

    A hacker group known as the Cult of the Dead Cow has released a Windows
    95/98 backdoor named 'Back Orifice' (BO).  Once installed, this backdoor
    allows unauthorized users to execute privileged operations on the affected
    machine.

    Back Orifice leaves evidence of its existence and can be detected and
    removed.  Internet Security Systems (ISS) RealSecure 2.5 will detect and
    notifyyou of any Back Orifice activity on your network, regardless of the port
    it's using.

    There is also a program available on the Internet called NetBus, with
    functionality similar to BO, and in some ways more advanced than BO.
    NetBus has been available, but its widespread use as a hacking tool has not
    occurred until recently. Unlike BO, NetBus will run on Windows 95/98 and NT.

    Since the release of Back Orifice, ISS X-Force has noticed an increase of
    machines that have been compromised. Over the past few weeks, there have
    been many machines announcing that they are compromised in the #bo_owned channel
    on the Efnet IRC network. ISS X-Force has received over fifty e-mails asking
    for help because machines have been compromised with BO or NetBus.

    Description:

    A backdoor is a program that is designed to hide itself inside a target
    host. It allows the installing user access to the system at a later
    time without using normal authorization or vulnerability exploitation.

    Functionality:

    The BO program is a backdoor designed for Windows 95/98. Once installed, it
    allows anyone who knows the listening port number and BO password to
    remotely control the host.  Intruders access the BO server using either a
    text or graphics based client.  The BO server allows intruders to execute
    commands, list files, start silent services, share directories, upload and
    download files, manipulate the registry, kill processes, list processes, as
    well as other options.

    NetBus, available at [url deleted], allows the remote user to do most of
    the functions BO can do, as well as open/close the CD-ROM drive, send
    interactive dialogs to chat with the compromised system,listen to the
    system's microphone (if it has one), and a few other features.  The web
    page listed above has information about all of NetBus's capabilities.
    The page also contains instructions for removing NetBus from your
    system.


    Determining if BO has been installed on your machine:

    The BO server will do several things as it installs itself on a target
    host:

    * Install a copy of the BO server in the system directory
    (c:\windows\system) either as " .exe" or a user specified file name.

    * Create a registry key under
    HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices
    with the file name of the server file name and a description field of
    either "(Default)" or a user specified description.

    * The server will begin listening on UDP port 31337, or a UDP port
    specified by the installer.  You can configure RealSecure to monitor for
    network traffic on the default UDP 31337 port for possible warning signs.


    To determine if you are vulnerable:

    1. Start the regedit program (c:\windows\regedit.exe).
    2. Access the key
    HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices.
    Look for any files that may not have been intentionally installed on the
    machine.  If the length of one of these files is close to 124,928 (give or
    take 30 bytes) then it is probably Back Orifice.

    You can also use the netstat program that comes with Windows to check if the
    system is vulnerable. 'netstat -an' will list all connected and
    listening ports, so you can see if there are any open UDP ports that
    shouldn't be open, and take corrective action. Here is some sample output
    from netstat:

    C:\WINDOWS>netstat -an | find "UDP"
      UDP    0.0.0.0:31337          *:*

    In this example, you can see a UDP service listening on port 31337. This
    service is Back Orifice. It doesn't have to be on port 31337, so if you see
    anything else that looks suspicious, check your registry.

    More information about BO can be obtained from the cDc web page at
    [url deleted]. More information about detection and removal
    of BO can be found at [http://www.nwi.net/~pchelp/bo.html](http://www.nwi.net/%7Epchelp/bo.html).


    Determining if NetBus has been installed on your machine:

    NetBus uses TCP for communication, and always uses ports 12345 and 12346
    for listening for connections. netstat will tell you if NetBus is installed
    if you issue the command 'netstat -an | find "12345"'. Then, start the
    windows 'telnet' program and connect to 'localhost' at port 12345. If NetBus
    is installed, a string similar to 'NetBus 1.53' or 'NetBus 1.60 x' will
    be displayed when you connect.

    NetBus's protocol is not encrypted and the commands have a simple format:
    the name of the command, followed by a semicolon, followed by the arguments
    separated by semicolons. It is possible to set a password on the NetBus
    server, and the password is stored in the registry as plaintext at
    HKEY_CURRENT_USER\Patch\Settings\ServerPwd. X-Force has discovered
    that there is a backdoor in NetBus that will allow anyone to connect
    with no password. When the client sends the password to the server, it sends
    a string similar to 'Password;0;my_password'. If the client uses a 1 instead
    of a 0, you will be authenticated with any password.

    By default, the NetBus server is called 'Patch.exe', but it can be renamed.

    Recommended action:

    BO can be removed by deleting the server and removing its registry entry.
    If possible, you should back up all user data, format your hard drive, and
    reinstall all operating systems and software on the infected machine.
    However, if someone has installed BO on your machine, then it is most likely
    part of a larger security breach.  You should act according to your site
    security policy.

    There are two ways to remove NetBus, depending on what version you
    use:

    - - For versions 1.5x, the instructions to remove NetBus are located at
      [http://split.netset.com/netbusfix/fix-1.5.shtml](http://split.netset.com/netbusfix/fix-1.5.shtml).

    - - For version 1.6, the removal
      instructions are at [http://split.netset.com/netbusfix/fix-1.6.shtml](http://split.netset.com/netbusfix/fix-1.6.shtml).
      You can [also] remove any installation of NetBus 1.6 by telneting to the
      machine at port 12345, typing 'Password;1;', pressing enter, typing
      'RemoveServer;1', and pressing enter. You will be disconnected, NetBus
      will be disabled and will longer run at startup. You will have to
      delete Patch.exe from you Windows directory if you want to completely remove
      NetBus. This procedure works even if there is a password set, however it
      doesn't work with the 1.5x versions.

    - - For version 1.7, the instructions to remove NetBus are located at
      [http://split.netset.com/netbusfix/fix-1.7.shtml](http://split.netset.com/netbusfix/fix-1.7.shtml).

    Determining the password and configuration of an installed BO:

    1. Using a text editor such as notepad, view the server exe file.
    2. If the last line of the file is '88$8(8,8084888<8@8D8H8L8P8T8X8\8'8d8h8l8',
    then the server is using the default configuration.  Otherwise, the
    configuration will be present on the last several lines of this file, in
    this order:

    <filename>
    <service description>
    <port number>
    <password>
    <optional plugin information>

    Back Orifice plugins:

    There are several plugin applications for BO, called 'BUTTplugs' by cDc,
    which are used to enhance the functionality of BO. Currently there are
    four plugins available on the cDc page
    (http://www.cultdeadcow.com/tools/bo_plugins.html). These plugins will
    e-mail the attacker when someone installs their copy of BO, or access
    Internet Relay Chat (IRC) to join a channel and notify them that
    BO is installed. There is also a plugin used to embed BO into any program
    you wish, which makes it easier to fool a user into running it. The
    currently available plugins are:

      Speakeasy - An IRC plugin that secretly logs into a predefined server
      and broadcasts the host's IP address

      Silk Rope - Binds Back Orifice to almost any existing program.

      Saran Wrap - Hides Back Orifice in an existing standard "InstallShield"
      installer program

      Butt Trumpet - Sends the attacker an email with the host's IP address,
      after BO is installed

    Trojaned BO detector program:

    There is a program called BoSniffer that is distributed on the Internet
    and claims to detect and remove BO from your system.  This is actually
    Back Orifice, and you should not use this program. Be wary of any fixes
    for BO from untrusted sources. This fix has been distributed with the
    filenames bosniffer.exe and bosniffer.zip.


    Conclusion:

    Back Orifice provides an easy method for intruders to install a backdoor on
    a compromised machine.  Back Orifice's authentication and encryption is
    weak, therefore an administrator can determine what activities and
    information is being sent via BO.  Back Orifice can be detected and
    removed.  This backdoor only works on Windows 95 and Windows 98 for now
    and not currently on Windows NT.

    NetBus provides an richer feature set than BO, works on Windows NT, but is
    easier to detect than BO since it will always use TCP port 12345 and
    provides a banner with the NetBus version when you connect via telnet.

    - ----------

    Copyright (c) 1998 by Internet Security Systems, Inc.

    Permission is hereby granted for the redistribution of this alert
    electronically.  It is not to be edited in any way without express consent
    of X-Force.  If you wish to reprint the whole or any part of this alert in
    any other medium excluding electronic medium, please e-mail xforce@iss.net
    for permission.

    Disclaimer
    The information within this paper may change without notice. Use of this
    information constitutes acceptance for use in an AS IS condition. There are
    NO warranties with regard to this information. In no event shall the author
    be liable for any damages whatsoever arising out of or in connection with
    the use or spread of this information. Any use of this information is at
    the user's own risk.

    X-Force PGP Key available at:   [http://www.iss.net/xforce/sensitive.html](http://www.iss.net/xforce/sensitive.html) as
    well as on MIT's PGP key server and PGP.com's key server.

    X-Force Vulnerability and Threat Database: [http://www.iss.net/xforce](http://www.iss.net/xforce)

    Please send suggestions, updates, and comments to:
    X-Force <xforce@iss.net> of Internet Security Systems, Inc.



* * *



##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.

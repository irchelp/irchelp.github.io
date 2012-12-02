[ This is an emergency mirror of the [original
page](http://kb.deerfield.com/search/viewarticle.cfm?a=1014) at Wingate's home
page. ]

**Article Number: 1014**

> **Title:**

> How to configure mIRC to connect through WinGate

>

> **Author:**

> WinGate Technical Support

>

> **Last Modified:**

> 1998-12-30

>

> **Product(s):**

> WinGate 2.1

>

> **Issue Type:**

> How-To

>

> **Platform:**

> Win95/98,WinNT

>

> * These instructions are for WinGate 1.x and 2.x versions. If you have
WinGate 3.0 your applications need to be configured per your ISP's
instructions, as if they were directly connected to the Internet.

>

> WinGate does not include an IRC proxy. For a general Internet Chat
application to work through WinGate, WinGate requires a mapped link to your
IRC server. The standard port for IRC connections is 6667, and this link will
be installed when you install WinGate. Some IRC Chat applications will use the
SOCKS proxy of WinGate for firewall access, by default WinGate installs a
SOCKS proxy on port 1080.

>

> mIRC

>

> Requires:

>

> SOCKS4 proxy, no specific port number (default port is 1080.)

>

> 1. In mIRC, click on the **File** menu

>

> 2. Select **Setup**

>

> 3. Select the **Firewall** tab

>

> 4. Enable the **Use SOCKS firewall** option

>

> 5. Under **Hostname** enter WinGate, or the name of the WinGate machine

>

> 6. Check that the port number is where the WinGate SOCKS proxy is configured
to accept connections on (usually 1080)

>

> 7. The **User ID** and **Password** fields are redundant and do not require
entries

>

> 8. Under the **Identd** tab, check that the **Identd** server option is
disabled

>

> 9. Under the **Local Info** tab, you must enter the IP Address that was
assigned to your machine (suggested as being in the 192.168.0 subnet) when it
was configured to connect to your TCP/IP LAN. The Local Host name will also
have been assigned to your machine and must be entered. mIRC will not be able
to detect these fields as WinGate does not support reverse look-ups

>

> 10. Under **Local Info**, the **On connect, always get:** options are not
fully understood. It is trial and error as to which of the two options should
be enabled to make the application work. Both the **Normal** and **Quick** IP
method options seem to work

>

> 11. The rest of the mIRC set up does not relate to WinGate

>

> **Keywords:** chat mIRC Internet Relay Chat

>

> [WinGate Home Page](http://www.wingate.net) | [WinGate
Support](http://www.wingate.net/support.htm) | [WinGate Help
Desk](http://www.wingate.net/help.htm)

&nbsp_place_holder;


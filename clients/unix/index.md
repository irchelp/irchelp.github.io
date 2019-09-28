---
title: Unix/Linux IRC Clients
author: irchelp.org staff
layout: default
redirect_from:
  - /unix/
  - /linux/
  - /irchelp/clients/unix/
---

# Unix/Linux IRC Clients

## Terminal

The first clients and servers for IRC were written as portable C code, which could be compiled and run on a variety of Unix derivatives, including many of the systems common in academic research at the time. The original IRC client, which was once distributed in the same package with IRCNet's IRCD, is now obsolete, but many other clients have improved upon its design.

### irssi
[irssi](/irchelp/clients/unix/irssi.html) has taken ircII's place as the modern gold standard for IRC clients, with a sensible, familiar interface, sane defaults, a modern featureset, and of course, an embedded perl interpeter as its scripting interface.

### ircII and derivatives
For years, the standard by which all other clients were measured, [ircII](/irchelp/clients/unix/ircii/) and its derivatives remain a solid choice. ircII and its closest descendant,
[EPIC](/clients/unix/epic.html), are still actively maintained, but maintain faithfulness with the original "blank canvas" of ircII&#8211;they are typically highly customized by each user, either by hand, or via a script pack.

[BitchX](/clients/unix/bitchx.html) and [ScrollZ](/clients/unix/scrollz.html) take a different approach: both having started originally as script packs, they eventually applied their modifications directly to the client itself, creating a derivative of ircII with more bells and whistles than any user could possibly need.

### WeeChat
[WeeChat](/clients/unix/weechat.html) is a relative newcomer to the terminal-oriented client scene, but still compares favorably to the others. It's comparable in features to irssi, but, uniquely, also functions as a Jabber client.

### ERC (emacs IRC client)

Everyone's favorite kitchen sink has a built in IRC client, [ERC](/clients/unix/erc.html), which is fully functional, extensible in the Lisp language so fondly loved by emacs users, and sadly, relevant to almost no-one else. If your text editor is also your operating system, it might be a great first choice for you, otherwise, consider sticking with the more mainstream clients.


## X11 (Graphical)

### XChat and HexChat
XChat is easily the most popular of the X11 clients - it's lightweight, scriptable in multiple languages, and has sensible defaults. HexChat originally sprung out of the controversy surrounding the decision of XChat's primary developer to charge for Windows builds of the software, the source of which is free software covered under GPL. Originally an unofficial Windows port stemming from the XChat on Windows shareware controversy, HexChat became a fork in its own right, and is now offered on Unix/Linux systems as well as Windows. HexChat has become the more actively developed of the two, with frequent releases and new features.


### Konversation
Konversation is the default choice out of the two IRC clients shipped with the KDE desktop.


### ChatZilla

Using the same framework that powers Firefox and SeaMonkey as it's runtime, ChatZilla is portable to any operating system where Firefox or SeaMonkey can run. It provides a very clean, modern interface, and can be customized extensively with CSS and JavaScript.

ChatZilla is the best choice for those that want a consistent graphical experience between multiple different desktop environments and operating systems. It's also a great option for anyone who needs to get a fully functional client up and running quickly on systems with Firefox installed, as it's readily available as an extension from the Mozilla Addons site.

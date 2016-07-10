---
title: HexChat
author: Stephanie Daugherty
layout: default
---

# HexChat
[HexChat](https://hexchat.github.io) originally sprung out of the XChat for Windows shareware controversy, starting as the unofficial Windows port XChat-WDK, which was renamed HexChat and became a fork in its own right.

HexChat is now offered on Unix/Linux systems as well as Windows. HexChat has become more actively developed than XChat while maintaining close compatibility, with frequent releases and new features.

Scripts written for XChat are generally compatible with minor modifications, while binary plugins generally must be recompiled specifically for HexChat.

## Scripting and Plugins
HexChat has the same binary plugin architecture as XChat, and these plugins are used to load interpreters for a number of common scripting languages into the client. Modules are provided for JavaScript, Lua, Perl, and Python.  A plugin for Tcl support was formerly available but no longer maintained. There is also a D-bus plugin which makes it possible to develop external programs that can control the client.

The Perl and Python integrations require that the appropriate interpreter be installed - typically, Windows users will find that they need to install it, and Unix/Linux users will already have it available. These dependencies are listed on the HexChat [download page](https://hexchat.github.io/downloads.html).

There is [extensive documentation](https://hexchat.readthedocs.io/en/latest/developers.html#scripting) for the various scripting interfaces.

## Support Channels

We at #irchelp provide general support for IRC, and we use many different clients, so our knowledge of specific clients varies.

If you need more in-depth support, particularly for scripting, there are a number of channels specific to HexChat:

* #hexchat on [freenode](/irchelp/networks/freenode.html) - official development and support channel

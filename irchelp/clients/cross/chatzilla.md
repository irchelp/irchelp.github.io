---
title: Chatzilla
author: Stephanie Daugherty
summary: ChatZilla cross-platform IRC client.
layout: default
---

# ChatZilla

[ChatZilla](http://chatzilla.hacksrus.com) is a cross-platform IRC client, usable as [a standalone program](http://chatzilla.rdmsoft.com/xulrunner/), available as a built-in component of [SeaMonkey](http://www.seamonkey-project.org/), and as [an extension for Firefox](https://addons.mozilla.org/en-US/firefox/addon/chatzilla/).

ChatZilla is a full-featured IRC client, well suited to users who are intimately familiar with the workings of IRC, very consistant across a wide range of platforms and execution enviroments. Being built on the same core as Mozilla's popular Firefox browser, ChatZilla is largely written and extensible with modern web technologies, namely JavaScript and CSS, which lends itself to extensive themeability and a rich experience that can go beyond the textual medium of IRC.

ChatZilla has a very dedicated core following of Mozilla developers and community members. Due to this, it has has features that cater to an audience of developers, including detecting and linkifying references to bug reports, and naturally, those features come preconfigured to work with Mozilla's development toolchain.

Although ChatZilla is a full-featured client, it primarily serves several "niche" audiences. Casual IRC users who have reached past the limits of webchat and/or instant messaging programs may find it to be a readily accessible and lightweight alternative to the mainstream, platform-specific GUI clients, so long as they have Firefox or SeaMonkey installed. Users who frequently switch between various operatihg systems, or who work with more obscure operating systems may also find ChatZilla to be an ideal choice. Finally, Mozilla developers and community members will of course be right at home, with a client highly customized for their needs.

ChatZilla benefits highly from the portability of the underlying Gecko platform, and from Mozilla's considerable commitment to localization, being usable across a number of platforms and in a number of languages, including right-to-left(RTL) languages. The UTF-8 character set is used by default, but ChatZilla has the same range of character set support as the Firefox browser and SeaMonkey suite.

## Key Features

 * Graphical client
 * Full scripting API via JavaScript
 * Tab completion for replies, nicknames, channels, and commands.
 * Themeable via CSS
 * Lightweight when run as part of Firefox or SeaMonkey (under 400KB installed size as of December 2012)
 * Provides a built-in ident daemon when running on Windows for connecting to servers that require identd.
 * "Stalk list" provides keyword highlighting or highlighting whenever a given user speaks.
 * Available in a number of languages, and with support for right to left (RTL) languages.
 * Open Source, available under Mozilla Public License 1.1
 * UTF-8 clean, with configurable support for other character sets per network, channel, and tab.
 * Built-in spellchecker.

## Quirks
 * The automatic linkification of bug reports (linking bug #12345 to the corresponding URL) is highly specific to developers, and not necessary for most users - this can be customized or disabled as a global setting, by network, or by channel.
 * Tabs are listed strictly in the order they are opened, and not grouped by network.
 * Conference mode automatically hides joins, parts, nickname changes, and quits for very large channels (by default, channels with over 150 users) - this can also be customized or disabled as a global setting, by network, or by channel.
 * The automatic rendering of text emoticons into graphic emoticons occasionally transforms text that wasn't intended as an emoticon.

## Getting ChatZilla

### As an extension for Firefox

* [Download and install](https://addons.mozilla.org/en-US/firefox/addon/chatzilla/) the extension from within Firefox.
* Restart Firefox when prompted.
* Access ChatZilla from the Tools menu.

### As part of SeaMonkey

ChatZilla is included by default in builds of the SeaMonkey application suite. SeaMonkey can be readily downloaded for Windows, Linux, and MacOSX, and unofficial ports exist for a vast number of other platforms including many that are considered relatively obscure, such as OpenVMS, OS/2 and Haiku. If ChatZilla was ommited during the installation, or has been uninstalled, it can be redownloaded as an addon through the Mozilla Addons site in the same way as for Firefox.

### As a standalone application

It's possible to run a standalone version of [ChatZilla using XULRunner](http://chatzilla.rdmsoft.com/xulrunner/).
There's a Windows installer offered, other platforms will have to build XULRunner
first.

## Resources
* [ChatZilla FAQ](http://chatzilla.hacksrus.com/faq/)
* [ChatZilla on XULRunner](http://chatzilla.rdmsoft.com/xulrunner/)
* [James Ross' Chatzilla Page](http://james-ross.co.uk/mozilla/chatzilla/links)
* [ChatZilla on Mozilla Addons](https://addons.mozilla.org/en-US/firefox/addon/chatzilla/)
* [Wikipedia entry for ChatZilla](http://en.wikipedia.org/wiki/ChatZilla)

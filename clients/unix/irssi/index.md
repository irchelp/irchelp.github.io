---
title: irssi
author: Stephanie Daugherty
summary: Information about irssi
license: CC-BY-SA-4
redirect_from:
  - /irchelp/clients/unix/irssi.html
  - /irssi/
  - /irchelp/clients/unix/irssi/
---

# irssi

[irssi](http://www.irssi.org) is a mature, full-featured terminal-based IRC client for Unix/Linux systems.

## Key Features

 * Extensible with scripts written in [Perl](www.perl.org)
 * Fully configurable keybindings, formats, and themes.
 * irssi-proxy (client can be used as a bouncer for another client)

## First-time Configuration

irssi works well out of the box for most users, and the defaults are generally unobtrusive to other users. Power users may find the number of window selection keybindings inadequate, but beyond that, little or no configuration is  needed.

## Tutorials

* [Starting irssi automatically on boot](/clients/unix/irssi/irssiatboot.html) - explains how to use cron to automatically restart irssi under a screen at startup.
* [A Guide to Efficiently Using Irssi and Screen](http://quadpoint.org/articles/irssi/) (ext. link) - covers the basics of using irssi and using screen.
* [An Illustrated Guide to Split Windows in Irssi](http://quadpoint.org/articles/irssisplit/) (ext. link) - in depth tutorial on irssi's split window mode.

## Scripting

irssi can be extended by scripts written in Perl. Documentation for the script API [can be found on the irssi website](http://www.irssi.org/documentation/perl).

### Finding scripts for irssi
* [irssi script archive](http://scripts.irssi.org) - the developers of irssi
 maintain a public archive of freely licensed scripts contributed to the project. You won't find much in the way of massive script packs (irssi really does not need them), but you will find lots of small, self contained scripts for any of a number of tasks.

## Themes

irssi supports theming to customize the appearance and color scheme of the client. Themes are stored in toe client directory (`~/.irssi/`) and loaded with the command `/SET theme theme_name`

A small collection of themes can be found [on the irssi website](http://www.irssi.org/themes).

## Frequently Asked Questions

**How do I close query windows?**

Type `/window close`

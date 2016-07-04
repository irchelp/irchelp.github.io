---
title: www.irchelp.org content guidelines and authoring information.
author: Stephanie Daugherty
---

# Authoring Documents for www.irchelp.org
*This is an early draft of this guide, documenting the new way we're going to maintain www.irvhelp.org. Suggestions are welcomed. Unless otherwise noted, this really isn't set in stone yet, so now is the time to give your input!*
* * *

## Introduction

This site is run by a group of volunteers primarily consisting of the ops from the #irchelp channel on EFNet. We welcome contributions to the site, but have a number of guidelines which you should
follow so that your content can be easily included into the site.


## Site Migration Information

The latest migration news and information can be found [here](migration.html).


## Technical Information

As of 2012, all content on the site is maintained as Markdown files with a short YAML header containing metadata. [Markdown](en.wikipedia.org/wiki/Markdown) is a simple way of adding formatting to text files, very similar to wiki markup.

   The files are kept in a [Git](http://git-scm.org) repository, and automatically generated using [PieCrust](http://bolt80.com/piecrust/).

The Git repository is very important to this process - it's the part that will allow multiple editors access to update the site, without risk of stepping on each other's toes, and which will allow us to easily roll back unwanted changes.

### Document Header
The document header is written in YAML, and delimited with three dashes. It is a simple list of name: value pairs that describe each document. These headers will be used in templates.

A sample header follows:

	---
	title: Document title
	author: random-irchelper
	datecreated: 1 September 1993
	dateupdated: 30 November 2012
	status: (this is optional, but I'm going to add hooks that put a warning message about depreciated content if the status is "historical")
	summary:	>
		This is a long summary with multiple lines.
		Each line is indented in the same way. When the indentation stops, so does the summary.
	---

Note the --- at the beginning and end of the header. This seperates the header from the content, and is required for PieCrust to recognize this as a header. The header is **not** Markdown formatted, so most other Markdown parsers will not format it.


## Useful tools

Several programs are useful to irchelp.org authors.

  * [retext](http://sourceforge.net/p/retext/home/ReText/) is a graphical editor with live preview for Linux systems (available in the Ubuntu repositories as *retext*).
  * [PieCrust](http://bolt80.com/piecrust/) is useful to be able to test the automatic build process, but not required for authors.
  * [Git](http://git-scm.com/) is necessary to read/write the repository which stores the source to the website. Clients are available there for virtually all operating systems, not just Linux :)





## Content Guidelines
  * We are not a software hosting site. No executables or archive files will be hosted - links should be provided to landing pages for stable and canonical download locations for any software mentioned on the site.
  * We are aiming to be as network-agnostic as possible. In the past, IRCHelp.org was EFNet and IRCNet centric, we are in the process of changing that.

## Legal Requirements

Going forward, in order to protect ourselves from any legal trouble and avoid having to scramble to remove articles, we need to have clear rights to use all content on irchelp.org. This can take one of two forms - the content may be generally licensed under terms that permit anyone to use it - public domain or an acceptable free documentation license, or the content may be provided to irchelp.org under a release that grants us a non-revocable right to publish it.

  * Content must either be your own work, or under an acceptable free documentation license, or we can't host it.
  * For content you have created yourself, we ask that you either release it under one of our acceptable licenses, listed below, or provide a release giving us a non-exclusive, royalty-free, perpetual right to publish your content on our website.

### Acceptable Licenses
  * CC-BY
  * CC-BY-SA
  * GFDL
  * Public Domain
  * Others?

* * *

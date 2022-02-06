---
title: www.irchelp.org content guidelines and authoring information.
author: Stephanie Daugherty
dateupdated: 28 June 2020 
layout: default
license: cc-by-sa-4
---

# Authoring Documents for www.irchelp.org
*This is an early draft of this guide, documenting the new way we're going to maintain www.irchelp.org. Suggestions are welcomed. Unless otherwise noted, this really isn't set in stone yet, so now is the time to give your input!*
* * *

## Introduction

This site is run by a group of volunteers primarily consisting of the ops from the #irchelp channels on EFNet and Libera.Chat. We welcome contributions to the site, but have a number of guidelines which you should
follow so that your content can be easily included into the site.


## Technical Information

As of 2012, all content on the site is maintained as Markdown files with a short YAML header containing metadata. 
[Markdown](https://en.wikipedia.org/wiki/Markdown) is a simple way of adding formatting to text files, very similar to wiki markup.

   The files are kept in a [Git](http://git-scm.org) repository on [GitHub](https://www.github.com), and automatically generated using [Jekyll](https://jekyllrb.com/).

Our public git repository is located at <https://github.com/irchelp/irchelp.github.io>

The Git repository is very important to this process - it's the part that will allow multiple editors access to update the site, without risk of stepping on each other's toes, and which will allow us to easily roll back unwanted changes.

### Document Header
The document header (YAML Front Matter) is written in YAML, and delimited with three dashes. It is a simple list of name: value pairs that describe each document. These headers will be used in templates.

A sample header follows:

	---
	title: Document title
	author: random-irchelper
	datecreated: 1 September 1993
	dateupdated: 30 November 2012
	status: (this is optional, but I'm going to add hooks that put a warning message about depreciated content if the status is "historical")
	layout: default
	license: (see below under legal requirements)
	summary:	>
		This is a long summary with multiple lines. This is also optional.
		Each line is indented in the same way. When the indentation stops, so does the summary.
	---

Note the --- at the beginning and end of the header. This seperates the header from the content, and is required for Jekyll to recognize this as a header. The header is **not** Markdown formatted, so most other Markdown parsers will not format it.

Everything but the title: and layout: values are technically optional, but documents must have the YAML Front Matter prepended to them for Jekyll to recognize them as files it should process.

## Useful tools

Several programs are useful to irchelp.org authors.

  * [retext](https://github.com/retext-project/retext) is a graphical editor with live preview for Linux systems (available in the Ubuntu repositories as *retext*).
  * [Atom](https://atom.io/) is a powerful GUI text editor for many platforms, including Windows, Mac, and Linux, with syntax highlighting and a number of plugins such as [Markdown Preview Plus](https://atom.io/packages/markdown-preview-plus) available to make working with Markdown easier for authors.
  * [Jekyll](https://jekyllrb.com) is used to process the Markdown files into finished HTML documents. You don't need this to author documents, but it's useful if you want to preview them exactly as they will look on the actual website.
  * [GitHub Desktop](https://desktop.github.com) is available for Windows and Mac, and provides an easy to use interface to our Git repository on Github. The standard commandline git client is also bundled along with a suite of basic Unix text handling utilities.
  * [TortoiseGit](https://tortoisegit.org/) integrates Git functionality into Windows Explorer, making it easy to see the status of your files and making Git functions available on right click menus.
  * [Git](http://git-scm.com/) is necessary to read/write the repository which stores the source to the website. Clients are available there for virtually all operating systems, not just Linux :)

This list is by no means comprehensive, but it's a good starting point for authors looking for tools.


## Content Guidelines
  * We are not a software hosting site. No executables or archive files will be hosted - links should be provided to landing pages for stable and canonical download locations for any software mentioned on the site.
  * We are aiming to be as network-agnostic as possible. In the past, IRCHelp.org was EFNet and IRCNet centric, we are in the process of changing that.
  * We do not, and will not ever advertise. We are not a promotional site, and we aim to be fair and objective in our treatment of IRC Clients, other software, and IRC Networks.

## Legal Requirements

Most of our current content was either authored by IRCHelp channel ops specifically for irchelp.org and made available on an "all rights reserved" basis, or used by permission, and we do not have the rights to relicense it.

Going forward, in the interests of license clarity, as well as to protect ourselves from any legal trouble and avoid having to scramble to remove articles, we need to have clear rights to use all content on irchelp.org.

There are two options for this:
 - the first, and preferred way is for content to be licensed under terms that permit anyone to use it - public domain or an acceptable free documentation license
 - Alternatively, the content may be provided to irchelp.org under a release that grants us a non-revocable right to publish it.

The preferred license for new irchelp.org content is the [Creative Commons
Attribution-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/)
(CC-B4-SA) license. This license requires that the license be preserved intact
when reusing or republishing content, and that content must be attributed back
to original authors.

In any case, content must either be your own work, so that you have a clear right to license it, or it must already be under an appropriate free documentation license.

### Preferred Licenses
  * CC-BY-SA
  * CC-BY
  * GFDL with no invariant sections
  * Public Domain

## Other Acceptable Licenses

Other licenses that we find acceptable include any of the following:
   * Older revisions of any of the preferred creative commons licenses or GFDL
   * GFDL with invariant sections, subject to the editorial acceptability of the invariant sections.
   * GPL
   * LGPL
   * Modified ("3 clause") BSD License
   * Simplified ("2 clause") BSD License

Other licenses may prove to be acceptable, but we will need to evaluate these on a case-by-case basis in the future.

## Acceptable under Special Circumstances
  * All rights reserved to irchelp.org (acceptable for older work)
  * Used by permission (acceptable for archival documents if no other license terms are available)

## License Tags
The applicable licensing tag should be indicated in the YAML front matter of each document, as one of the following values.

* cc-by-4 - The document uses the [Creative Commons Attribution 4.0 International](http://creativecommons.org/licenses/by/4.0/) license and may be freely used and distributed so long as the attribution remains intact.
* cc-by-sa-4
* gfdl-1-3 - The GNU Free Documentation License, version 1.3
* cc-zero - Works dedicated to the Public Domain using the Creative Commons Zero dedication.
* publicdomain - works dedicated to the Public Domain with a simple disclaimer
* usedbypermission - The document was provided by an outside contributor under permission.
* irchelp - The document was authored by IRCHelp chanops, and has only been licensed for use on irchelp.org. It may not be used on other sites without permission.

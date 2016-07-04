---
title: Using Linux/Unix Clients on Windows
author: Stephanie Daugherty
---


# Using Linux/Unix Clients on Windows

While most users on Windows will prefer the graphical clents, it's often possible to run clients meant for a Linux/Unix terminal under Windows with some effort, and at least two clients originally targeted to run under X are also available for Windows.

Unless you are feeling adventurous, nostalgic, or really are more comfortable with a terminal-oriented client, I recommend sticking to the graphical clients.


## Ready to use ports


### irssi

A version of irssi 0.8.15 marked as being "for testing" is available from the [irssi homepage](www.irssi.org). This is considered by the irssi team to be prerelease software. 

### pidgin

### xchat

## Rolling your own

The developers of clients for unix-like operating system often don't give Windows users a lot of thought - so precompiled builds of your client of choice may not be available, or they may be horribly out of date. In that case, you may be better off compiling your own, particularly if you are comfortable around a command line and have some familiarity with how to build software from source.

This isn't for the faint of heart, but if you are a die hard console user stranded on a Windows system temporarily, it shouldn't be too difficult for you.


### Cygwin

Cygwin provides a unique unix-like enviroment on top of Windows. A DLL is provided that is in effect a shim to bring Windows close enough to POSIX compliance for windows+cygwin to be considered it's own flavor of unix.

This isn't emulation, but rather a framework that allows software to be ported from unix-like enviroments over to Windows. Aside from the compatability shims, cygwin provides the expected userland tools and development toolchain - including a bash shell, all the standard GNU utilities, and of course, the gcc compiler.

In many cases, the developers of IRC clients haven't completely forgotten about Windows after all, and you'll be able to download the source to your favorite client, and compile it from source in much the same way as you would any software package.

### MSYS

MSYS is a much less complete solution, but is considered lighter weight. It also aims to provide something of a compatability shim, just as cygwin does, but the resulting executables don't need a cygwin dll, and don't have as much of the POSIX-standard APIs exposed. In other words, it results in executables that are at least slightly closer to typical Windows programs.

### Other ways to port

#### Services for Unix

Microsoft Services for Unix is a similar framework to Cygwin and MSYS, provided by Microsoft. It's not widely used outside of some enterprise applications that have been ported with it, but it seems at least *theroretically* possible to port a client over with this toolchain. I'm not aware of any successes here, but your mileage may vary. 

#### Build using Visual Studio

Also in the realm of possibility, but again I'm not aware of any successes here, and again your mileage may vary. Most developers though, are using gcc, and that's all they've tested against, so you may have an uphill battle just trying to compile.

## Or, why run a ported client at all...

Rather than dealing with porting, you may also be able to run a client from
another machine over a ssh connection, or run a small installation of
Linux/FreeBSD/OpenBSD/Solaris or other unix-like OS of your choice easily
via virtualization, most likely with far fewer difficulties than you'd run
into with a badly ported \*nix client running in Windows.

The choice is yours however, but you do have some options.


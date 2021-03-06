---
title: 'ircii help: exec'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: EXEC <shell commands>
       EXEC -NAME <name> <shell commands>
       EXEC -OUT [%<process id>|<shell commands]
       EXEC -MSG <nickname> [%<process id>|<shell commands>]
       EXEC -NOTICE <nickname> [%<process id>|<shell commands>]
       EXEC -IN %<process id> <text to send to process>
       EXEC -WINDOW [%<process id>|<shell commands>]
       EXEC -<signal> %<process id>
       EXEC -CLOSE %<process id>
       EXEC -TARGET [<shell commands]
       EXEC -FILTER <funcname> <shell commands>

  EXEC allows you to start subprocesses in ircII and manipulate
  them in various ways.  You can start multiple subprocesses
  simultaneously and access them via a process number assigned
  by ircII.  You can list all currently running subprocesses by
  using EXEC with no parameters.  The process id of a process
  is the number assigned by ircII for that process, or the 
  name of the process given by the -NAME flag.  If a NAME is 
  given to a process, that name may be used anyway in place of
  the process number assigned by ircII.

  The first form of EXEC will simply start a subprocess and send
  its output to your display.

  The second form tells IRCII to send the output of the process
  to your current channel.  For example:
    EXEC -OUT ls
  sends the output of ls to your channel.  
    EXEC -OUT %1
  tells ircII to send the output of subprocess 1 to your channel.
  Subprocess 1 must exist already by a previous call to EXEC.

  The third form is much like the second, except that it sends
  to the specified nickname or nicknames (the format of the
  nicknames is the same as for MSG).  As with the second form,
  you can start a subprocess with -MSG, or you can change an
  already running process to send its output to the given nicknames.

  The fourth form is identical to the first, except the messages
  are send as NOTICEs not as PRIVMSG's.

  The fifth form lets you send a line of input to a running
  subprocess.  For example:
    EXEC -IN %shell This is a test.
  Sends "This is a test." to subprocess 0.  This processes must
  have previously been started with a call to EXEC -NAME shell. 
  An alternate method of sending text to processes is using the 
  MSG or QUERY command.  In the place of a nickname, you may 
  specify %n, when  n is a current running processes id.   For 
  example:
    MSG %shell This is a test.
  is equivalent to the previous example.

  The sixth form lets you specify that you want all output from
  the process to go to the current window.  Normally, output
  from processes goes to whichever window has a level setting of
  CRAP.  This locks the output into the current window.  
    EXEC -WINDOW %1
  Sends the output of process 1 to the current window.

  The seventh form lets you send various signals to subprocesses.
  The allowable signals are:
    HUP     INT     QUIT     ILL     TRAP     IOT     EMT
    FPE     KILL    BUS      SEGV    SYS      PIPE    ALRM
    TERM    URG     STOP     TSTP    CONT     CHLD    TTIN
    TTOU    IO      XCPU     XFSZ    VTALRM   PROF    WINCH
    LOST    USR1    USR2
  What these signals do depends on the process running, etc.
    EXEC -KILL %0
  Sends a KILL signal to process 0, forcing it to exit
  immediately.  If you want to read more about these signals, do
  a "man kill" at your shell prompt.

  The eigth form is for really ornery processes that simply won't
  die.  Sometimes this is because an EXEC'd process has forked
  off subprocesses which don't die when you use -KILL (or other
  flag).  Doing a:
    EXEC -CLOSE %0
  closes all of ircII's connections to that processes.  This means 
  that even if the processes is still sending output you won't see
  it.  This also means (in most cases) that the process will be
  killed by a SIGPIPE when it tries to send to ircII.

  The ninth form sends its output to whatever the current $T
  points to:
    EXEC -TARGET
  
  The tenth form uses a filter function to handle the output
  from the command. Example:
    EXEC -FILTER method ./prog $0-
  Would call $method() for every line of output the ./prog
  causes. The $method() would get the line as parameters.
  If the function returns value, the first word of the
  exec output line will be stripped away and the rest
  will be appended to the return value and the result
  executed as a command.
  This is very useful if $method() is a function returning
  a command and ./prog outputs the recipient nickname as
  the first word on every line.
  /on exec could also be used, but it does not work right
  if you work on multiple servers at the same time.
  NOTE: If the program outputs lines longer than the ircII
  line length limit is, the lines are handled as if they
  were split, and this may not work expectedly. Be careful.

  Note that unless EXEC_PROTECTION is set to OFF, the /EXEC
  command is not available while a /ON hook is executing.  See the
  SET EXEC_PROTECTION help page for more information about
  this feature.

```
See Also: 
  [SET SHELL](set/shell.html)
  [SET SHELL_FLAGS](set/shell_flags.html)
  [SET SHELL_LIMIT](set/shell_limit.html)
  [SET NOTIFY_ON_TERMINATION](set/notify_on_termination.html)
  [SET EXEC_PROTECTION](set/exec_protection.html)

[index](index.html)
[up](..)

<small> ircii 20190117 </small>

---
title: 'ircii help: functions'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
IRCII Functions
  IRCII functions are substituted with the format $FUNCTION(arguments).
  A function is an ALIAS which assigns a value to FUNCTION_RETURN.
  For example:
    ALIAS DOUBLE assign FUNCTION_RETURN ${[$0]+[$0]}
  which is the same as:
    ALIAS DOUBLE @ function_return = [$0] * 2
  used with:
    ALIAS SHOWDOUBLE echo $DOUBLE($0)
  will cause
    SHOWDOUBLE 7
  to display "14".

  The following built-in functions already exist and cannot be overriden:

  CHATPEERS()           Returns the list of nicks who you have dcc-chat
                        connections with, in format nick,nick2,...
                        Useful if you want to broadcast.
  CHANUSERS(channel)    Returns a list of users on channel.
  CONNECT(HOST PORT)    Returns the file descriptor for the connection.
                        A NULL fd means host could not be resolved.
                        Negative fd means some error occurred in the attempt.
                        Communication through the connection is done with 
                        DCC RAW and ON DCC_RAW.
                        (See DCC RAW and ON DCC_RAW)
  CURPOS()              Returns the postition from the start of the input line
                        to where the cursor is now.
  CRYPT(salt key)       Crypts the input using the BSD crypt() function.
                        There is no way of decrypting the result. This
                        could be used for password crypting in a bot.
                        (Note that this function is available
                        only if the system libraries contain it.)
  DCCLIST(nick)         Returns a list of dcc operations for specified nick.
                        The list is a string which consists of two-character
                        constants, where first char is one of:
                              (C)hat, (S)end, (G)et, raw_(L)isten and (R)aw.
                        Second char is one of:
                              (C)losed, (A)ctive, (W)aiting, (O)ffered.
                        You can use this for example to detect if
                        you have a dcc-chat connection to someone.
                        Returns 0 if you don't specify nick.
  DECODE(encoded text)  Decode a single STRING of text produced by ENCODE()
                        into its original characters.  Note that these are
                        case sensitive.
  ENCODE(input text)    Convert input text to an encoded string suitable for
                        use as an ircII variable or alias name.  Any special
                        including spaces can be encoded into the string.
  FILESTAT(filename)    Performs a stat(2) on the specified filename.  The
			returned values are size, uid, gid, mode and filename.
  HASVOICE(nick channel) Returns 1 if nick has voice on the given channel.
                        Note that if the person is an operator on the given
                        channel, this function is unreliable: It returns 1.
  IDLE()                Returns the number of seconds since the last keyboard
                        activity.
  IGNORED(NICK TYPE)    Returns "ignored", "highlighted", "dont" or "0",
                        depending on what ignore action will be applied to
                        this NICK and TYPE of ignorance.  TYPE must be one
                        of MSGS, PUBLIC, WALLS, WALLOPS, INVITES, NOTICES,
                        NOTES, CTCP or CRAP.  If TYPE is missing, all of the
			ignore types matching NICK are returned, or "0".
			If both NICK and TYPE are missing, all ignored
			nicks, including full user@hosts, are returned.
  INDEX(CHARLIST STRING) Returns the index to the first character in STRING
                        which appears in CHARLIST. If the first char in
                        CHARLIST is a '^' returns the index to first char in
                        STRING *NOT* in CHARLIST.
  ISCHANNEL(word)       Returns 1 if word is a valid channel name.
  ISCHANOP(nick channel) Returns 1 if nick is a chanop on the given channel.
  LEFT(COUNT STRING)    Returns the COUNT leftmost bytes from the STRING.
  LISTEN(PORT)          Creates a listening socket on the specified port.
                        If the port # is not specified then it returns the 
                        number of the port it chose arbitrarily.  It cannot
                        open a port# < 1025
  MATCH(PATTERN WORDS)  Returns an index into the list of WORDS of the first
                        match for the given PATTERN. Returns 1 if it matches
                        the first word, 0 if it matches none.
  MID(INDEX COUNT STRING) Returns COUNT bytes starting at position INDEX
                        in STRING.
  MYCHANNELS(refnum)    Returns a string with a list of channels on that
                        windows server. (defaults to current window)
  MYSERVERS()           Returns a string of the names of the servers
                        you are connected to.
  NOTIFY(TYPE)          Returns either the TYPE "here", "gone" or "all"
                        lists, default being "here".
  ONCHANNEL(nick channel) Returns 1 if nick is on channel
  PID()                 Returns the current process ID.
  PPID()                Returns the current parent process iD.
  QUERYNICK(refnum)     Returns the nick, if any, that the window is queried
                        to.
  RAND(LIMIT)           Returns a random number x such that 0<=x<LIMIT
  RIGHT(COUNT STRING)   Returns the COUNT rightmost bytes from the STRING.
  RINDEX(CHARLIST STRING) Returns the index to the last character in STRING
                        which appears in CHARLIST.
  RMATCH(WORD PATTERNS) Returns an index into the list of PATTERNS of the
                        pattern which best matches the given WORD. Returns
                        1 for the first pattern, 0 for none.
  SCREENS()             Returns a list of the current screen.
  SERVERTYPE()          Returns IRC2.X or ICB depending if you are connected
                        to an IRC or ICB server.
  SRAND(SEED)           Seeds the random number generator and returns nothing.
                        The seed may be a long integer, although only the low
                        integer is used.
  STIME(TIMEVAL)        Returns the date and time in English that corresponds
                        to the long integer TIMEVAL.
  STRFTIME(time format) Returns a string with the time formatted according
                        to the given format.
                        (Note that this function is available
                        only if the system libraries contain it.)
  STRIP(CHARLIST STRING) Returns the STRING with all occurrences of characters
                        listed in CHARLIST removed.
  TDIFF(TIME_INTERVAL)  Takes a TIME_INTERVAL in seconds and returns it in 
                        the format.. dd days hh hours mm minutes ss seconds
                        Any fields with 00 are omitted.
  TIME()                Returns the current system time as a long integer
  TOUPPER(string)       Convert string to upper case.
  TOLOWER(string)       Convert string to lower case.
  USERHOST()            Returns the user@host value under which the current
  WINDOWS()             Returns a list of the current windows.
                        message was sent if you are on a 2.7 server or better.
  WINNUM()              Returns the current window number.  This is always 
                        the window which is indicated by STATUS_WINDOW.
  WINNAM()              Returns the current window name.
                        This is always the window which is indicated by 
                        STATUS_WINDOW.  If the window has no name, it returns
                        nothing.
  WINCOLS()             Returns the number columns in this window, or -1 if
                        this can not be determined.
  WINROWS()             Returns the number rows in this window, or -1 if
                        this can not be determined.
  WINVIS()              Returns 1 if the window is currently visible.
  WINSERVER()           Returns the server associated with the window.
  WINSERVERGROUP()      Returns the server group associated with the window.
  WORD(INDEX WORDS)     Returns the single word in the list of WORDS pointed
                        to by INDEX.
  SHELLFIX(input text)  Convert input text so that it can safely be passed
                        to a command line program without unexpected side
                        effects commonly used to hack the user's shell.
  URLENCODE(input text) Convert input text so that it can be used as part of
                        an url, for example as a query parameter when executing
                        lynx. Note that you may have to SHELLFIX() also.

Note:
  The argument separator for functions is the space character, not the comma.
```

[index](index.html)
[up](..)

<small> ircii 20190117 </small>

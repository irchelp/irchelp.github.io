HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 2. The IRC Specification

## 2.1 Overview

The protocol as described herein is for use both with server to server and
client to server connections. There are, however, more restrictions on client
connections (which are considered to be untrustworthy) than on server
connections.

## 2.2 Character codes

No specific character set is specified. The protocol is based on a a set of
codes which are composed of eight (8) bits, making up an octet. Each message
may be composed of any number of these octets; however, some octet values are
used for control codes which act as message delimiters.

Regardless of being an 8-bit protocol, the delimiters and keywords are such
that protocol is mostly usable from USASCII terminal and a telnet connection.

Because of IRC's scandanavian origin, the characters {}| are considered to be
the lower case equivalents of the characters []\, respectively. This is a
critical issue when determining the equivalence of two nicknames.

## 2.3 Messages

Servers and clients send eachother messages which may or may not generate a
reply. If the message contains a valid command, as described in later
sections, the client should expect a reply as specified but it is not advised
to wait forever for the reply; client to server and server to server
communication is essentially asynchronous in nature.

Each IRC message may consist of up to three main parts: the prefix (optional),
the command, and the command parameters (of which there may be up to 15). The
prefix, command, and all parameters are separated by one (or more) ASCII space
character(s) (0x20).

The presence of a prefix is indicated with a single leading ASCII colon
character (':', 0x3b), which must be the first character of the message
itself. There must be no gap (whitespace) between the colon and the prefix.
The prefix is used by servers to indicate the true origin of the message. If
the prefix is missing from the message, it is assumed to have originated from
the connection from which it was received. Clients should not use prefix when
sending a message from themselves; if they use a prefix, the only valid prefix
is the registered nickname associated with the client. If the source
identified by the prefix cannot be found from the server's internal database,
or if the source is registered from a different link than from which the
message arrived, the server must ignore the message silently.

The command must either be a valid IRC command or a three (3) digit number
represented in ASCII text.

IRC messages are always lines of characters terminated with a CR-LF (Carriage
Return - Line Feed) pair, and these messages shall not exceed 512 characters
in length, counting all characters including the trailing CR-LF. Thus, there
are 510 characters maximum allowed for the command and its parameters. There
is no provision for continuation message lines. See section 7 for more details
about current implementations.

### 2.3.1 Message format in 'pseudo' BNF

The protocol messages must be extracted from the contiguous stream of octets.
The current solution is to designate two characters, CR and LF, as message
separators. Empty messages are silently ignored, which permits use of the
sequence CR-LF between messages without extra problems.

The extracted message is parsed into the components <prefix>, <command> and
list of parameters matched either by <middle> or <trailing> components.

The BNF representation for this is:

<message> ::=

    [':' <prefix> <SPACE> ] <command> <params> <crlf>
<prefix> ::=

    <servername> | <nick> [ '!' <user> ] [ '@' <host> ]
<command> ::=

    <letter> { <letter> } | <number> <number> <number>
<SPACE> ::=

    ' ' { ' ' }
<params> ::=

    <SPACE> [ ':' <trailing> | <middle> <params> ]
<middle> ::=

    <Any *non-empty* sequence of octets not including SPACE or NUL or CR or LF, the first of which may not be ':'>
<trailing> ::=

    <Any, possibly *empty*, sequence of octets not including NUL or CR or LF>
<crlf> ::=

    CR LF

NOTES:

  1. <SPACE> is consists only of SPACE character(s) (0x20). Specially notice that TABULATION, and all other control characters are considered NON-WHITE-SPACE.
  2. After extracting the parameter list, all parameters are equal, whether matched by <middle> or <trailing>. <Trailing> is just a syntactic trick to allow SPACE within parameter.
  3. The fact that CR and LF cannot appear in parameter strings is just artifact of the message framing. This might change later.
  4. The NUL character is not special in message framing, and basically could end up inside a parameter, but as it would cause extra complexities in normal C string handling. Therefore NUL is not allowed within messages.
  5. The last parameter may be an empty string.
  6. Use of the extended prefix (['!' <user> ] ['@' <host> ]) must not be used in server to server communications and is only intended for server to client messages in order to provide clients with more useful information about who a message is from without the need for additional queries.

Most protocol messages specify additional semantics and syntax for the
extracted parameter strings dictated by their position in the list. For
example, many server commands will assume that the first parameter after the
command is the list of targets, which can be described with:

<target> ::=

    <to> [ "," <target> ]
<to> ::=

    <channel> | <user> '@' <servername> | <nick> | <mask>
<channel> ::=

    ('#' | '&') <chstring>
<servername> ::=

    <host>
<host> ::=

    see RFC 952 [DNS:4] for details on allowed hostnames
<nick> ::=

    <letter> { <letter> | <number> | <special> }
<mask> ::=

    ('#' | '$') <chstring>
<chstring> ::=

    <any 8bit code except SPACE, BELL, NUL, CR, LF and comma (',')>

Other parameter syntaxes are:

<user> ::=

    <nonwhite> { <nonwhite> }
<letter> ::=

    'a' ... 'z' | 'A' ... 'Z'
<number> ::=

    '0' ... '9'
<special> ::=

    '-' | '[' | ']' | '\' | '`' | '^' | '{' | '}'
<nonwhite> ::=

    <any 8bit code except SPACE (0x20), NUL (0x0), CR (0xd), and LF (0xa)>

## 2.4 Numeric replies

Most of the messages sent to the server generate a reply of some sort. The
most common reply is the numeric reply, used for both errors and normal
replies. The numeric reply must be sent as one message consisting of the
sender prefix, the three digit numeric, and the target of the reply. A numeric
reply is not allowed to originate from a client; any such messages received by
a server are silently dropped. In all other respects, a numeric reply is just
like a normal message, except that the keyword is made up of 3 numeric digits
rather than a string of letters. A list of different replies is supplied in
[section 6](chapter6.html).

* * *

[<](chapter1.html)

[^](rfc.html)

[>](chapter3.html)

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 8. Current implementations

The only current implementation of this protocol is the IRC server, version
2.8. Earlier versions may implement some or all of the commands described by
this document with NOTICE messages replacing many of the numeric replies.
Unfortunately, due to backward compatibility requirements, the implementation
of some parts of this document varies with what is laid out. On notable
difference is:

  * recognition that any LF or CR anywhere in a message marks the end of that message (instead of requiring CR-LF);

The rest of this section deals with issues that are mostly of importance to
those who wish to implement a server but some parts also apply directly to
clients as well.

## 8.1 Network protocol: TCP - why it is best used here.

IRC has been implemented on top of TCP since TCP supplies a reliable network
protocol which is well suited to this scale of conferencing. The use of
multicast IP is an alternative, but it is not widely available or supported at
the present time.

### 8.1.1 Support of Unix sockets

Given that Unix domain sockets allow listen/connect operations, the current
implementation can be configured to listen and accept both client and server
connections on a Unix domain socket. These are recognized as sockets where the
hostname starts with a '/'.

When providing any information about the connections on a Unix domain socket,
the server is required to supplant the actual hostname in place of the
pathname unless the actual socket name is being asked for.

## 8.2 Command Parsing

To provide useful 'non-buffered' network IO for clients and servers, each
connection is given its own private 'input buffer' in which the results of the
most recent read and parsing are kept. A buffer size of 512 bytes is used so
as to hold 1 full message, although, this will usually hold several commands.
The private buffer is parsed after every read operation for valid messages.
When dealing with multiple messages from one client in the buffer, care should
be taken in case one happens to cause the client to be 'removed'.

## 8.3 Message delivery

It is common to find network links saturated or hosts to which you are sending
data unable to send data. Although Unix typically handles this through the TCP
window and internal buffers, the server often has large amounts of data to
send (especially when a new server-server link forms) and the small buffers
provided in the kernel are not enough for the outgoing queue. To alleviate
this problem, a "send queue" is used as a FIFO queue for data to be sent. A
typical "send queue" may grow to 200 Kbytes on a large IRC network with a slow
network connection when a new server connects.

When polling its connections, a server will first read and parse all incoming
data, queuing any data to be sent out. When all available input is processed,
the queued data is sent. This reduces the number of write() system calls and
helps TCP make bigger packets.

## 8.4 Connection 'Liveness'

To detect when a connection has died or become unresponsive, the server must
ping each of its connections that it doesn't get a response from in a given
amount of time.

If a connection doesn't respond in time, its connection is closed using the
appropriate procedures. A connection is also dropped if its sendq grows beyond
the maximum allowed, because it is better to close a slow connection than have
a server process block.

## 8.5 Establishing a server to client connection

Upon connecting to an IRC server, a client is sent the MOTD (if present) as
well as the current user/server count (as per the LUSER command). The server
is also required to give an unambiguous message to the client which states its
name and version as well as any other introductory messages which may be
deemed appropriate.

After dealing with this, the server must then send out the new user's nickname
and other information as supplied by itself (USER command) and as the server
could discover (from DNS/authentication servers). The server must send this
information out with NICK first followed by USER.

## 8.6 Establishing a server-server connection.

The process of establishing of a server-to-server connection is fraught with
danger since there are many possible areas where problems can occur - the
least of which are race conditions.

After a server has received a connection following by a PASS/SERVER pair which
were recognised as being valid, the server should then reply with its own
PASS/SERVER information for that connection as well as all of the other state
information it knows about as described below.

When the initiating server receives a PASS/SERVER pair, it too then checks
that the server responding is authenticated properly before accepting the
connection to be that server.

### 8.6.1 Server exchange of state information when connecting

The order of state information being exchanged between servers is essential.
The required order is as follows:

  * all known other servers;
  * all known user information;
  * all known channel information.

Information regarding servers is sent via extra SERVER messages, user
information with NICK/USER/MODE/JOIN messages and channels with MODE messages.

NOTE: channel topics are *NOT* exchanged here because the TOPIC command
overwrites any old topic information, so at best, the two sides of the
connection would exchange topics.

By passing the state information about servers first, any collisions with
servers that already exist occur before nickname collisions due to a second
server introducing a particular nickname. Due to the IRC network only being
able to exist as an acyclic graph, it may be possible that the network has
already reconnected in another location, the place where the collision occurs
indicating where the net needs to split.

## 8.7 Terminating server-client connections

When a client connection closes, a QUIT message is generated on behalf of the
client by the server to which the client connected. No other message is to be
generated or used.

## 8.8 Terminating server-server connections

If a server-server connection is closed, either via a remotely generated SQUIT
or 'natural' causes, the rest of the connected IRC network must have its
information updated with by the server which detected the closure. The server
then sends a list of SQUITs (one for each server behind that connection) and a
list of QUITs (again, one for each client behind that connection).

## 8.9 Tracking nickname changes

All IRC servers are required to keep a history of recent nickname changes.
This is required to allow the server to have a chance of keeping in touch of
things when nick-change race conditions occur with commands which manipulate
them. Commands which must trace nick changes are:

  * KILL (the nick being killed)
  * MODE (+/- o,v)
  * KICK (the nick being kicked)

No other commands are to have nick changes checked for.

In the above cases, the server is required to first check for the existence of
the nickname, then check its history to see who that nick currently belongs to
(if anyone!). This reduces the chances of race conditions but they can still
occur with the server ending up affecting the wrong client. When performing a
change trace for an above command it is recommended that a time range be given
and entries which are too old ignored.

For a reasonable history, a server should be able to keep previous nickname
for every client it knows about if they all decided to change. This size is
limited by other factors (such as memory, etc).

## 8.10 Flood control of clients

With a large network of interconnected IRC servers, it is quite easy for any
single client attached to the network to supply a continuous stream of
messages that result in not only flooding the network, but also degrading the
level of service provided to others. Rather than require every 'victim' to be
provide their own protection, flood protection was written into the server and
is applied to all clients except services. The current algorithm is as
follows:

  * check to see if client's `message timer' is less than current time (set to be equal if it is);
  * read any data present from the client;
  * while the timer is less than ten seconds ahead of the current time, parse any present messages and penalize the client by 2 seconds for each message;

which in essence means that the client may send 1 message every 2 seconds
without being adversely affected.

## 8.11 Non-blocking lookups

In a real-time environment, it is essential that a server process do as little
waiting as possible so that all the clients are serviced fairly. Obviously
this requires non-blocking IO on all network read/write operations. For normal
server connections, this was not difficult, but there are other support
operations that may cause the server to block (such as disk reads). Where
possible, such activity should be performed with a short timeout.

### 8.11.1 Hostname (DNS) lookups

Using the standard resolver libraries from Berkeley and others has meant large
delays in some cases where replies have timed out. To avoid this, a separate
set of DNS routines were written which were setup for non-blocking IO
operations and then polled from within the main server IO loop.

### 8.11.2 Username (Ident) lookups

Although there are numerous ident libraries for use and inclusion into other
programs, these caused problems since they operated in a synchronous manner
and resulted in frequent delays. Again the solution was to write a set of
routines which would cooperate with the rest of the server and work using non-
blocking IO.

## 8.12 Configuration File

To provide a flexible way of setting up and running the server, it is
recommended that a configuration file be used which contains instructions to
the server on the following:

  * which hosts to accept client connections from;
  * which hosts to allow to connect as servers;
  * which hosts to connect to (both actively and passively);
  * information about where the server is (university, city/state, company are examples of this);
  * who is responsible for the server and an email address at which they can be contacted;
  * hostnames and passwords for clients which wish to be given access to restricted operator commands.

In specifying hostnames, both domain names and use of the 'dot' notation
(127.0.0.1) should both be accepted. It must be possible to specify the
password to be used/accepted for all outgoing and incoming connections
(although the only outgoing connections are those to other servers).

The above list is the minimum requirement for any server which wishes to make
a connection with another server. Other items which may be of use are:

  * specifying which servers other server may introduce;
  * how deep a server branch is allowed to become;
  * hours during which clients may connect.

### 8.12.1 Allowing clients to connect

A server should use some sort of 'access control list' (either in the
configuration file or elsewhere) that is read at startup and used to decide
what hosts clients may use to connect to it.

Both 'deny' and 'allow' should be implemented to provide the required
flexibility for host access control.

### 8.12.2 Operators

The granting of operator privileges to a disruptive person can have dire
consequences for the well-being of the IRC net in general due to the powers
given to them. Thus, the acquisition of such powers should not be very easy.
The current setup requires two 'passwords' to be used although one of them is
usually easy guessed. Storage of oper passwords in configuration files is
preferable to hard coding them in and should be stored in a crypted format (ie
using crypt(3) from Unix) to prevent easy theft.

### 8.12.3 Allowing servers to connect

The interconnection of server is not a trivial matter: a bad connection can
have a large impact on the usefulness of IRC. Thus, each server should have a
list of servers to which it may connect and which servers may connect to it.
Under no circumstances should a server allow an arbitrary host to connect as a
server. In addition to which servers may and may not connect, the
configuration file should also store the password and other characteristics of
that link.

### 8.12.4 Administrivia

To provide accurate and valid replies to the ADMIN command (see section
[4.3.7](chapter4.html#c4_3_7)), the server should find the relevant details in
the configuration.

## 8.13 Channel membership

The current server allows any registered local user to join upto 10 different
channels. There is no limit imposed on non-local users so that the server
remains (reasonably) consistant with all others on a channel membership basis

* * *

[<](chapter7.html)

[^](rfc.html)

[>](chapter9.html)

* * *



[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


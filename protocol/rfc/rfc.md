HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# Internet Relay Chat Protocol

**Editor's Note**: This is the original RFC for IRC. [Tatu J. Lund](http://www.tuug.utu.fi/~f/) translated the official text file [RFC 1459](../text/rfc1459.txt) into this web version, which is mirrored with his permission. There are also [other RFC documents](index.html) including specifications for CTCP, DCC, and the "new" IRC RFCs.

## Status of This Memo

This memo defines an Experimental Protocol for the Internet community.
Discussion and suggestions for improvement are requested. Please refer to the
current edition of the "IAB Official Protocol Standards" for the
standardization state and status of this protocol. Distribution of this memo
is unlimited.

## Abstract

The IRC protocol was developed over the last 4 years since it was first
implemented as a means for users on a BBS to chat amongst themselves. Now it
supports a world-wide network of servers and clients, and is stringing to cope
with growth. Over the past 2 years, the average number of users connected to
the main IRC network has grown by a factor of 10.

The IRC protocol is a text-based protocol, with the simplest client being any
socket program capable of connecting to the server.

## Table of Contents

[1.INTRODUCTION](chapter1.html)

[1.1 Servers](chapter1.html#c1_1)

[1.2 Clients](chapter1.html#c1_2)

[1.2.1 Operators](chapter1.html#c1_2_1)

[1.3 Channels](chapter1.html#c1_3)

[1.3.1 Channel Operators](chapter1.html#c1_3_1)

[2. THE IRC SPECIFICATION](chapter2.html)

[2.1 Overview](chapter2.html#c2_1)

[2.2 Character codes](chapter2.html#c2_2)

[2.3 Messages](chapter2.html#c2_3) 

[2.3.1 Message format in 'pseudo' BNF](chapter2.html#c2_3_1)

[2.4 Numeric replies](chapter2.html#c2_4)

[3. IRC CONCEPTS](chapter3.html)

[3.1 One-to-one communication](chapter3.html#c3_1)

[3.2 One-to-many](chapter3.html#c3_2)

[3.2.1 To a list](chapter3.html#c3_2_1)

[3.2.2 To a group (channel)](chapter3.html#c3_2_2)

[3.2.3 To a host/server mask](chapter3.html#c3_2_3)

[3.3 One to all](chapter3.html#c3_3)

[3.3.1 Client to Client](chapter3.html#c3_3_1)

[3.3.2 Clients to Server](chapter3.html#c3_3_2)

[3.3.3 Server to Server](chapter3.html#c3_3_3)

[4. MESSAGE DETAILS](chapter4.html)

[4.1 Connection Registration](chapter4.html#c4_1)

[4.1.1 Password message](chapter4.html#c4_1_1)

[4.1.2 Nickname message](chapter4.html#c4_1_2)

[4.1.3 User message](chapter4.html#c4_1_3)

[4.1.4 Server message](chapter4.html#c4_1_4)

[4.1.5 Operator message](chapter4.html#c4_1_5)

[4.1.6 Quit message](chapter4.html#c4_1_6)

[4.1.7 Server Quit message](chapter4.html#c4_1_7)

[4.2 Channel operations](chapter4.html#c4_2)

[4.2.1 Join message](chapter4.html#c4_2_1)

[4.2.2 Part message](chapter4.html#c4_2_2)

[4.2.3 Mode message](chapter4.html#c4_2_3)

[4.2.3.1 Channel modes](chapter4.html#c4_2_3_1)

[4.2.3.2 User modes](chapter4.html#c4_2_3_2)

[4.2.4 Topic message](chapter4.html#c4_2_4)

[4.2.5 Names message](chapter4.html#c4_2_5)

[4.2.6 List message](chapter4.html#c4_2_6)

[4.2.7 Invite message](chapter4.html#c4_2_7)

[4.2.8 Kick message](chapter4.html#c4_2_8)

[4.3 Server queries and commands](chapter4.html#c4_3)

[4.3.1 Version message](chapter4.html#c4_3_1)

[4.3.2 Stats message](chapter4.html#c4_3_2)

[4.3.3 Links message](chapter4.html#c4_3_3)

[4.3.4 Time message](chapter4.html#c4_3_4)

[4.3.5 Connect message](chapter4.html#c4_3_5)

[4.3.6 Trace message](chapter4.html#c4_3_6)

[4.3.7 Admin message](chapter4.html#c4_3_7)

[4.3.8 Info message](chapter4.html#c4_3_8)

[4.4 Sending messages](chapter4.html#c4_4)

[4.4.1 Private messages](chapter4.html#c4_4_1)

[4.4.2 Notice messages](chapter4.html#c4_4_2)

[4.5 User-based queries](chapter4.html#c4_5)

[4.5.1 Who query](chapter4.html#c4_5_1)

[4.5.2 Whois query](chapter4.html#c4_5_2)

[4.5.3 Whowas message](chapter4.html#c4_5_3)

[4.6 Miscellaneous messages](chapter4.html#c4_6)

[4.6.1 Kill message](chapter4.html#c4_6_1)

[4.6.2 Ping message](chapter4.html#c4_6_2)

[4.6.3 Pong message](chapter4.html#c4_6_3)

[4.6.4 Error message](chapter4.html#c4_6_4)

[5. OPTIONAL MESSAGES](chapter5.html)

[5.1 Away message](chapter5.html#c5_1)

[5.2 Rehash command](chapter5.html#c5_2)

[5.3 Restart command](chapter5.html#c5_3)

[5.4 Summon message](chapter5.html#c5_4)

[5.5 Users message](chapter5.html#c5_5)

[5.6 Operwall command](chapter5.html#c5_6)

[5.7 Userhost message](chapter5.html#c5_7)

[5.8 Ison message](chapter5.html#c5_8)

[6. REPLIES](chapter6.html) [6.1 Error Replies](chapter6.html#c6_1)

[6.2 Command responses](chapter6.html#c6_2)

[6.3 Reserved numerics](chapter6.html#c6_3)

[7. CLIENT AND SERVER AUTHENTICATION](chapter7.html)

[8. CURRENT IMPLEMENTATIONS DETAILS](chapter8.html)

[8.1 Network protocol: TCP](chapter8.html#c8_1)

[8.1.1 Support of Unix sockets](chapter8.html#c8_1_1)

[8.2 Command Parsing](chapter8.html#c8_2)

[8.3 Message delivery](chapter8.html#c8_3)

[8.4 Connection 'Liveness'](chapter8.html#c8_4)

[8.5 Establishing a server-client connection](chapter8.html#c8_5)

[8.6 Establishing a server-server connection](chapter8.html#c8_6)

[8.6.1 State information exchange when connecting](chapter8.html#c8_6_1)

[8.7 Terminating server-client connections](chapter8.html#c8_7)

[8.8 Terminating server-server connections](chapter8.html#c8_8)

[8.9 Tracking nickname changes](chapter8.html#c8_9)

[8.10 Flood control of clients](chapter8.html#c8_10)

[8.11 Non-blocking lookups](chapter8.html#c8_11)

[8.11.1 Hostname (DNS) lookups](chapter8.html#c8_11_1)

[8.11.2 Username (Ident) lookups](chapter8.html#c8_11_2)

[8.12 Configuration file](chapter8.html#c8_12)

[8.12.1 Allowing clients to connect](chapter8.html#c8_12_1)

[8.12.2 Operators](chapter8.html#c8_12_2)

[8.12.3 Allowing servers to connect](chapter8.html#c8_12_3)

[8.12.4 Administrivia](chapter8.html#c8_12_4)

[8.13 Channel membership](chapter8.html#c8_13)

[9. CURRENT PROBLEMS](chapter9.html)

[9.1 Scalability](chapter9.html#c9_1)

[9.2 Labels](chapter9.html#c9_2)

[9.2.1 Nicknames](chapter9.html#c9_2_1)

[9.2.2 Channels](chapter9.html#c9_2_2)

[9.2.3 Servers](chapter9.html#c9_2_3)

[9.3 Algorithms](chapter9.html#c9_3)

[10. SUPPORT AND AVAILABILITY](chapter10.html)

[11. SECURITY CONSIDERATIONS](chapter11.html)

[12. AUTHORS' ADDRESSES](chapter12.html)

**[Other IRC RFC Documents](index.html)**

* * *

[<](index.html)

^

[>](chapter1.html)

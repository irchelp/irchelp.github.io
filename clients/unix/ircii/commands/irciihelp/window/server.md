---
title: 'ircii help: server'
author: Michael Sandrof, Troy Rollo, Matthew R. Green
datecreated: 3 August 2020
layout: default
license: ircii
summary: >
  ircii version: 20190117
  create with help2md.pl
---
```
Usage: SERVER [flags] <server>:<portnumber>:<password>:<nickname>
  This allows you to specify a different server to connect to for 
  the current window. The <portnumber> and <password> are optional. 
  If you are already connected to the specified server, the window 
  will switch to that server.  Doing a WINDOW with no parameters 
  shows you what server is associated with it.

Available flags:
  -IRC <normal arguments>
  -ICB <normal arguments>
    Make this connection as an IRC or ICB connection.
  -SSLNOCHECK <normal arguments>
    Make a connection via SSL, without verifying the server certificate.
  -SSL <normal arguments>
    Make a connection via SSL, verifying the server certificate.
  -NOSSL <normal arguments>
    Make a normal connection, only matters if the default has been set.
  -GROUP <group> <normal arguments>
    Set the server group as well.

```
See Also:
  [SERVER](server.html) 

[index](index.html)
[up](..)

<small> ircii 20190117 </small>

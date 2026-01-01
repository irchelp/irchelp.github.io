---
title: 'Channel Lists: Troubleshooting'
status: historical
layout: default
---
# Channel Lists: Troubleshooting

This guide covers some common problems when trying to do /list. If you
just want to learn how to find channels, see our 
[channel list page](index.html) instead.

## Server load is temporarily too heavy. Please wait a while and try again.

The message is self-explanatory. Some servers are handling tens
thousands of users and just can\'t keep up with everybody typing
commands like `/list`. Just wait a few minutes and try again, or try
another server on the same network. You can use `/links` to get a
current list of servers on any network, or see our web-based 
[server lists](/networks/efnet/servers.html).

## \"SendQ Exceeded\" or \"List output too large, truncated\"

Often on large networks such as EFnet, by typing `/list` you get
disconnected or don\'t get the full list. The following is a technical
explanation, but basically the server is too impatient to send you all
the information for 10000+ channels. With some patience you can
sometimes find other servers on the same network that will work. If all
else fails, just use the web-based [channel lists](index.html) on our
site.

**Boring Technical Explanation**: When you type /list the IRC server
starts to send you the list of channels, which can be thousands of lines
(several hundred kilobytes) in a few seconds. If your network connection
cannot absorb that all at once, the server attempts to send it to you as
quickly as you can take it, storing any excess data in a buffer called
the \"SendQ\" or send queue. If this buffer gets filled up, the server
has nowhere else to store the pending data and must therefore break your
connection. Others will see you signoff with \"SendQ exceeded\" message.
Instead of disconnecting you, some servers will just throw away the
excess data, and send you the \"list output too large, truncated\"
error.

The size of the SendQ varies for each server, depending on how much of
its finite resources the administrators want to devote to this task.
Some servers have such a small SendQ that they will disconnect
**anybody** who tries to list, no matter how fast your connection is.
These servers have effectively broken their /list feature to maximize
their resources for actual chatting.

## Why can\'t I find a channel that I know exists?

So you know a channel exists because you can join it and see other
people in it, but why won\'t it show up in `/list`? All `/list` commands
(including web-based channel lists which use those commands) are able to
show only \"public\" channels, i.e., those which have not been set to
\"secret\" channel mode \"+s\". Up to half or more of the channels out
there are secret, because the operators of those channels do not want it
showing up in lists. That is their choice and their right to discourage
newcomers or outsiders. Chances are you wouldn\'t be welcome there
anyway.

## How can I abort a channel list?

This depends on the client you use and sometimes the type of server
you\'re connected to. If you\'re using mIRC you have to wait for it to
finish, you cannot interrupt it. Sometimes the servers are
malfunctioning and do not send the end of channel list signal, so even
though the number of channels is no longer increasing, the list window
is still locked up. The easiest way to fix this problem is to do a
one-channel list, by typing `/raw list #channelname` such as
`/raw list #help`. This will not lock things up since it is asking for
just a single channel\'s information, but it will close the previous,
hung list.

If you are using a client like [ircII](/clients/unix/ircii) such as on a shell
account, you can try to issue the `/flush` command which flushes the
server\'s buffer and tells it stop sending further data to you.


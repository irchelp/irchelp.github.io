---
title: Slack and IRC
author: Stephanie Daugherty
layout: default
license: CC-BY-SA-4
redirect_from:
  - /irchelp/misc/slack_and_irc.html
---

# Slack

Slack is a start-up company offering a team-oriented instant messaging product. While there's a free product, Slack is primarily
a paid service aimed at corporate customers, and is designed to give companies a turnkey system for business instant messaging.

The Slack web application and official desktop/mobile clients are "rich" applications, with pictures, video, documents, and
even other applications tightly integrated into the conversations.

Slack provides optional XMPP and IRC gateways to teams. The full scope of Slack, and the XMPP support are out of scope for us, but
we'll discuss the IRC support.

## Slack via IRC

The IRC gateway must be enabled by the team administrator before it can be used. Credentials for the gareway are per-user, and each
user must retrieve their own credentials from the web application - these credentials are not the same as the user's login information.

The gateway emulates an IRC server, with a dedicated IRC server spun up for each team on Slack, and with Slack channels mapped 1:1 to IRC channels, and Slack users mapped 1:1 to IRC users. The
full rich functionality of Slack does not map over to the IRC gateway, but text chat is fully supported.

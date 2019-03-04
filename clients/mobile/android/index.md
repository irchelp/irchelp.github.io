---
title: IRC Clients for Android
author: Stephanie Daugherty
summary: Partial listing of IRC clients for Android users.
license: CC-BY-SA-4
redirect_from:
  - /irchelp/clients/android/
---

# IRC Clients for Android

A variety of Android devices are out there, including smartphones, handhelds, tablets, netbooks, set top boxes, and even dedicated digital cameras.

*Note* Due to power management and wireless network instability, long-lived persistent connections such as IRC on Android devices tend to be somewhat unreliable. This is a general characteristic of mobile devices rather than a flaw in any particular client, but it does mean that the utility of a mobile client for channel or server management will be limited.

## AndroIRC

AndroIRC is a popular choice for Android - it works well on most devices, and it's more than enough for keeping up with happenings on a channel or even performing basic channel operator functions. It comes in two versions - an ad-supported free version, and a paid version on the Google Play store which removes the advertising. Other than the ads, the versions are identical.

## AndChat

## [Android IRC](https://play.google.com/store/apps/details?id=com.countercultured.irc&hl=en)
 Stands out with a clean readable interface with little wasted space. It's
 also featureful, including support for SSL, SASL, and IRC proxies, nickname
 completion, and many of the things you'd expect from a desktop client.

## IRCCloud
[IRCCloud](https://www.irccloud.com/) - also listed under our [web clients](/clients/webclients.html)
is a hosted service accessible via the web as well as Android and iOS apps. Their
mobile clients act as a proxy for connections - routing the connection through
IRCCloud's servers. They offer free and paid plans, with the paid plans offering
persistent connections even with the client closed down, and push notifications,
which can help to work around spotty mobile network coverage.

## Using Linux IRC clients on Android

As Android is Linux-based under the hood, it's possible to run some IRC clients for a Linux terminal directly on an android device, using a terminal emulator application to interact with them via the shell. Depending on the device, you may be able to do this without root, but it will always work on a rooted device.

## Using Linux/Unix IRC clients via SSH

If you have a desktop client running somewhere where you can access over SSH, a better solution may be to forgo the native Android clients altogether and opt to run a traditional desktop client under screen.

ConnectBot is a popular SSH client for Android, and a version exists which has been modified for ease of use with irssi.

irssi is notable in this area, as a single irssi client on a stable host can be accessible both via SSH and as an IRC proxy for a client running directly on the Android device, allowing you to maintain continuity of conversations even when the mobile network connectivity is very intermittant.

# Using a bouncer/proxy

Using a bouncer or proxy from a more stable network may be useful to improve connection reliability.

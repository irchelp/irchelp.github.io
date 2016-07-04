---
title: Adding yourself to our networks list
author: irchelp.org staff
---

# Adding yourself to our networks list

Since the IRChelp.org network list has a high profile, many people ask us how
to get their new network added here. Please read through this carefully. If
you rush and skip around, you'll just be wasting your time and ours, and we
will ignore your request.

There are over 600 IRC networks out there, and as of early 2004, over 120 of
them average over 1000 users already. That's a lot of choices! _Are you quite
sure you're contributing something new and unique?_ If you just want to play
and learn about [ircd](../ircd/), by all means knock yourself out, but you
should have realistic expectations of [running your own server](../ircd
/server-request.html).

If you're still interested in being listed here, submit an issue on Github and
provide a pull request adding an information page for your network.
Let me be honest - the vast majority of submissions will be rejected because they
do not meet our requirements.
There is just no point in having a comprehensive list of hundreds of nets,
no user has the patience to read through all that, plus there are already
comprehensive, opt-in network lists such as [netsplit.de](http://irc.netsplit.de/networks/) and
[SearchIRC](http://www.searchirc.com) (ext. links).

## Requirements for Listing

Our criteria for inclusion are somewhat subjective. However, we weigh the following:

 * Stable, long term networks only. If it hasn't been around at least 6 months or longer, don't borther us.
 * Preference is given to networks with at least 1000 average users. Smaller networks likely will not be listed.
 * Exceptions might be made for uniqueness - for example, a smaller network which serves a particular language community.
 * We are interested in networks, not your standalone servers. Servers come and go, Networks with diverse collections of servers and formal linking policies tend to last.

Our decision regarding network listings is final, and we will not consider any further applications for a rejected network unless there are substantial changes in the circumstances.
 
## Required Information
Your issue should include the following information:

  1. **What are your /luser statistics?** Paste output from `/lusers` using a standard client such as mIRC or ircII so that it shows the number of users and servers. You should have at least a few hundred average users, which would put you in the top half of all networks out there. Any less than that, we wish you luck, but there are thousands of individual _channels_ already that are bigger than your whole network.
  2. **What is your unique contribution?** _This is VERY important!_ Give a single sentence description of your network. Avoid vague stuff like "a fun, safe place to chat." Instead, tell us what you provide that nobody else does. Do you support a specific country or language that doesn't have an IRC network already? Do you serve people with a special interest or hobby? In other words, why should I chat on your network instead of the hundres of others?
  3. **What are your web site addresses?** List and explain all useful URLs for your network: home page, server/channel list, history, policies, Java chat access, etc. The first few items are particularly important, if you don't have them yet, create them.
  4. **What is the default port or ports?** e.g., 6667, 6660-6669, 7000, etc.
  5. **What country or countries are your servers located in?**
  6. **What services do you run?** For example: nickname, channel, memo, etc. What is the nickname of each service/bot? Is there some URL explaining their use?
  7. **When was your network founded?** Give month and year. We value longevity as an indication of your stability.
  8. **What are your help channels?** List all help channels where people can go to get help or information on general IRC questions, servers, policies, etc. If there are open oper/admin channels, name those too.
  9. **Do you have restrictive policies?** I'm talking about bots, file trading, pornography, etc. There is no right or wrong answer, we support free speech, but the users need to know this.

  Hope that seems reasonable. We're not trying to make this more difficult than
  it needs to be. We need all of that information in order to evaluate your
  network and provide information that lusers want and deserve.

## Pull Request
Your pull request should include a new page with detailed information on your network, and an edit to the appropriate section page that adds a brief summary. Look at the existing listings for what we expect and what to include.

Make sure to reference the issue you submitted in your pull request.

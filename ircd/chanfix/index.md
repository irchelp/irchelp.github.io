# CHANFIX: EFnet Channel Fixing

**Translations: [![](fr.gif) Français](chanfix-fr.html) - [![](il.gif) Hebrew](chanfix-il.html) - [![](no.gif) Norsk](chanfix-no.html) **

by Jolo, tiggergrm and many others, updated Nov 16, 2003

Original version at [http://www.irchelp.org/ircd/chanfix/](http://www.
irchelp.org/ircd/chanfix/)

## What is CHANFIX? _READ THIS PLEASE!_

CHANFIX is an EFnet service that can sometimes give back ops when you lose all
ops or get taken over by outsiders. CHANFIX is not like chanserv or other
registration services, where the channel founder owns the channel forever.
Instead, CHANFIX keeps a score database of how often each person held ops in
each channel. The ops and the channel both must qualify under certain rules,
as described in later sections. The regular ops are those who qualify and held
ops the most during the past two weeks. If a channel loses ops, CHANFIX will
automatically re-op any qualifying former ops with the highest scores. We
cannot arbitrarily give or take away ops to anybody. CHANFIX is a last resort;
it does not exist for your convenience or to substitute for good commonsense
and proper channel management. You should still run your channel properly,
such as requiring username@hostname _and_ password verification before
granting ops. Manually opping people, even ones you think you know, is a
recipe for disaster.

**Please look for your particular problem in the list below and read the answer. _After_ you read the answer, we can explain more on #CHANFIX.**

  * 1. How do I register with CHANFIX or trigger it to work?
  * 2. My Channel is opless, how do I get ops back?
    * 2A. Conditions for CHANFIX to reop an opless channel
    * 2B. Why won't CHANFIX reop my opless channel?
    * 2C. Why Can't you just op me?
  * 3. We still have ops but they are all idle, can you op me instead?
  * 4. My channel was taken over, please help?
  * 5. How does CHANFIX keep scores?
  * 6. More Information

## 1. How do I register with CHANFIX or trigger it to work?

You do not register your channel with CHANFIX. You just need to make sure that
it meets certain qualifying conditions. CHANFIX then will automatically keep
track of the ops in the channel. Likewise, if your channel qualifies and you
lose ops, you do not need to trigger CHANFIX, it will reop your channel
automatically. See the next question on qualifications and opless channels.

## 2. My Channel is opless, how do I get ops back?

If you have lost **ALL** ops, CHANFIX will restore ops automatically as long
as your channel meets **ALL** of the conditions listed below. This process may
take a few minutes or an hour or more, depending on how regularly your
qualifying former ops held ops. People who hold ops all the time tend to be
re-oped quickly. You cannot invite or trigger CHANFIX to do its job. If
CHANFIX joins and leaves without giving ops, you do not qualify. Read on to
find out why.

### 2A. Conditions for CHANFIX to reop an opless channel:

**You must meet ALL of these conditions**, no exceptions. 

  1. The channel must have existed for at least half an hour. Although that is the technical minimum, please be realistic. Any channel less than a few days old is probably too new to fix, because you have not established a stable set of regular ops. Either create a new channel, or just chat on an existing channel since you might not be ready yet to run your own. 
  2. The channel has to have had at least 4 people in it. Again this is a technical minimum, but unless you really have a lot of people, it is often quicker to fix the channel by cycling it (everybody /part, then recreate the channel from scratch). 
  3. You have at least 1 and preferably 5 or more qualifying former ops in the channel right now. Qualifications are listed below. 
  4. Those former ops had [identd](http://www.irchelp.org/networks/connectprob.html#identd) working, so that `/whois nickname` did **not** show a **`~`** (tilde) before their username. For example, if your nickname is JoeBob and you type "/whois JoeBob" without the quotes, and you see "`JoeBob is ~blah@whatever.com`" then your identd is broken, and CHANFIX will not recognize you no matter how long you were an op. 
  5. The former ops were ops regularly during the past 2 weeks. "Regular" doesn't have to be 24/7, but it means they are usually an op - not just a few hours every few days. Anything before 2 weeks ago is irrelevant because CHANFIX only keeps records that long. It does not matter who created the channel or who is supposed to "own" it. 
  6. Their hostname or IP is "static", meaning it has not changed over the last 2 weeks. (The hostname or IP is the address following the @ in your /whois, in the JoeBob example above, the hostname is "whatever.com".) Hostnames containing certain keywords like "ppp" or "dialup" are always treated as dynamic. Certain domains are always dynamic, including bb.online.no and AOL.com. 
  7. The nickname does not matter, but the username must not have changed. In the example for JoeBob above, the "blah" before the @ symbol is the username. CHANFIX uses username@hostname to track scores. 

If you meet **ALL** of the above conditions, just get those qualifying regular
ops back in the channel. CHANFIX will automatically reop the highest scoring
ops first, then it goes down the list until there are 5 ops. It may leave and
rejoin several times before this is accomplished, depending on how high the
scores are. Higher scores are given ops sooner.

If you just cannot meet those conditions and do not get reoped automatically,
read the next section below.

### 2B. Why won't CHANFIX reop my opless channel?

If you lose **all** ops and CHANFIX does not join your channel automatically
within 5 minutes, then that means your channel does not qualify according to
the conditions in the previous section.

If you lose **all** ops and CHANFIX joins your channel, if CHANFIX keeps
joining without giving ops to anybody, it means you do have qualifying ops in
the score database, and it is trying to find 5 people to op, but nobody
currently on the channel qualifies. Stay calm, re-read the conditions in the
previous section, and try to get those qualifying former ops back. For example
if you usually have a bot or botnet holding ops, it may have the highest
scores, get it back in the channel!

If you just can't meet those conditions, such as if you have a new/small
channel, or if you have been opless over 2 weeks, then CHANFIX just does not
have a record of your channel, and you are on your own. You must cycle the
channel (clear everybody out and restart it) to regain ops. Consider it your
first challenge: If you can't even manage the channel properly (by keeping ops
or cycling the channel) when you have only a few people in it, imagine the
chaos if you had 50 or 500 people in the future. The simple fact is, running
an EFnet channel takes at least 10 people (not bots) who qualify according to
the previous section. If you don't have that, what's the point of having a
channel anyway? Visitors aren't going to come to some small, poorly organized
channel when there are thousands of [bigger
channels](http://www.irchelp.org/irchelp/chanlist/) already. If you insist on
running a channel anyway, consider moving your new/small channel to a
[network](http://www.irchelp.org/irchelp/networks/) with registration
services.

### 2C. Why Can't you just op me?

On EFnet, **nobody can just op you** on any channel, not even IRC operators
("opers") or admins. There is no secret command. EFnet is not like other
networks such as DALnet where they have services that give opers these powers.
For more information, see [Why EFnet has no registration
services](http://www.irchelp.org/irchelp/networks/noserv.html) and [The Myths
of Opers](http://www.irchelp.org/ircd/opermyth.html).

## 3. We still have ops but they are all idle, can you op me instead?

As long as at least one regular op (one holding a high score) is opped in the
channel, there is nothing CHANFIX can do. You need to work it out with that
person. It doesn't matter if he is a bot, or idle for weeks, or doesn't want
to share ops, you should have thought of that before giving him ops in the
first place. CHANFIX is a last resort only when you lose ALL ops or get taken
over by outsiders. EFnet does not have services like chanserv for your
convenience. As chan ops, just pretend there is no CHANFIX, and learn to run
your channel properly, including setting up scripts to safely request or give
ops.

## 4. My channel was taken over, please help?

CHANFIX can be triggered manually to reverse a recent takeover. A takeover is
defined as when there are still ops on the channel, but they did not hold ops
before (example: you mistake a stranger for a regular and accidentally give
him ops, he then deops everybody). We do **NOT** interfere in internal op
disputes, where regular ops fight each other for control (example: there is a
disagreement about who should run the channel, so one of the regular ops
decides to deop everybody else). In other words, if somebody was one of your
top 10 most regular ops over the last 2 weeks (anything before that is
irrelevant, doesn't matter if you created the channel or if you held ops for
years), he can do anything he wants including deoping everybody else. That's
unfortunately what happens when you trust the wrong people, but neither
CHANFIX nor anybody else can help then. Please settle it yourself or start a
new channel.

If you had an actual takeover by an outsider, then you need to figure out how
they got ops (accidental op, "hacked" bot/shell, [denial of service
attack](../nuke/) that knocked everybody else offline, etc.). Then make sure
it doesn't happen again. We do not issue fixes until you have demonstrated
that you won't get taken over again right away. You should have as many as
possible of your qualifying regular ops online and awake, either sitting in
the channel or ready to rejoin at a moment's notice. Be ready to act to secure
the channel right after the fix is issued.

How does the fix actually work? Once we verify there is a takeover, CHANFIX
can be triggered manually. It would first de-op everybody and remove all modes
that might keep people out (+b bans, +i invite-only, +k keyword-required, +l
limit). This is when you must rejoin quickly. Then CHANFIX rejoins later and
restores ops to the regular ops as it would in an opless channel.

**To reverse a takeover, if you meet all qualifying conditions for opless channels, go to EFnet #CHANFIX and tell us the name of your channel, what went wrong, what you've done to prevent a recurrence, then wait quietly for help.** We will get to you as soon as we can. 

If you don't qualify, see the relevant section above. Good luck, you'll need
it.

## 5. How does CHANFIX keep scores?

CHANFIX keeps track on who has ops on a channel by using a score database. To
hold a score, your channel must meet all qualifying conditions above. These
conditions include having a minimum number regular of ops with identd and a
static hostname/IP over a minimum period of time. If you qualify, you do not
need to register or log in, and it doesn't matter if you change nicknames. The
score is kept automatically according to your username@hostname.

If you qualify, for every 5 minutes that you hold ops on a channel, your score
is increased by 1 point. The more regularly you hold ops, the higher your
score will be. The scores are kept for only the last 2 weeks. The best scores
tend to go to people (or bots) who qualify and have a 24/7 connection, and who
get ops automatically as soon as they join the channel. A stable channel
should have preferably 10 or more ops with high scores, i.e., holding ops at
least 25-50% of the time. That way even if something goes wrong, it's obvious
who are the regular ops and CHANFIX can do its job easily. Score information
is accessible by IRC operators but cannot be given to you, even if you are one
of the top 10 regular ops. This is to protect you and your channel against
possible attacks targeted against your top ops.

For more technical discussions of how the scoring system works, see the links
in the last section.

## 6. More Information

**Original documentation**: see the "[What CHANFIX really is and isn't](http://www.qurve.com/efnet/chanfix/)" [ext. link] guide which contains an example describing how CHANFIX really works, including details on the scoring system, and the older [original FAQ](http://services.efnet.broken.com/chanfix/chanfix-faq.html) [ext. link] which does not cover more recent developments such as the manual fix feature. 

**History**: CHANFIX (originally named JUPES) was voted upon and passed by a majority of EFnet admins in April 2001, and began operation in early July 2001. You can see the [original vote](https://voting.efnet.org/pastvotes/0014.shtml) [ext. link] which also contains a somewhat technical comparison to other competing channel-fixing ideas. 

**Open CHANFIX**: This is an independently reverse engineered, [open source CHANFIX](http://www.garion.org/ocf/). If you're running hybrid ircd and wanted to use CHANFIX, enjoy. There's no guarantee that this is exactly how the real CHANFIX works, but you can learn a lot from the examples. 

**[CHANFIX guide for opers](http://www.jamarket.com/chanfix/chanfixoperhelp.html)** [ext. link]. This is a guide intended for new opers and CHANFIX helpers. It describes how one experienced helper approaches each request for help. To some it may seem overly burdensome, but really it's the most responsible, helpful approach IMHO, to make sure that the user actually learns from his mistakes and the channel actually stays fixed. 


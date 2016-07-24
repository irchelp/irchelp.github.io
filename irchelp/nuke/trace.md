# Tracing and Monitoring Attacks

**

[ [introduction](index.html) | [more info & patches](info.html) | tracing &
monitoring ]

**

** First, make sure you have carefully read the [Network Attack](index.html#netattack) section on our main DoS help page, particularly the section on firewalls. **

We used to serve up a wide range of tracing and monitoring tools at this site.
Recent developments have convinced me that they are not only not helpful, but
actually more harmful. As a result, I have removed all of these tools.

**I do not recommend people try to trace or monitor attacks**, for the following important reasons: 

  1. The differences between legitimate network activity and attacks are often subtle. In order to not miss any attacks, all monitoring programs have to err on the side of caution, which means they report a lot of false alarms. The vast majority of alerts you get are either totally normal or just harmless and not worth getting all excited about. 
  2. These programs report only an IP number like 123.45.6.78, not an IRC nickname or real name, since nuke attacks don't go through IRC anyway. Even if you knew the person was on IRC, it's usually impossible to find them unless they are sitting right in your own channel, since most people are invisible (+i) to /who *IP* searches. 
  3. Most attackers spoof their IP address so that you log only a fake address. This is at best useless (like "www.microsoft.com") and at worst very misleading. Sometimes people will do this just to make you kick and ban the wrong people. 
  4. These monitoring programs watch for suspicious activity on certain "ports" for network connections on your computer. Just by listening on these ports, however, they can sometimes make you vulnerable to attacks designed specifically against these monitoring programs! It's like opening your armor helmet to peek outside, only to get a sharp object suddenly thrust into your eye - ouch! 
  5. Even if the attacker is stupid enough to use his own IP address and you manage to record it, you can try to [log and report the attacks](report.html) but you don't often get a satisfactory response. Why not? Because you are not a network administrator, and don't know who to contact or how to describe the incident in a concise yet technically correct way.  **

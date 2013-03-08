# operman

* * *
    
    
    
    
                   The Unofficial Undernet Operators' Manual
                          Release 1 - August 1, 1993
    
                            written by Tony Vencill
                     co-oper of pv1628.vincent.iastate.edu
    
    This manual is being written in an attempt to provide a consistent set of
    guidelines to Undernet opers, so that we all may function as a team.
    However, as this is being written by one oper, even though it will be
    passed around for comments, it may not completely represent the views of
    all the undernet opers.  I will try, though, to only represent views that I
    feel are shared by the majority of the undernet opers.  Comments and
    constructive criticisms are always welcome at vencill@iastate.edu (until
    September 1993 anyway, when I lose my account).
    
                                The undernet
    
    I. What is the undernet?
    
       The undernet is a network of IRC servers very similar in form to EFNet,
       the larger, better known IRC net.  The undernet has servers worldwide
       and is constantly changing in topology.  Though the undernet is similar
       in form to EFNet, it operates on a different philosophy.  I will not
       attempt to lay down EFNet's philosophy, as I personally do not keep up
       to date on EFNet politics, but the undernet's goal I know.  The undernet
       is an attempt to provide a friendlier, more usuable environment to
       IRCers, where conversation is not continually interrupted by netsplits
       or mass mode changes, and where users do not hear "get a clue" when they
       ask questions.  To paraphrase one of the more useless presidents in
       history, the undernet is to be a kinder, gentler IRC net.  :)
    
    II. Working together
    
       A secondary challenge that has always been with us undernet opers is to
       work together as a team.  In order to provide a friendly environment, it
       is important that all opers keep up to date on undernet issues, be
       accessible when problems arise, and spend time on the undernet with
       other opers and with our small userbase.
    
    II.A. Wastelanders
    
       A mailing list called wastelanders has been set up by dl, one of our
       french opers, for discussion of issues relating to the undernet.
       Discussion on this list has ranged from policy discussions and botkiller
       alerts to heated arguments and friendly jests.  If you are an oper on
       the undernet, you should definately be receiving this list so that you
       are not only aware of, but also contributing to important undernet
       decisions.  Note, however, that mail to this list is sent to many people
       (not just undernet opers) worldwide, and this is not the place for
       pointless arguing or for getting in the last word.  This list is also
       not the place for flames, which should be sent through personal email,
       if at all.  But it is a good place for discussion of problems and
       policies on the net.
    
    II.A.1. Subscribing to and using Wastelanders
    
       To subscribe to this list, send email to listserv@hplyot.obspm.circe.fr,
       an automated service, and put "SUB wastelanders  " in the
       body with no preceding spaces.  For example, when I subscribed, I sent
       "SUB wastelanders vencill@iastate.edu Tony".  This listserv also offers
       other services and files.  For help, send email to the listserv and put
       "HELP" (no preceding spaces) in the message body.  To post to the list,
       send your email to wastelanders@hplyot.obspm.circe.fr.
    
    P.S. : dl's listserv no longer serves the undernet. Please read the
           newlink file for information on subscribing to wastelanders.
                                                        -Mmmm (July 94)
    
    II.B. Accessibility
    
       It is expected, if you run a server on the undernet, that you spend time
       on the undernet and be accessible if needed.  Running a server on the
       undernet is not just starting a process and leaving, but is making a
       commitment to be a part of the net and to help it grow and flourish.
    
    II.B.1. Be there
    
       With IRC windows, with xterm, or with screen, it is possible to be on
       the undernet at least as frequently as you are on EFNet, if not more.  I
       would encourage you to do the majority of your IRCing on the undernet
       and to invite your friends to meet you there.  This not only promotes
       our net, but makes you accessible should problems or questions arise
       concerning your server.
    
    II.B.2. Admin information
    
       As part of this accessibility I feel that your /admin information (your
       A line) should contain the nick and email address of at least one of
       your server's opers.
    
    II.B.3. Oper meetings
    
       Occassionally oper meetings are called for on wastelanders, and it is
       expected that all opers show up to these meetings if at all possible.
    
    III. Server list
    
       A list of undernet servers is always available from me, Tony
       <vencill@iastate.edu>.  This list includes server names, machine names,
       port numbers, IP numerics, oper nicks and addresses, and versions, among
       other information.  Please feel free to ask for this list but keep in
       mind I will be losing my account in September of this year.
    
                                 Your server
    
    IV. Your ircd.conf
    
       If you're running a server on the undernet, please be sure you
       understand the function of the ircd.conf lines.  All these lines are
       described in the INSTALL file in the doc directory, and in the
       sample.conf file.  The most important lines to know are the I, Y, C, N,
       H, and L lines.
    
    IV.A. Y lines
    
       Y lines allow you to adjust your server's behavior to suit different
       links.  You can define seperate classes for servers and clients,
       seperate classes for servers with different link characteristics, and
       even classes for opers' connections.  Y line stats should be set and
       adjusted over time to get the best connection possible between servers
       and with clients.
    
    IV.A.1. If you don't have Y lines
    
       If you do not use Y lines, please keep in mind that the default values
       from config.h will be used for every connection, and the MAX_LINKS
       define in config.h will determine your maximum number of links (this
       value defaults to 1).  This default Y line, incidentally, appears in
       every server as class 0, unless class 0 is specifically defined in a Y
       line.
    
    IV.A.2. Y line values
    
       Please do not use excessively long ping times (10 minutes should be more
       than adequate for any link, and the default of 120 seconds is
       recommended at start), and please do not use very short reconnect times
       (as this makes rerouting a challenge).  Also make sure that the fields
       that define number of connections allow a reasonable number of clients
       to connect to your server.
    
    IV.A.3. Y line format and sample
    
       The format of a Y line is as follows (taken from the INSTALL doc
       included with the server).  A sample Y line with recommended values is
       shown below the general format line.  The class number (5 in the sample)
       is the number that identifies the specified set of stats and that will
       appear in your I, O, C, and N lines.
    
       Y:::::
       Y:5:120:600:10
    
    IV.B. I lines
    
       I lines allow clients to connect to your server.  A sample I line and
       its format are shown below.
    
       I::::
       I:*::* 
       # or if using Y line 5 for client connections...
       I:*::*::5
    
    IV.C. C and N lines
    
       C lines define to whom you can connect your server and N lines define
       who can connect to you.  They almost always appear in pairs so that all
       the servers to whom you may connect may also connect to you.  Also see
       the section on H and L lines.
    
    IV.C.1. Choosing link passwords
    
       The C and N line passwords need not be the same, but the password in
       your C line must match the password in the other server's N line, and
       vice versa.
    
    IV.C.2. Link password encryption
    
       If using link password encryption (ie: if CRYPT_LINK_PASSWORD is defined
       in your config.h file), then only the N line password must be run
       through the mkpasswd utility in ircd/crypt/.  The C line password must
       not be encrypted.
    
    IV.C.3. Trouble starting your server?
    
       I have found that a server might not start correctly if it cannot
       resolve all the hostnames in its CN lines into IP numerics.  If you are
       having problems starting your server, you may wish to comment out all CN
       pairs but one and for that pair use a numeric instead of a hostname.  If
       your server starts with this configuration, then you need to find which
       hostname in your file your server cannot resolve.  Alternatively, you
       could attempt to lookup each hostname using nslookup.
    
    IV.C.4. Autoconnects
    
       Filling in the target host port field in a C line allows your server to
       automatically attempt to connect to the named server under the right
       conditions.  If your server gets disconnected, it may try to connect to
       any of these autoconnects, or if one of these autoconnects gets
       disconnected, your server may automatically try to reconnect the named
       server.  On the other hand, a C line without a port number still
       allows an oper to force the connection but will never result in an
       automatic connection to the listed server.  It is recommended that you
       limit your autoconnects to three servers and that these be undernet
       hubs.
    
    IV.C.5. Connection order
    
       When arranging CN pairs in your ircd.conf file, keep in mind that the
       LAST CN autoconnect pair in the file is tried FIRST and the first
       autoconnection listed in the file is tried last.  Obviously, order will
       not matter for connections that are not autoconnects.
    
    IV.C.6. CN pair format and sample
    
       A sample CN pair are shown below with their formats.
    
       C::::
       N:::
       C:pv1628.vincent.iastate.edu:rabbits:pv1628.vincent.iastate.edu:6667
       N:pv1628.vincent.iastate.edu:rabbits:pv1628.vincent.iastate.edu
       # or if using Y line 5 for this server connection...
       C:pv1628.vincent.iastate.edu:rabbits:pv1628.vincent.iastate.edu:6667:5
       N:pv1628.vincent.iastate.edu:rabbits:pv1628.vincent.iastate.edu::5
    
    IV.C.7. Hostmasking
    
       It is possible to run the net as a number of seperate interconnected
       sectors using a technique called hostmasking.  For example, if every
       server in canada presents itself to the US servers as *.ca (how a server
       presents itself is defined in the N lines), and the US servers present
       themselves to the canada servers as *.edu, then the servers can route
       normally within their sectors, but only one intersector (us--ca) link
       can be made.  This is useful for minimizing intercontinental or
       overseas links while still maintaining the flexibilty of allowing many
       servers to make this connection.  However, if a sector is too small,
       routing within the sector may sometimes not be sufficient and a server
       may get isolated.  An example of this hostmasking is shown below.
    
       #in pv1628's ircd.conf...
       C:newton.ccs.tuns.ca:sheep:*.ca:6667:0
       N:newton.ccs.tuns.ca:rabbits:*.ca:3:0
       H:*:*:*.ca
       #notice the H line...  *.ca, not newton...
       #also notice the "3" in the N line.  3 fields (pv1628.vincent.iastate)
       # are masked by the *, hence making *.edu
    
       #in newton's ircd.conf...
       C:pv1628.vincent.iastate.edu:rabbits:*.edu:6667:0
       N:pv1628.vincent.iastate.edu:sheep:*.edu:3:0
       H:*:*:*.edu
       #again, *.edu in H line and 3 in N line
    
    IV.D. H and L lines
    
       2.8 servers require the use of an H or L line for each CN pair.  If an H
       line is not provided, an L line will be assumed.  Please be sure you
       have the undernet hubs H lined and not L lined.  L lining a hub such as
       pv1628 could result in your server being unable to connect to the net.
       If your server is a hub also, then L lining a hub could result in
       splitting of the net.
    
    IV.D.1. L lining
    
       2.8 and 2.7 servers alike allow use of L lines.  L lining can be useful
       for keeping new or untrusted leafs in line, but some opers question its
       value.  Please ask other opers if you are unsure whether or not a server
       should be L lined.  An L lined server is not allowed to connect to any
       servers besides its one uplink.  If your server is L lined, you will
       want to keep this in mind when defining autoconnects in your ircd.conf.
    
    IV.D.2. H and L line formats and samples
    
       Sample H and L lines are shown below.
    
       L::*::
       L:*:*:elm.circa.ufl.edu
    
       H::*:
       H:*:*:pv1628.vincent.iastate.edu
    
    IV.E. Q lines
    
       Please never use Q lines on the undernet.  The use of Q lines can
       fracture the net.
    
    V. Oper password encryption
    
       For security reasons, every server should use oper password encryption.
       There is a define in the config.h file for CRYPT_OPER_PASSWORD which
       should be defined.  This will require you to encrypt your O line
       passwords, for which there is a mkpasswd program in ircd/crypt/.
       Encrypting oper passwords makes it difficult for others to find out a
       password and become oper illegitimately.
    
    V.A. Password selection
    
       Cracking passwords is not impossible, and it is a good idea to mix
       letters and numbers or lowercase and uppercase in your password to make
       it more difficult to crack.
    
    V.B. ircd.conf protection
    
       For additional protection, all servers that can should make their
       ircd.conf files readable only to server operators or admins to further
       reduce oper hacking and to reduce the possibility of server juping by
       non-opers.
    
    V.C. O line sample with encryption
    
       A sample O line for me with password "rabbits" is shown below.
    
       O:::
       O:*iastate.edu:7fRcRBJoIwJg.:Tony
       # or if using Y line 5 for this oper connection...
       O:*iastate.edu:7fRcRBJoIwJg.:Tony::5
    
    VI. Sysadmin approval
    
       It is requested that if you run a server on the undernet you seek
       approval or permission to run the server from whoever is in charge of
       the machine on which you plan to run.  The undernet has lost a number of
       servers to admins deciding the servers were not necessary and we would
       like to avoid this situation whenever possible.
    
    VII. Test servers
    
       Many opers from time to time desire to set up a test server to test out
       a new version or patch.  The lifespan of these servers should be short,
       spanning only the time required for the test, and the one uplink for the
       test server should be the testing oper's main server unless the test
       dictates otherwise.
    
    VIII. Server patches and hacks
    
       The servers on the undernet should operate as standard servers from any
       other server's point of view.
    
    VIII.A. Hacks
    
       Hacks such as changing server messages or patching server functions for
       better readibility or functionality for the server's users are not
       discouraged (to my knowledge) as long as the hacked server appears
       standard to other servers on the net.  Keep in mind, though, that users
       will not want to customize their ircrcs for each server, so the server
       functions should probably not be modified.
    
    VIII.B. Patches
    
       Patches such as the wallops patch and TS patch that effect the manner in
       which servers interrelate are sometimes encouraged, and if in question
       you should check with other opers or post a question to wastelanders.
       At the time of this writing, the undernet is slowly switching over to
       2.8.10.TSpre6 (and soon 2.8.11.TSpre6), so the TS patch (which includes
       many other patches) is at this time encouraged.
    
    VIII.C. Reporting hacks and patches
    
       In any case, it is appreciated if you report any hacks and patches you
       make to me, Tony <vencill@iastate.edu>, for note on the server list.
    
                            Oper responsibilities
    
    IX. Oper duties and powers
    
       As oper, you have several abilities that non-opers do not.  Though some
       of these, such as rehash, only effect your server, most effect the
       entire undernet.  Thus you should use these powers responsibly and with
       care to provide a friendly, usuable environment for other users.
    
    IX.A. Killing
    
       A user should be killed only if absolutely necessary or if requested by
       the user him or herself.  Problems with users should be worked out
       through messaging if possible.  Killing for revenge is not welcomed on
       the undernet, but examples of necessary kills are for users who are mass
       killing, users who have hacked oper and are abusing the oper
       priviledges, users who repeatedly mass kick, and users who are abusive
       and do not respond to requests to stop.  These are only guidelines, of
       course; in the end the choice is yours, but keep in mind the philosophy
       of the undernet when excercising a kill.
    
    IX.B. Squitting and connecting
    
       The commands squit and connect give you the ability to reroute the
       undernet.  The use of these commands, of course, is restricted to the
       connections that are listed in the servers' ircd.conf file.  That is,
       you cannot connect two servers unless they have CN lines for one
       another.  But even with this restriction there remains much flexibility
       in the routing of the net.
    
    IX.B.1. Squit
    
       The squit command disconnects the named server from the server next
       closest to you.  For example, if I am on server B in a net routed as
       A--B--C--D, and I squit D, the net will break into A--B--C and D.  But
       if I squit C, the net breaks into A--B and C--D.  Note this is not the
       same result that an oper on server D gets when squitting C, breaking
       the net into A--B--C and D.  It is a very good idea to /trace the server
       you wish to squit before squitting it so you can judge what impact the
       squit will have on the net.
    
    IX.B.2. When to reroute
    
       Rerouting can be beneficial at times, providing users with a less lagged
       connection, but can also be very disruptive, especially if many servers
       are rerouted at nearly the same time.  Though the undernet does have a
       routing plan, it is not necessary that the routing exactly correspond to
       this plan at all times.  Server outtages, loss of connections, and other
       events can cause servers to switch to links besides their primaries, and
       unless these links are especially lagged, servers with clients attached
       or behind should not be squitted.  A netsplit can be much more annoying
       than a barely noticable lag.  There will be times, however, when
       rerouting is necessary.  For example, if a hub is upgrading or for some
       other reason must shut down or restart, then connections may be rerouted
       to other servers.  This rerouting would most likely provide a better
       final routing than the chaotic scramble for connections that occurs when
       a hub with many links shuts down.  However, when rerouting, keep in mind
       the effect on users, and attempt to notify any user who will be effected
       by the squit.
    
    IX.B.3. How to reroute
    
       If any rerouting is to be done, after the impact of the rerouting has
       been assessed with /trace, you should announce your intentions on
       wastelanders and you should attempt to notify the users that will be
       affected.
    
    IX.B.4. Restarting and dying
    
       Please note that the commands restart and die will cause a server to
       drop all links.  Please use these commands responsibly.  These commands
       also have the potential to effect many users of the net.
    
    IX.B.5. Squitting to remove a server from the net
    
       Please do not squit in an attempt to remove a server from the net, as
       this is pointless.  Squit does not permanently disconnect a server; the
       disconnection is only temporary.  The server will soon automatically
       reconnect.  Squitting is not a reasonable means for dealing with
       problems on the net.
    
    IX.B.6. Squitting for ops
    
       Do not squit for ops.  This practice is not smiled upon on the undernet.
    
    IX.C. Granting links
    
       Each oper has a great ability to shape the undernet through his or her
       server's links.  If links are given out to servers haphazardly, then
       there exists a great potential for chaos on the undernet.  Many times
       servers have been linked which gave rise to problems on the net,
       including problems such as uncooperating opers rerouting the net and
       oversights resulting in oper hacking and mass killing.  Please be
       careful when giving out links and please feel free to ask questions of
       the new opers and of other opers on the undernet.
    
    IX.C.1. Some new link guidelines
    
       Please be sure when granting links that new opers are aware of the
       undernet philosophy and are in agreement with the peaceful goals of this
       net.  A questionaire is available on the listserv that all new links
       should fill out and post to wastelanders to announce their existance and
       other relevant information.  pv1628, as an example, also requires that
       all its links have opers on wastelanders, have reasonable Y lines, and
       have opers that are accessible in case problems arise, as I believe I
       can help shape this net through enforcing certain link standards at my
       site.  It might also be wise, in light of recent events, to ensure that
       all new servers use encrypted oper passwords.  It is encouraged by some,
       but not all, opers that new links be L lined until they are trusted and
       have become familiar with the net.
    
    IX.D. Granting oper status
    
       Please be careful when granting oper status on your server.  Keep in
       mind that opers can have a great effect on the net and that these opers
       will reflect directly on your server.
    
    X. Problems on the undernet
    
    X.A. What to do about non-critical oper or server problems on the undernet
    
       If you have or notice a problem on the undernet that is not urgent, then
       the preferred way of dealing with the problem is to either contact the
       involved parties through IRC or email, or to post the relevant facts to
       wastelanders.  Urgent in this case will mean not tearing the net apart
       or making it unuseable.  Whether you contact the involved parties
       yourself or post is up to you and will vary from situation to situation,
       depending on how accessible the parties are, what kind of problem it is,
       and how large a scope the problem involves.  If you do post, you are
       encouraged to include all the facts and keep personal opinions and
       emotions to a minimum (or at least flag them as such) so that all opers
       may see the situation for what it is and make their own judgements.
       This also will keep us working together and not yelling across the
       mailing list at one another.
    
    X.B. Handling critical problems on the undernet
    
       If an oper or server on the net is misbehaving, splitting the net or
       making the net otherwise unuseable, then drastic measures may be in
       line.  At least twice since I joined the undernet I've seen a server
       juped (ie: replaced with a fake to prevent the real server from
       connecting) to solve such a problem.  I've also seen a bot set up to
       autokill a certain user.  These methods are certainly NOT prefered
       methods on our net and should be used ONLY when absolutely necessary.
       It would also be a very good idea to quickly consult with other opers
       online before taking such a measure upon yourself.  Hopefully, with more
       cautious granting of links and with the submittal and revision of this
       manual, such problems will not occur often.
    
    This is the end of the Unofficial Undernet Oper Manual.  If you have any
    questions, comments, or suggestions, or would like to see certain material
    included in this manual, please email to Tony <vencill@iastate.edu> or
    contact me on the undernet.  Thanks.
    

* * *



##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.


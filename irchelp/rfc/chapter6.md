HTML layout by Tatu J. Lund Apr 1997

Network Working Group

Request for Comments: 1459

J. Oikarinen

D. Reed

May 1993

* * *

# 6. REPLIES

The following is a list of numeric replies which are generated in response to
the commands given above. Each numeric is given with its number, name and
reply string.

## 6.1 Error Replies.

401

    ERR_NOSUCHNICK  
_"<nickname> :No such nick/channel"_

- Used to indicate the nickname parameter supplied to a command is currently unused.
402

    ERR_NOSUCHSERVER  
_"<server name> :No such server"_

- Used to indicate the server name given currently doesn't exist.
403

    ERR_NOSUCHCHANNEL  
_"<channel name> :No such channel"_

- Used to indicate the given channel name is invalid.
404

    ERR_CANNOTSENDTOCHAN  
_"<channel name> :Cannot send to channel"_

- Sent to a user who is either (a) not on a channel which is mode +n or (b) not a chanop (or mode +v) on a channel which has mode +m set and is trying to send a PRIVMSG message to that channel.
405

    ERR_TOOMANYCHANNELS  
_"<channel name> :You have joined too many channels"_

- Sent to a user when they have joined the maximum number of allowed channels and they try to join another channel.
406

    ERR_WASNOSUCHNICK  
_"<nickname> :There was no such nickname"_

- Returned by WHOWAS to indicate there is no history information for that nickname.
407

    ERR_TOOMANYTARGETS  
_"<target> :Duplicate recipients. No message delivered"_

- Returned to a client which is attempting to send PRIVMSG/NOTICE using the user@host destination format and for a user@host which has several occurrences.
409

    ERR_NOORIGIN  
_":No origin specified"_

- PING or PONG message missing the originator parameter which is required since these commands must work without valid prefixes.
411

    ERR_NORECIPIENT  
_":No recipient given (<command>)"_

412

    ERR_NOTEXTTOSEND  
_":No text to send"_

413

    ERR_NOTOPLEVEL  
_"<mask> :No toplevel domain specified"_

414

    ERR_WILDTOPLEVEL  
_"<mask> :Wildcard in toplevel domain"_

- 412 - 414 are returned by PRIVMSG to indicate that the message wasn't delivered for some reason. ERR_NOTOPLEVEL and ERR_WILDTOPLEVEL are errors that are returned when an invalid use of "PRIVMSG $<server>" or "PRIVMSG #<host>" is attempted.
421

    ERR_UNKNOWNCOMMAND  
_"<command> :Unknown command"_

- Returned to a registered client to indicate that the command sent is unknown by the server.
422

    ERR_NOMOTD  
_":MOTD File is missing"_

- Server's MOTD file could not be opened by the server.
423

    ERR_NOADMININFO  
_"<server> :No administrative info available"_

- Returned by a server in response to an ADMIN message when there is an error in finding the appropriate information.
424

    ERR_FILEERROR  
_":File error doing <file op> on <file>"_

- Generic error message used to report a failed file operation during the processing of a message.
431

    ERR_NONICKNAMEGIVEN  
_":No nickname given"_

- Returned when a nickname parameter expected for a command and isn't found.
432

    ERR_ERRONEUSNICKNAME  
_"<nick> :Erroneus nickname"_

- Returned after receiving a NICK message which contains characters which do not fall in the defined set. See section x.x.x for details on valid nicknames.
433

    ERR_NICKNAMEINUSE  
_"<nick> :Nickname is already in use"_

- Returned when a NICK message is processed that results in an attempt to change to a currently existing nickname.
436

    ERR_NICKCOLLISION  
_"<nick> :Nickname collision KILL"_

- Returned by a server to a client when it detects a nickname collision (registered of a NICK that already exists by another server).
441

    ERR_USERNOTINCHANNEL  
_"<nick> <channel> :They aren't on that channel"_

- Returned by the server to indicate that the target user of the command is not on the given channel.
442

    ERR_NOTONCHANNEL  
_"<channel> :You're not on that channel"_

- Returned by the server whenever a client tries to perform a channel effecting command for which the client isn't a member.
443

    ERR_USERONCHANNEL  
_"<user> <channel> :is already on channel"_

- Returned when a client tries to invite a user to a channel they are already on.
444

    ERR_NOLOGIN  
_"<user> :User not logged in"_

- Returned by the summon after a SUMMON command for a user was unable to be performed since they were not logged in.
445

    ERR_SUMMONDISABLED  
_":SUMMON has been disabled"_

- Returned as a response to the SUMMON command. Must be returned by any server which does not implement it.
446

    ERR_USERSDISABLED  
_":USERS has been disabled"_

- Returned as a response to the USERS command. Must be returned by any server which does not implement it.
451

    ERR_NOTREGISTERED  
_":You have not registered"_

- Returned by the server to indicate that the client must be registered before the server will allow it to be parsed in detail.
461

    ERR_NEEDMOREPARAMS  
_"<command> :Not enough parameters"_

- Returned by the server by numerous commands to indicate to the client that it didn't supply enough parameters.
462

    ERR_ALREADYREGISTRED  
_":You may not reregister"_

- Returned by the server to any link which tries to change part of the registered details (such as password or user details from second USER message).
463

    ERR_NOPERMFORHOST  
_":Your host isn't among the privileged"_

- Returned to a client which attempts to register with a server which does not been setup to allow connections from the host the attempted connection is tried.
464

    ERR_PASSWDMISMATCH  
_":Password incorrect"_

- Returned to indicate a failed attempt at registering a connection for which a password was required and was either not given or incorrect.
465

    ERR_YOUREBANNEDCREEP  
_":You are banned from this server"_

- Returned after an attempt to connect and register yourself with a server which has been setup to explicitly deny connections to you.
467

    ERR_KEYSET  
_"<channel> :Channel key already set"_

471

    ERR_CHANNELISFULL  
_"<channel> :Cannot join channel (+l)"_

472

    ERR_UNKNOWNMODE  
_"<char> :is unknown mode char to me"_

473

    ERR_INVITEONLYCHAN  
_"<channel> :Cannot join channel (+i)"_

474

    ERR_BANNEDFROMCHAN  
_"<channel> :Cannot join channel (+b)"_

475

    ERR_BADCHANNELKEY  
_"<channel> :Cannot join channel (+k)"_

481

    ERR_NOPRIVILEGES  
_":Permission Denied- You're not an IRC operator"_

- Any command requiring operator privileges to operate must return this error to indicate the attempt was unsuccessful.
482

    ERR_CHANOPRIVSNEEDED  
_"<channel> :You're not channel operator"_

- Any command requiring 'chanop' privileges (such as MODE messages) must return this error if the client making the attempt is not a chanop on the specified channel.
483

    ERR_CANTKILLSERVER  
_":You cant kill a server!"_

- Any attempts to use the KILL command on a server are to be refused and this error returned directly to the client.
491

    ERR_NOOPERHOST  
_":No O-lines for your host"_

- If a client sends an OPER message and the server has not been configured to allow connections from the client's host as an operator, this error must be returned.
501

    ERR_UMODEUNKNOWNFLAG  
_":Unknown MODE flag"_

- Returned by the server to indicate that a MODE message was sent with a nickname parameter and that the a mode flag sent was not recognized.
502

    ERR_USERSDONTMATCH  
_":Cant change mode for other users"_

- Error sent to any user trying to view or change the user mode for a user other than themselves.

## 6.2 Command responses.

300

    RPL_NONE  
Dummy reply number. Not used.

302

    RPL_USERHOST  
_":[<reply>{<space><reply>}]"_

- Reply format used by USERHOST to list replies to the query list. The reply string is composed as follows:  
<reply> ::= <nick>['*'] '=' <'+'|'-'><hostname>

The '*' indicates whether the client has registered as an Operator. The '-' or
'+' characters represent whether the client has set an AWAY message or not
respectively.

303

    RPL_ISON  
_":[<nick> {<space><nick>}]"_

- Reply format used by ISON to list replies to the query list.
301

    RPL_AWAY  
_"<nick> :<away message>"_

305

    RPL_UNAWAY  
_":You are no longer marked as being away"_

306

    RPL_NOWAWAY  
_":You have been marked as being away"_

- These replies are used with the AWAY command (if allowed). RPL_AWAY is sent to any client sending a PRIVMSG to a client which is away. RPL_AWAY is only sent by the server to which the client is connected. Replies RPL_UNAWAY and RPL_NOWAWAY are sent when the client removes and sets an AWAY message.
311

    RPL_WHOISUSER  
_"<nick> <user> <host> * :<real name>"_

312

    RPL_WHOISSERVER  
_"<nick> <server> :<server info>"_

313

    RPL_WHOISOPERATOR  
_"<nick> :is an IRC operator"_

317

    RPL_WHOISIDLE  
_"<nick> <integer> :seconds idle"_

318

    RPL_ENDOFWHOIS  
_"<nick> :End of /WHOIS list"_

319

    RPL_WHOISCHANNELS  
_"<nick> :{[@|+]<channel><space>}"_

- Replies 311 - 313, 317 - 319 are all replies generated in response to a WHOIS message. Given that there are enough parameters present, the answering server must either formulate a reply out of the above numerics (if the query nick is found) or return an error reply. The '*' in RPL_WHOISUSER is there as the literal character and not as a wild card. For each reply set, only RPL_WHOISCHANNELS may appear more than once (for long lists of channel names). The '@' and '+' characters next to the channel name indicate whether a client is a channel operator or has been granted permission to speak on a moderated channel. The RPL_ENDOFWHOIS reply is used to mark the end of processing a WHOIS message.
314

    RPL_WHOWASUSER  
_"<nick> <user> <host> * :<real name>"_

369

    RPL_ENDOFWHOWAS  
_"<nick> :End of WHOWAS"_

- When replying to a WHOWAS message, a server must use the replies RPL_WHOWASUSER, RPL_WHOISSERVER or ERR_WASNOSUCHNICK for each nickname in the presented list. At the end of all reply batches, there must be RPL_ENDOFWHOWAS (even if there was only one reply and it was an error).
321

    RPL_LISTSTART  
_"Channel :Users Name"_

322

    RPL_LIST  
_"<channel> <# visible> :<topic>"_

323

    RPL_LISTEND  
_":End of /LIST"_

- Replies RPL_LISTSTART, RPL_LIST, RPL_LISTEND mark the start, actual replies with data and end of the server's response to a LIST command. If there are no channels available to return, only the start and end reply must be sent.
324

    RPL_CHANNELMODEIS  
_"<channel> <mode> <mode params>"_

331

    RPL_NOTOPIC  
_"<channel> :No topic is set"_

332

    RPL_TOPIC  
_"<channel> :<topic>"_

- When sending a TOPIC message to determine the channel topic, one of two replies is sent. If the topic is set, RPL_TOPIC is sent back else RPL_NOTOPIC. 
341

    RPL_INVITING  
_"<channel> <nick>"_

- Returned by the server to indicate that the attempted INVITE message was successful and is being passed onto the end client.
342

    RPL_SUMMONING  
_"<user> :Summoning user to IRC"_

- Returned by a server answering a SUMMON message to indicate that it is summoning that user.
351

    RPL_VERSION  
_"<version>.<debuglevel> <server> :<comments>"_

- Reply by the server showing its version details. The <version> is the version of the software being used (including any patchlevel revisions) and the <debuglevel> is used to indicate if the server is running in "debug mode".  
The "comments" field may contain any comments about the version or further
version details.

352

    RPL_WHOREPLY  
_"<channel> <user> <host> <server> <nick> <H|G>[*][@|+] :<hopcount> <real
name>"_

315

    RPL_ENDOFWHO  
_"<name> :End of /WHO list"_

- The RPL_WHOREPLY and RPL_ENDOFWHO pair are used to answer a WHO message. The RPL_WHOREPLY is only sent if there is an appropriate match to the WHO query. If there is a list of parameters supplied with a WHO message, a RPL_ENDOFWHO must be sent after processing each list item with <name> being the item.
353

    RPL_NAMREPLY  
_"<channel> :[[@|+]<nick> [[@|+]<nick> [...]]]"_

366

    RPL_ENDOFNAMES  
_"<channel> :End of /NAMES list"_

- To reply to a NAMES message, a reply pair consisting of RPL_NAMREPLY and RPL_ENDOFNAMES is sent by the server back to the client. If there is no channel found as in the query, then only RPL_ENDOFNAMES is returned. The exception to this is when a NAMES message is sent with no parameters and all visible channels and contents are sent back in a series of RPL_NAMEREPLY messages with a RPL_ENDOFNAMES to mark the end.
364

    RPL_LINKS  
_"<mask> <server> :<hopcount> <server info>"_

365

    RPL_ENDOFLINKS  
_"<mask> :End of /LINKS list"_

- In replying to the LINKS message, a server must send replies back using the RPL_LINKS numeric and mark the end of the list using an RPL_ENDOFLINKS reply.v 367 
    RPL_BANLIST  
_"<channel> <banid>"_

368

    RPL_ENDOFBANLIST  
_"<channel> :End of channel ban list"_

- When listing the active 'bans' for a given channel, a server is required to send the list back using the RPL_BANLIST and RPL_ENDOFBANLIST messages. A separate RPL_BANLIST is sent for each active banid. After the banids have been listed (or if none present) a RPL_ENDOFBANLIST must be sent.
371

    RPL_INFO  
_":<string>"_

374

    RPL_ENDOFINFO  
_":End of /INFO list"_

- A server responding to an INFO message is required to send all its 'info' in a series of RPL_INFO messages with a RPL_ENDOFINFO reply to indicate the end of the replies.
375

    RPL_MOTDSTART  
_":- <server> Message of the day - "_

372

    RPL_MOTD  
_":- <text>"_

376

    RPL_ENDOFMOTD  
_":End of /MOTD command"_

- When responding to the MOTD message and the MOTD file is found, the file is displayed line by line, with each line no longer than 80 characters, using RPL_MOTD format replies. These should be surrounded by a RPL_MOTDSTART (before the RPL_MOTDs) and an RPL_ENDOFMOTD (after).
381

    RPL_YOUREOPER  
_":You are now an IRC operator"_

- RPL_YOUREOPER is sent back to a client which has just successfully issued an OPER message and gained operator status.
382

    RPL_REHASHING  
_"<config file> :Rehashing"_

- If the REHASH option is used and an operator sends a REHASH message, an RPL_REHASHING is sent back to the operator.
391

    RPL_TIME  
_"<server> :<string showing server's local time>"_

- When replying to the TIME message, a server must send the reply using the RPL_TIME format above. The string showing the time need only contain the correct day and time there. There is no further requirement for the time string.
392

    RPL_USERSSTART  
_":UserID Terminal Host"_

393

    RPL_USERS  
_":%-8s %-9s %-8s"_

394

    RPL_ENDOFUSERS  
_":End of users"_

395

    RPL_NOUSERS  
_":Nobody logged in"_

- If the USERS message is handled by a server, the replies RPL_USERSTART, RPL_USERS, RPL_ENDOFUSERS and RPL_NOUSERS are used. RPL_USERSSTART must be sent first, following by either a sequence of RPL_USERS or a single RPL_NOUSER. Following this is RPL_ENDOFUSERS.
200

    RPL_TRACELINK  
_"Link <version & debug level> <destination> <next server>"_

201

    RPL_TRACECONNECTING  
_"Try. <class> <server>"_

202

    RPL_TRACEHANDSHAKE  
_"H.S. <class> <server>"_

203

    RPL_TRACEUNKNOWN  
_"???? <class> [<client IP address in dot form>]"_

204

    RPL_TRACEOPERATOR  
_"Oper <class> <nick>"_

205

    RPL_TRACEUSER  
_"User <class> <nick>"_

206

    RPL_TRACESERVER  
_"Serv <class> <int>S <int>C <server> <nick!user|*!*>@<host|server>"_

208

    RPL_TRACENEWTYPE  
_"<newtype> 0 <client name>"_

261

    RPL_TRACELOG  
_"File <logfile> <debug level>"_

- The RPL_TRACE* are all returned by the server in response to the TRACE message. How many are returned is dependent on the the TRACE message and whether it was sent by an operator or not. There is no predefined order for which occurs first. Replies RPL_TRACEUNKNOWN, RPL_TRACECONNECTING and RPL_TRACEHANDSHAKE are all used for connections which have not been fully established and are either unknown, still attempting to connect or in the process of completing the 'server handshake'. RPL_TRACELINK is sent by any server which handles a TRACE message and has to pass it on to another server. The list of RPL_TRACELINKs sent in response to a TRACE command traversing the IRC network should reflect the actual connectivity of the servers themselves along that path. RPL_TRACENEWTYPE is to be used for any connection which does not fit in the other categories but is being displayed anyway.
211

    RPL_STATSLINKINFO  
_"<linkname> <sendq> <sent messages> <sent bytes> <received messages>
<received bytes> <time open>"_

212

    RPL_STATSCOMMANDS  
_"<command> <count>"_

213

    RPL_STATSCLINE  
_"C <host> * <name> <port> <class>"_

214

    RPL_STATSNLINE  
_"N <host> * <name> <port> <class>"_

215

    RPL_STATSILINE  
_"I <host> * <host> <port> <class>"_

216

    RPL_STATSKLINE  
_"K <host> * <username> <port> <class>"_

218

    RPL_STATSYLINE  
_"Y <class> <ping frequency> <connect frequency> <max sendq>"_

219

    RPL_ENDOFSTATS  
_"<stats letter> :End of /STATS report"_

241

    RPL_STATSLLINE  
_"L <hostmask> * <servername> <maxdepth>"_

242

    RPL_STATSUPTIME  
_":Server Up %d days %d:%02d:%02d"_

243

    RPL_STATSOLINE  
_"O <hostmask> * <name>"_

244

    RPL_STATSHLINE  
_"H <hostmask> * <servername>"_

221

    RPL_UMODEIS  
_"<user mode string>"_

- To answer a query about a client's own mode, RPL_UMODEIS is sent back.
251

    RPL_LUSERCLIENT  
_":There are <integer> users and <integer> invisible on <integer> servers"_

252

    RPL_LUSEROP  
_"<integer> :operator(s) online"_

253

    RPL_LUSERUNKNOWN  
_"<integer> :unknown connection(s)"_

254

    RPL_LUSERCHANNELS  
_"<integer> :channels formed"_

255

    RPL_LUSERME  
_":I have <integer> clients and <integer> servers"_

- In processing an LUSERS message, the server sends a set of replies from RPL_LUSERCLIENT, RPL_LUSEROP, RPL_USERUNKNOWN, RPL_LUSERCHANNELS and RPL_LUSERME. When replying, a server must send back RPL_LUSERCLIENT and RPL_LUSERME. The other replies are only sent back if a non-zero count is found for them.
256

    RPL_ADMINME  
_"<server> :Administrative info"_

257

    RPL_ADMINLOC1  
_":<admin info>"_

258

    RPL_ADMINLOC2  
_":<admin info>"_

259

    RPL_ADMINEMAIL  
_":<admin info>"_

- When replying to an ADMIN message, a server is expected to use replies RLP_ADMINME through to RPL_ADMINEMAIL and provide a text message with each. For RPL_ADMINLOC1 a description of what city, state and country the server is in is expected, followed by details of the university and department (RPL_ADMINLOC2) and finally the administrative contact for the server (an email address here is required) in RPL_ADMINEMAIL.

## 6.3 Reserved numerics.

These numerics are not described above since they fall into one of the
following categories:

  1. no longer in use;
  2. reserved for future planned use;
  3. in current use but are part of a non-generic 'feature' of the current IRC server.

209

RPL_TRACECLASS

217

RPL_STATSQLINE

231

RPL_SERVICEINFO

232

RPL_ENDOFSERVICES

233

RPL_SERVICE

234

RPL_SERVLIST

235

RPL_SERVLISTEND

316

RPL_WHOISCHANOP

361

RPL_KILLDONE

362

RPL_CLOSING

363

RPL_CLOSEEND

373

RPL_INFOSTART

384

RPL_MYPORTIS

466

ERR_YOUWILLBEBANNED

476

ERR_BADCHANMASK

492

ERR_NOSERVICEHOST

* * *

[<](chapter5.html)

[^](rfc.html)

[>](chapter7.html)

* * *

![-navigational bar-](/irchelp/Pix/ihnavbar.gif)

[ [go back](/irchelp/) | [search](/irchelp/search_engine.cgi) |
[help](/irchelp/help.html) | [send email](/irchelp/mail.cgi) ]

[all pages (C) IRCHELP.ORG or original authors](/irchelp/credit.html)


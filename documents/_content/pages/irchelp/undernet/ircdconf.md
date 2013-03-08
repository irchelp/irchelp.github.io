# ircdconf

* * *
    
    
    
    # -----------------------------------------------------------------------------
    #                            IRC configuration file
    # -----------------------------------------------------------------------------
    # based on Version 1.0, internal revision number 19930701 --from Nap
    #
    # Changes by _dl for easier use... [and undernet patches]
    # _dl vers 5 - 030993
    #
    # there is a lot of crap at the beggining... jump to the end to make
    # your changes or search for %%%%
    #
    # --- technical details : --------
    # 
    # This ircd.conf uses m4 to lighten the configuration work.
    # You need to have #define M4_PREPROC in the server config.h
    # for this to work, and have a file called "ircd.m4" in the IRCD directory.
    # ircd.m4 is created by "make install"
    # Currently I don't use the macros in ircd.m4, so it can be empty :)
    # it just has to be there... so that m4 doesn't fail miserably.
    # "touch ircd.m4" >:-)
    #
    # The defaults classes for the CLIENTS and the SERVERS should be quite okay,
    # basically you only need to setup the SERVER INFO at the beginning and
    # insert uplinks and downlinks at the bottom.
    #
    # Remember this is only some *basic* settings to keep things *simple*.
    # You don't get the full features in there, but it should be more than
    # enough for normal use.
    # You should check doc/example.conf and doc/INSTALL
    # for more detailed explanations of all available options.
    #
    # The ircd.conf is parsed and stored in such a way that it's as if
    # it was read *backwards*, so if you want for instance to have a C/N
    # pair tried first, it should be located *LAST* in the ircd.conf.
    #
    # To get to a traditionnal ircd.conf, all you need to type is:
    #
    #              m4 ircd.conf | grep -v ^# | uniq
    #
    # Also remember to run "ircd/chkconf" and see if there is no problem!!!
    #
    # ------- Macros definitions... don't edit unless you're really sure ------
    # ------- of what you are doing ! Skip that part... search %%%%      ------
    #
    # PING_SERVER : server ping frequency in seconds
    # PING_CLIENT : client ping frequency in seconds
    define(PING_SERVER,120)
    define(PING_CLIENT,300)
    # --- Client Class.
    # CLIENT_MAX   : is the maximum number of clients you want connected.
    # CLIENT_CLASS : we'll put clients in class 1, no change needed.
    # CLIENT_SENDQ : limit in SendQ for clients, in bytes.
    define(CLIENT_MAX,100)
    define(CLIENT_CLASS,1)
    define(CLIENT_SENDQ,40000)
    # --- Server Class.
    # I usually define those classes for the servers, they may or may not
    # be appropriate for you.
    # A basic installation may not need the AUTOCON class, you can fairly
    # do with DOWNLINK and UPLINK.
    #
    # Class explanations:
    #   DOWNLINK : many downlinks, no autoconnect.
    #   UPLINK   : max 1 server connected, autoconnect.
    #   AUTOCON  : no max, autoconnect.
    # Note that uplinks you don't connect to normally go into the DOWNLINK class.
    # DOWNLINK_CLASS    : we'll put downlinks in class 5, no change needed.
    # AUTOCON_CLASS     : we'll put autoconnect in class 8, no change needed.
    # UPLINK_CLASS      : we'll put uplinks in class 9, no change needed.
    define(DOWNLINK_CLASS,5)
    define(AUTOCON_CLASS,8)
    define(UPLINK_CLASS,9)
    # SERVER_SENDQ      : limit in SendQ for servers, in bytes.
    # SERVER_MAXCONNECT : limit in the number of servers connected, per class.
    # UPLINK_CONNECT    : seconds for autoconnecting to the uplink.
    # AUTOCON_CONNECT   : seconds for autoconnecting to the servers.
    define(SERVER_SENDQ,400000)
    define(SERVER_MAXCONNECT,20)
    define(UPLINK_CONNECT,100)
    define(AUTOCON_CONNECT,300)
    Y:CLIENT_CLASS:PING_CLIENT:0:CLIENT_MAX:CLIENT_SENDQ
    Y:DOWNLINK_CLASS:PING_SERVER:0:SERVER_MAXCONNECT:SERVER_SENDQ
    Y:AUTOCON_CLASS:PING_SERVER:AUTOCON_CONNECT:SERVER_MAXCONNECT:SERVER_SENDQ
    Y:UPLINK_CLASS:PING_SERVER:UPLINK_CONNECT:1:SERVER_SENDQ
    # client auth... [I lines] macros
    define(IDENT,`ifelse(len($1),0,,*@$1)')
    define(CLIENT_DOAUTH,
    I:`IDENT($1)':$3:`IDENT(ifelse(len($2),0,$1,$2))'::CLIENT_CLASS)
    define(CLIENT_NOAUTH,I:$1:$3:`ifelse(len($2),0,$1,$2)'::CLIENT_CLASS)
    # operator macros...
    define(OPERATOR,O:$2:$3:$1::CLIENT_CLASS)
    define(LOCOP,o:$2:$3:$1::CLIENT_CLASS)
    # K lines macros
    define(CLIENT_KILLED,K:$1::`ifelse(len($2),0,*,$2)')
    # Port lines macros
    define(ADD_PORT,P:`ifelse(len($2),0,*,$2)':::$1)
    # Server macros
    #
    # changed by _dl in order that HUBS get automatically H * lines...
    # and that .UnderNet.Org is automatically added !
    #
    # if you need non 'UnderNet.org' versions use _STD macros...
    #
    define(SERVER_LEAF_STD,L:$2::$1:$3)
    define(SERVER_LEAF,L:`ifelse(len($2),0,,$2.UnderNet.org)'::$1.UnderNet.org:$3)
    define(SERVER_HUB_STD,H:`ifelse(len($2),0,*,$2)':*:$1)
    define(SERVER_HUB,H:`ifelse(len($2),0,*,$2.UnderNet.org)':*:$1.UnderNet.org)
    define(SERVER_DOWNLINK_STD,`
    C:$1:$2:ifelse(len($3),0,$1,$3)::DOWNLINK_CLASS
    N:$1:$2:ifelse(len($3),0,$1,$3):$4:DOWNLINK_CLASS
    ')
    define(SERVER_DOWNLINK,`
    C:$1:$2:ifelse(len($3),0,$1,$3.UnderNet.org)::DOWNLINK_CLASS
    N:$1:$2:ifelse(len($3),0,$1,$3.UnderNet.org):$4:DOWNLINK_CLASS
    ')
    define(SERVER_AUTOCON_STD,`
    C:$1:$2:ifelse(len($3),0,$1,$3):ifelse(len($4),0,6667,$4):AUTOCON_CLASS
    N:$1:$2:ifelse(len($3),0,$1,$3):$5:AUTOCON_CLASS
    ')
    define(SERVER_AUTOCON,`
    C:$1:$2:ifelse(len($3),0,$1,$3.UnderNet.org):ifelse(len($4),0,7000,$4):AUTOCON_CLASS
    N:$1:$2:ifelse(len($3),0,$1,$3.UnderNet.org):$5:AUTOCON_CLASS
    ')
    define(SERVER_UPLINK_STD,`
    C:$1:$2:ifelse(len($3),0,$1,$3):ifelse(len($4),0,6667,$4):UPLINK_CLASS
    N:$1:$2:ifelse(len($3),0,$1,$3):$5:UPLINK_CLASS
    SERVER_HUB_STD(ifelse(len($3),0,$1,$3))
    ')
    define(SERVER_UPLINK,`
    C:$1:$2:ifelse(len($3),0,$1,$3.UnderNet.org):ifelse(len($4),0,7000,$4):UPLINK_CLASS
    N:$1:$2:ifelse(len($3),0,$1,$3.UnderNet.org):$5:UPLINK_CLASS
    SERVER_HUB_STD(ifelse(len($3),0,$1,$3.UnderNet.org))
    ')
    # ------- end of macros definition, editable part is below : ---
    #
    #-----------------------------------------------------------------------
    #
    #    EDIT ONLY BELOW : (after the %%%%)
    #
    #-----------------------------------------------------------------------
    #   SERVERNAME : name of the server
    #   SERVERTEXT : text name
    #   SERVERPORT : port number the server will operate on. (7000 usually)
    #
    # Configure the output of the ADMIN command.
    #   ADMINLOCATION : where the server is located
    #   ADMINISTRATOR : who should be asked for problems related to the server
    #   ADMIN_EMAIL   : the administrator's electronic mail address
    #
    # [.UnderNet.org is added automatically]
    #
    # %%%%
    define(SERVERNAME,`MyTown.MyCountry_or_State.My_Continent_or_zone')
    define(SERVERTEXT,`Univerity of Schmolldu -MyTown - MyCountry')
    # You may will to put another port if 7000 is used  :
    define(SERVERPORT,7000)
    # have a look at other's /admin to get ideas...
    define(ADMINLOCATION, `Univerity of Schmolldu - Undernet server')
    define(ADMINISTRATOR, `Myname - My Department')
    define(ADMIN_EMAIL,   `My email - my Irc nick name')
    #
    # just skip those 2 next lines, don't edit them !
    M:SERVERNAME.UnderNet.org::SERVERTEXT:SERVERPORT
    A:ADMINLOCATION:ADMINISTRATOR:ADMIN_EMAIL
    
    # -----------------------------------------------------------------------------
    # Use the following to accept clients:
    # The first parameter should be an IP address, second a hostname.
    # You can add a passwd as field 3 if you want.
    #
    #   CLIENT_DOAUTH(ip#mask [,hostmask [,passwd]]) to allow clients and do auth,
    #   CLIENT_NOAUTH(ip#mask [,hostmask [,passwd]]) to bypass auth for clients.
    # You should be aware that the ip#mask and the hostmask are *NOT* related!
    # They only put the matching clients in the same class...
    # %%%%
    CLIENT_DOAUTH(*)
    # Most french servers have no authd 
    #CLIENT_NOAUTH(*.fr)
    
    # -----------------------------------------------------------------------------
    # %%%% Use the following to define operators:
    #   OPERATOR(nick,user@host,password)
    OPERATOR(mynick,*@mymachine.mysite.etc,put_here_a_crypted_passwd)
    # if you use LOCAL Operator defines in config.h :
    # LOCOP(anothernick,*@mymachine.mysite.etc,put_here_a_crypted_passwd)
    
    # -----------------------------------------------------------------------------
    # Use the following to forbid use of the server to troublesome users:
    # CLIENT_KILLED(hostmask [,user])
    #CLIENT_KILLED(*,root)
    #CLIENT_KILLED(*.oxy.edu)
    
    # -----------------------------------------------------------------------------
    # Use the following to add additionnal ports to listen to
    # Portnum : what the port is called
    # Where   : directory for unix-domain sockets,
    #           IP# mask to accept connections from, for internet sockets.
    #
    # ADD_PORT(portnum [,where])
    # %%%% if you want to listen on some other ports... add theses :
    ADD_PORT(6667)
    #ADD_PORT(6666)
    # unix domain sockets :
    #ADD_PORT(6666,/tmp/.ircd)
    
    # -----------------------------------------------------------------------------
    # you can skip to %%%% for simpler definition...
    #
    # Syntax for the definition of server links is:
    #   servername        : user@host of the remote server
    #   masked_servername : under which mask will the remote server will be known
    #   serverport        : remote server port number
    #   passwd            : password of the link
    #   stripcount        : how many parts of *MY* server name to strip.
    #                       for instance, if my servername is a.b.c.d.edu
    #                       and my stripcount 2, then the server will be seen on
    #                       the network as *.c.d.edu
    #
    # SERVER_DOWNLINK(Servername,Passwd [,MaskedServername [,Stripcount]] )
    # SERVER_AUTOCON(Servername,Passwd
    #                          [,MaskedServername [,Serverport [,Stripcount]] )
    # SERVER_UPLINK(Servername,Passwd
    #                          [,MaskedServername [,Serverport [,Stripcount]] )
    #
    # If no MaskedServername, it's assumed to be the same as Servername.
    # If Serverport is not specified a default value of 7000 is assumed.
    # If Stripcount is not there, your server won't be hostmasked.
    #
    # Remember, backup uplinks you don't connect to normally (no autoconnect)
    # go into the DOWNLINK list! sorry if the name is a little misguiding...
    #
    # MaskedServername is the *EXACT* name of the server as masked on the IRCnet.
    # ServerForbidden or ServerAllowed can have wildcards.
    # For SERVER_LEAF :
    #   the link to that server will be dropped if it tries to introduce
    #     - a server matching the ServerForbidden mask
    #     - more servers than the specified count
    # For SERVER_HUB :
    #   the link will be dropped if the server tries to introduce
    #     - a server for which a matching ServerAllowed mask does not exist.
    #
    # SERVER_LEAF(MaskedServername [,ServerForbidden [,count]] )
    # SERVER_HUB(MaskedServername [,ServerAllowed] )
    #
    # .undernet.org is added automagically, if you need 
    # non 'UnderNet.org' versions use _STD macros...
    #
    # %%%%
    # simply put 
    # SERVER_UPLINK(ip_of_your_uplink_no1,passwd,NameOfUplink[,port if different
    # than 7000])
    # for all your uplinks, don't add .UnderNet.org, it is added automatically
    # do the same with your downlinks if you have...(using SERVER_DOWNLINK())
    # (H lines for uplinks are added too)
    
    # This is a downlink which can introduce any server for france.
    # They use AUTHD do I can put "irc@" in the server part.
    #SERVER_DOWNLINK(irc@ip.ip.ip.ip,zzz,Perpet.Fr.Eu)
    #SERVER_HUB(Perpet.Fr.Eu,*.Fr.Eu)
    
    # A Leaf that can introduce 5 server and don't use ident max.
    #SERVER_DOWNLINK(ip.ip.ip.ip,passwd,SmallTown.SmallCountry.Continent)
    #SERVER_LEAF(SmallTown.SmallCountry.Continent,,5)
    
    # *.fi is hostmasked! can you believe that? :)
    #SERVER_DOWNLINK(128.214.6.100,finally,*.fi.Eu)
    #SERVER_HUB(*.fi.Eu)
    
    # The list of my uplinks, HUBS for the whole network.
    
    # for servers on port 6667 and still not on new 7000 :
    #SERVER_UPLINK(#ip.ip.ip.ip,passwd,Lame.Serv.WW,6667)
    
    # _dl's Hub :
    #SERVER_UPLINK(130.84.202.10,yourpasswdwithdl,Paris.Fr.EU)
    
    # McFly's Hub :
    #SERVER_UPLINK(130.223.205.3,yourpasswdwithmcfly,Lausanne.Ch.EU)
    
    # --- that's all folks ! --- It wasn't that hard eh ?
    

* * *



##### [Copyright (C) 1996,1997](/irchelp/credit.html) Joseph Lo and many
others.


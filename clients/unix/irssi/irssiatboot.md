---
title: Auto Start & Auto Connect Single or Multi Irssi Sessions in a Terminal or Screen
author: EmleyMoor, ShadowDog, and Jupiter/Mangelo
redirect_from:
   - /irchelp/clients/unix/irssi/irssiatboot.html
---
# Auto Start & Auto Connect Single or Multi Irssi Sessions in a Terminal or Screen

28 November 2012 -- rough draft 4

By EmleyMoor, ShadowDog, and Jupiter/Mangelo

A. Auto Connecting to an IRC Server and Some Channels on Irssi startup.

B. Setting Up Multiple Irssi Configurations.

C. Starting a Particular Irssi Session.

D. Additional Configurations.

E. Using Screen to Run Single or Multiple Irssi Sessions on a Remote Computer.

F. Using Cron to Set the Irssi/Screen Session to Automatically Start on Boot or Reboot.

This tutorial shows you how to have Irssi automatically connect to a server and automatically join one or more channels simply by typing “irssi” on the command line in a Linux terminal -- on a local or remote computer. It also shows you how to do this in a Screen process.

Additionally, the tutorial shows you how to do all the above as a cron job so that when you boot or reboot your Linux-based computer, Irssi  automatically will start, connect to a server, and join channels in a Screen process.

Irssi is a robustly configurable IRC client. And it has a rich and comprehensive script library. So, to start this project, we will configure a single Irssi session to automatically connect to a server and automatically join a channel or list of channels.

It is assumed that you already are familiar with Irssi and know how to connect to an IRC server with Irssi and how to join channels. If not, you will find basic instructions for using Irssi at irssi.org.

A. Auto Connecting to an IRC Server and Some Channels on Irssi startup.

1. Start Irssi from a Linux terminal command line by typing Irssi on the command line and pressing enter.  (You must have Irssi installed on your Linux-based computer. If not, you can download Irssi from irssi.org.)

2. Take a look at the list of servers already in the Irssi config file by typing /server list.

a. The default server list should look something like this:

	Server               Port  Network    Settings
	eu.irc6.net                IRCnet
	irc.open-ircnet.net        IRCnet
	irc.efnet.org              EFNet
	irc.undernet.org           Undernet
	irc.dal.net                DALnet
	irc.quakenet.org           QuakeNet
	irc.oftc.net               OFTC
	irc.gamesurge.net          GameSurge
	irc.webchat.org            WebChat
	irc.rizon.net              Rizon
	irc.link-net.org           LinkNet

3. Now, let’s set Irssi to connect to the default EFNet server when Irssi is started. To do this simply type at the command line and enter:

	/server add -auto -network EFNet irc.efnet.org

Then type /save to save this new addition.

Now, your server list should look like this:

	Server               Port   Network   Settings
	eu.irc6.net                 IRCnet
	irc.open-ircnet.net         IRCnet
	irc.efnet.org               EFNet     autoconnect
	irc.undernet.org            Undernet
	irc.dal.net                 DALnet
	irc.quakenet.org            QuakeNet
	irc.oftc.net                OFTC
	irc.gamesurge.net           GameSurge
	irc.webchat.org             WebChat
	irc.rizon.net               Rizon
	irc.link-net.org            LinkNet

Please notice that the irc.efnet.org entry now shows the autoconnect setting.

4. Next let’s set the config so that on connecting to irc.efnet.org, Irssi will automatically join some channels -- for example #irssi and #irchelp. To do that start Irssi and connect to an IRC server. Then type these lines at the command line and enter them:

	/channel add -auto #irssi EFNet
	/channel add -auto #irchelp EFNet

Then type /save to save this new addition.

Now, when you start Irssi, it will automatically connect to the generic EFNet server, irc.efnet.org and join channels #irssi and #irchelp.

B. Setting Up Multiple Irssi Configurations.

1. To do this trick, we will set up a unique Irssi config for each Irssi session we want to have. The Irssi config file is located in your home directory, for example,

~/.irssi/config  “~/” represents the home directory for your account, which is usually /home/username

2. Now start Irssi, telling it to use a different path for its configuration

	irssi --home=~/.irssi-1/

Where “~/” is the home directory for your account

This should start Irssi with a default config file stored in the new location that you gave.

5. With Irssi opened and using the  ~/.irssi-1/ directory, repeat the steps in Section A to set up an autoconnection and auto join scenario. However, use another server, not the generic irc.efnet.org server. This server can be another EFNet server of your choice or a server on a different IRC network, For example:

	/server add -auto -network DALnet irc.dal.net

6. Next set the config to autojoin some channels:

	/channel add -auto #irssi EFNet
	/channel add -auto #irchelp EFNet

Then type /save to save this new addition.

C. Starting a Particular Irssi Session.

Now you can start your original Irssi configuration simply by typeing “irssi” at the command line in your Linux terminal.

However, if you want to start your irssi-1 configuration, type this on the Linux terminal command line:

	irssi --home=~/.irssi-1/config

Where “~/” is the home directory for your account

D. Additional Configurations.

You can have more that just two Irssi confgurations. To create additional Irssi configurations, simply follow the steps outlined in Part B, above. Just make sure each config has it’s own unique irssi directory name such as ~/.irssi-1/, ~/.irssi-2/, ~/.irssi-3/ etc.

E. Using Screen to Run Single or Multiple Irssi Sessions on a Remote Computer.

Screen is a powerful Linux tool that let’s you open a “screen” and run one or more programs from within the screen. You can detach from the screen, leaving the programs running in the screen. And then you can later re-attach to the screen and interact with the programs you have running in screen.

You can take advantage of the Screen process by running Irssi sessions in a screen on a remote computer. This lets you detach from the screen, close your connection to the remote computer, yet let your Irssi sessions run as background processes even though you are not connected to the remote computer.

Then at a later time you can re-connect to the remote computer, re-attach to the screen, and carry on your IRC chatting.

1. Start by connecting to a remote Linux-based computer on which you have an account.

2. Open Screen by typing “screen” on the Linux terminal command line. This will open screen window 0.

3. After you have opened Screen, type “irssi” on the command line to start Irssi. Now it’s just like you were running Irssi on your own local computer. And you can configure Irssi to auto-connect to an irc server and to join channels just the way we did in Part A, above.

4. Now open a new window in screen by pressing the Ctrl+a then c keys. Then again start Irssi by typing “irssi” on the command line in what is now screen window 1. You can switch screen windows by pressing Ctrl+a then 0 to move to screen window 0 and Ctrl+a then 1 to switch to screen window 1.

5. Next, detach from the screen by pressing Ctrl+a then d.

6. That should take you out of the screen and put you back in the Linux terminal. Now, re-attach to the screen by typing and entering “screen -r”. Now you should be back in whatever Irssi screen window you were in before you detached from the screen.

7. Now kill the screen process by typing /quit in the irssi command line and then exit. This should kill the screen and put you back in the original Linux terminal command line.

8. Follow the steps in Part B to set up your ~/.irssi-1/ directory.

9. Then type “screen” to start a screen process. When in the first screen window, window 0, start Irssi by typing “irssi” on the command line. Now configure this irssi config the way you did in Part A..

10. Now open screen window 1 by pressing Ctrl+a then c. In this window open the .irssi-1 config by typing

		irssi --home=~/.irssi-1/

11. Next configure the ~/.irssi-1/ configuration the way you did it in Part B.

F. Using Cron to set the Irssi/Screen Session to Automatically Start on Boot or Reboot.

This is the really slick part of this procedure. A shell script is used to to start a Screen process and then to open Irssi sessions in the Screen process. This is then added to your crontab. By using the procedures set forth above, when cron does this, Irssi  automatically will connect to the selected servers and join the selected channels.

1. The shell Script to Start Irssi in a Screen Session.

You will need a shell script. This should be kept in your home directory – you can create it with the text editor of your choice, such as vi.

The example below starts three Irssi sessions in one screen session, each with a different config.

	#!/bin/bash
	screen -dmS irssi irssi
	screen -S irssi -X screen 1 irssi --home=~/.irssi-1/
	screen -S irssi -X screen 2 irssi --home=~/.irssi-2/

Call this file “startirssi” in your home directory, and do

	chmod u+x startirssi

to make it executable.

Next time you need to start irssi, do

	./startirssi

in your home directory, then

	screen -r irssi

will take you into the screen session, where you will find all three instances running.

2. The Cron Job to Start Irssi in a Screen on Boot/Reboot.

Now, suppose you want this to run automatically if the machine is rebooted. Provided it is just a simple reboot, rather than a power failure or crash, this is quite easy to do with cron, provided of course you have the necessary permissions. If it's your own machine, you probably do, and if not, you can ask the owner of the system.

Assuming you do have the permissions, do

	crontab -e

and your crontab file will be opened in your default editor. It may be full of comments (lines beginning #, which are ignored. Go to the end of the file and add a line that reads:

	@reboot	~/startirssi

Make sure there is a blank line visible in the file after this line.

If the system crashes or has a power failure, for example, this will not work – you will need to log in and run “startirssi” yourself. However, on a simple reboot, it should be run automatically, and you will be able to get into it with “screen -r irssi” right away.

Good luck -- enjoy. :-)

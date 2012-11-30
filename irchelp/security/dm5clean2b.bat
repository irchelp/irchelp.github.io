rem **    DMSETUP5 mirus removal routine   **
rem ** (c) NemIsYs - The Hackers Nightmare **
rem **=====================================**
c:
@echo off
cls
echo DMSETUP5 Removal - WARNING!
echo This routine uses low-level MS-DOS commands.
echo You WILL see lot's of "Deleting..." messages while it executes.
echo You may also see some "File not Found" messages.
echo THIS IS NORMAL - DO NOT PANIC!
echo _
echo ***** THIS UTILITY IS FOR WINDOWS 95/98 ONLY. DO NOT USE ON WINDOWS 3.1!! *****
echo **NO FILES YET MODIFIED**
echo Press CTRL+C to abort now or any other key to begin removal.
pause
echo **Phase one - removing invalid files from c:\ **
cd c:\
deltree /y *"ÿ"*
echo COMPLETED.
echo **Phase two - removing invalid files from c:\program files **
cd c:\progra~1
deltree /y *"ÿ"*
echo COMPLETED
echo ** Phase three - removing unwanted .exe files **
cd c:\
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
cd c:\dos
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
cd c:\progra~1
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
cd \windows
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
del logox.sys
cd \mirc
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
cd c:\mirc\download
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
cd c:\windows\system
del *.jpg.com
del *.jpg.exe
del *.jpg.bat
del *.jpg.sys
cd c:\
del ni.cfg
del taged.lmr
echo **File Removal Completed.**
Echo press a key to continue
pause
cls
echo ****MIRC CLEANUP****
echo The dmsetup5 virus attacks the script files in your copy
echo of mIRC. This program can remove these files but it will
echo also remove any other script files you may have. It is
echo recommended that you accept this option if you are unsure
echo of mIRC and it's scripting language. Advanced users will
echo not want to proceed but will still need to edit the mIRC
echo script and configuration files manually.
echo _
echo WARNING - IF YOU PROCEED YOU WILL LOOSE ALL SCRIPT FILES
echo WITHIN MIRC. ALL POPUPS,CONFIGURATIONS AND SCRIPTS WILL
ECHO BE REMOVED. YOU WILL NEED TO TOTALLY RECONFIGURE MIRC.
ECHO _
echo IF YOU DO NOT WANT TO PROCEED, HOLD THE CONTROL KEY (ctrl)
ECHO AND PRESS c NOW.
ECHO _
ECHO ANY OTHER KEY WILL WIPE THE MIRC CONFIGURATION.
pause
pause
cd c:\mirc
ren servers.ini servers.saf
del *.ini
ren servers.saf servers.ini
cls
echo Completed.
echo _
echo You must now edit your autoexec.bat file and remove the 
echo last two lines. One will be a copy command, the other
echo will end in -inauto.
echo When you have done this, the virus will be totally
echo gone from your system.
echo _
echo REMINDER - NEVER ACCEPT FILES FROM THOSE YOU DO NOT TRUST
echo In mirc, type /sreq ask to make sure you are asked EVERY
echo time someone sends a file whether or not to accept it.
Echo _
echo NemIsYs. The hackers nightmare.
pause


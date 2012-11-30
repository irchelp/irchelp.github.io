#!/bin/tcsh
#IRC Query log to HTML translator
#By Braddock Gaskill on 3 Feb 1996
#Last Modified 10 Feb 1996
#Copyright 1996 Braddock Gaskill
#Permission granted to use and redistribute this script any way you want
#No warrenty, I take no responsibility if this thing does anything harmful
#Blah bLah BLah, just be sure to let me know if you find it useful
#URL: http://pcil.ece.jhu.edu/~braddock
#e-mail: braddock@jhu.edu
echo "irctohtml.csh <source irc log> <your IRC nick>"
echo "example: irctohtml.csh IrcLog braddock"
echo "Replacing all > at start of lines with <$2>"
sed s/"^>"/"<$2>"/ $1 >$1.tmp0
echo "Replacing all -> at start of lines with $2->"
sed s/"^->"/"$2->"/ $1.tmp0 >$1.tmp1
echo "Replacing all occurances of angled brackets with &gt and &lt"
sed s/">"/"\&gt;"/ $1.tmp1 >$1.tmp2
sed s/"<"/"\&lt;"/ $1.tmp2 >$1.tmp3
echo "Italicising names in angled brackets"
sed s/"^&lt;.*&gt;"/"<EM>&<\/EM>"/ $1.tmp3 >$1.tmp4
echo "Italicising names in asterix (from msgs)"
sed s/"^\*[^ ]*\*"/"<EM>&<\/EM>"/ $1.tmp4 > $1.tmp0
sed s/"-&gt; \*.*\*"/"<EM>&<\/EM>"/ $1.tmp0 >$1.tmp4
echo "Putting <BR> at each newline"
sed s/\$/"<BR>&"/ $1.tmp4 >$1.tmp0
rm $1.tmp4
mv $1.tmp0 $1.tmp4
echo "Putting YOUR name in bold"
sed s/"&lt;$2&gt;"/"<B>&<\/B>"/ $1.tmp4 >$1.tmp0
sed s/"^$2"/"<B>&<\/B>"/ $1.tmp0 >$1.tmp5
echo "Adding HTML header and footer information"
cat <<EOF >$1.tmp6
<HTML>
<HEAD>
<TITLE>IRC Log</TITLE>
</HEAD>
<BODY>
EOF
cat $1.tmp6 $1.tmp5 >$1.tmp7
cat <<EOF >$1.tmp6
</BODY>
</HTML>
EOF
cat $1.tmp7 $1.tmp6 >$1.html
echo "Erasing .tmp files..."
rm $1.tmp*
echo "done"

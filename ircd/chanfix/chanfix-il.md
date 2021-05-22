---
title: 'CHANFIX: EFnet op-less channel fixing'
author: Arik Salomon
datecreated: 19 October 2003
status: historical
layout: default
---

{::nomarkdown}


<style>
<!--
 /* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-parent:"";
	margin:0in;
	margin-bottom:.0001pt;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";
	color:#7A0818;}
h1
	{margin-right:0in;
	mso-margin-top-alt:auto;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:1;
	font-size:24.0pt;
	font-family:"Times New Roman";
	color:#7A0818;
	mso-font-kerning:18.0pt;
	font-weight:bold;}
h2
	{margin-right:0in;
	mso-margin-top-alt:auto;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:2;
	font-size:18.0pt;
	font-family:"Times New Roman";
	color:#7A0818;
	font-weight:bold;}
h3
	{margin-right:0in;
	mso-margin-top-alt:auto;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	mso-outline-level:3;
	font-size:13.5pt;
	font-family:"Times New Roman";
	color:#7A0818;
	font-weight:bold;}
a:link, span.MsoHyperlink
	{color:blue;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{color:blue;
	text-decoration:underline;
	text-underline:single;}
p
	{margin-right:0in;
	mso-margin-top-alt:auto;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	mso-pagination:widow-orphan;
	font-size:12.0pt;
	font-family:"Times New Roman";
	mso-fareast-font-family:"Times New Roman";
	color:#7A0818;}
tt
	{mso-ascii-font-family:"Courier New";
	mso-fareast-font-family:"Courier New";
	mso-hansi-font-family:"Courier New";
	mso-bidi-font-family:"Courier New";}
@page Section1
	{size:595.3pt 841.9pt;
	margin:1.0in 1.25in 1.0in 1.25in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.Section1
	{page:Section1;}
-->
</style>


<div class=Section1>

<h1 align=right style='text-align:right'><span lang=EN style='mso-ansi-language:
EN;mso-fareast-language:EN'>CHANFIX<span style="mso-spacerun: yes">&nbsp;
</span></span><span dir=RTL></span><span lang=HE dir=RTL style='mso-ansi-language:
EN;mso-fareast-language:EN'><span dir=RTL></span>: &#1514;&#1497;&#1511;&#1493;&#1503; &#1506;&#1512;&#1493;&#1509;</span><span
lang=EN style='mso-ansi-language:EN;mso-fareast-language:EN'>EFnet </span><span
style='mso-fareast-language:EN'><o:p></o:p></span></h1>

<p align=right style='text-align:right'><span lang=EN style='font-size:10.0pt;
mso-ansi-language:EN;mso-fareast-language:EN'>by Jolo, tiggergrm and many
others<br>
Original version at </span><span lang=EN style='font-size:10.0pt;mso-ansi-language:
EN'><a href="/ircd/chanfix/"><span
style='mso-fareast-language:EN'>http://www.irchelp.org/irchelp/ircd/chanfix/</span></a></span><span
lang=EN style='font-size:10.0pt;mso-ansi-language:EN;mso-fareast-language:EN'><br>
updated Mar 28, 2003 , Translate to Hebrew by ariX Oct 16, 2003 </span><!--
03/27/03 tiggergrm reorganized structure to move most frequent FAQs to top and revised language throughout for more user-friendliness, Jolo nixed can/cannot sections, moved '1.what is chanfix' to opening introduction, and revised throughout for even more clarity.
--><span lang=EN style='mso-ansi-language:EN;mso-fareast-language:EN'><o:p></o:p></span></p>

<p align=right style='text-align:right'><span lang=HE dir=RTL style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1494;&#1492; &#1513;&#1512;&#1493;&#1514; &#1489;&#1488;&#1508;&#1504;&#1496; &#1513;&#1502;&#1495;&#1494;&#1497;&#1512;
&#1488;&#1493;&#1508;&#1497;&#1501; &#1500;&quot;&#1488;&#1493;&#1508;&#1497;&#1501; &#1512;&#1490;&#1497;&#1500;&#1497;&#1501;&quot; &#1513;&#1500; &#1506;&#1512;&#1493;&#1509; &#1497;&#1510;&#1497;&#1489;. &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1494;&#1492; &#1500;&#1488; &#1499;&#1502;&#1493; &#1510;'&#1488;&#1504;&#1505;&#1512;&#1489; &#1488;&#1493; &#1513;&#1512;&#1493;&#1514;&#1497;
&#1512;&#1497;&#1513;&#1493;&#1501; &#1488;&#1495;&#1512;&#1497;&#1501;, &#1513;&#1497;&#1513; &#1513;&#1501; &#1502;&#1511;&#1497;&#1501; &#1492;&#1506;&#1512;&#1493;&#1509; (&#1508;&#1488;&#1493;&#1504;&#1491;&#1512;) &#1513;&#1492;&#1493;&#1488; &#1494;&#1492; &#1513;&#1513;&#1493;&#1500;&#1496; &#1489;&#1506;&#1512;&#1493;&#1509; &#1500;&#1506;&#1493;&#1500;&#1501; &#1493;&#1506;&#1491;. &#1489;&#1502;&#1511;&#1493;&#1501; &#1494;&#1492;
&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1491;&#1493;&#1490;&#1501; &#1489;&#1511;&#1489;&#1497;&#1506;&#1493;&#1514; &#1488;&#1514; &#1492;&#1512;&#1513;&#1514; &#1493;&#1502;&#1510;&#1489; &#1492;&#1506;&#1512;&#1493;&#1510;&#1497;&#1501; &#1493;&#1513;&#1493;&#1502;&#1512; &#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1489;&#1502;&#1505;&#1491; &#1504;&#1514;&#1493;&#1504;&#1497;&#1501; &#1499;&#1502;&#1492; &#1494;&#1502;&#1503; &#1499;&#1500; &#1488;&#1495;&#1491;
&#1492;&#1495;&#1494;&#1497;&#1511; &#1488;&#1493;&#1508; &#1489;&#1499;&#1500; &#1506;&#1512;&#1493;&#1509;. &#1492;&#1506;&#1512;&#1493;&#1509; &#1493;&#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1495;&#1497;&#1497;&#1489;&#1497;&#1501; &#1500;&#1513;&#1502;&#1493;&#1512; &#1506;&#1500; &#1495;&#1493;&#1511;&#1497;&#1501; &#1502;&#1505;&#1493;&#1497;&#1502;&#1497;&#1501; &#1513;&#1504;&#1510;&#1497;&#1497;&#1503; &#1489;&#1492;&#1502;&#1513;&#1498;. &#1492;&#1488;&#1493;&#1508;&#1497;&#1501;
&#1492;&#1512;&#1490;&#1497;&#1500;&#1497;&#1501; &#1492;&#1501; &#1488;&#1500;&#1493; &#1513;&#1502;&#1495;&#1494;&#1497;&#1511;&#1497;&#1501; &#1488;&#1493;&#1508; &#1489;&#1492;&#1514;&#1488;&#1501; &#1500;&#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1513;&#1511;&#1497;&#1489;&#1500;&#1493; &#1489;&#1502;&#1513;&#1498; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501;. &#1488;&#1514;&#1492; &#1514;&#1506;&#1502;&#1493;&#1491;
&#1497;&#1493;&#1514;&#1512; &#1493;&#1497;&#1493;&#1514;&#1512; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1499;&#1499;&#1500; &#1513;&#1514;&#1495;&#1494;&#1497;&#1511; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508; &#1493;&#1499;&#1502;&#1493;&#1489;&#1503; &#1514;&#1511;&#1489;&#1500; &#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1506;&#1500; &#1499;&#1498;. &#1488;&#1501; &#1492;&#1506;&#1512;&#1493;&#1509; &#1492;&#1508;&#1505;&#1497;&#1491; &#1488;&#1514;
&#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1490;&#1500;&#1500; &#1499;&#1500; &#1502;&#1497;&#1504;&#1497; &#1505;&#1497;&#1489;&#1493;&#1514;, &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1489;&#1488;&#1493;&#1508;&#1503; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497; &#1497;&#1495;&#1494;&#1497;&#1512; &#1488;&#1493;&#1508; &#1500;&#1499;&#1500; &#1488;&#1495;&#1491; &#1513;&#1506;&#1493;&#1502;&#1491; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514;
&#1493;&#1504;&#1502;&#1510;&#1488; &#1499;&#1513;&#1497;&#1512;. &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1502;&#1513;&#1514;&#1502;&#1513; &#1489;&#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1506;&#1500; &#1502;&#1504;&#1514; &#1500;&#1492;&#1495;&#1500;&#1497;&#1496; &#1502;&#1497; &#1502;&#1511;&#1489;&#1500; &#1488;&#1493;&#1508; &#1489;&#1488;&#1493;&#1508;&#1503; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497; , &#1488;&#1504;&#1495;&#1504;&#1493;
&#1500;&#1488; &#1497;&#1499;&#1493;&#1500;&#1497;&#1501; &#1500;&#1511;&#1495;&#1514; &#1488;&#1493; &#1500;&#1514;&#1514; &#1488;&#1493;&#1508; &#1500;&#1488;&#1507; &#1488;&#1495;&#1491; &#1489;&#1488;&#1493;&#1508;&#1503; &#1513;&#1512;&#1497;&#1512;&#1493;&#1514;&#1497;. &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1494;&#1492; &#1492;&#1502;&#1493;&#1510;&#1488; &#1492;&#1488;&#1495;&#1512;&#1493;&#1503;, &#1494;&#1492; &#1500;&#1488;
&#1504;&#1493;&#1506;&#1491; &#1500;&#1504;&#1493;&#1495;&#1497;&#1493;&#1514;&#1498; &#1488;&#1493; &#1514;&#1495;&#1500;&#1497;&#1507; &#1500;&#1504;&#1497;&#1492;&#1493;&#1500; &#1514;&#1511;&#1497;&#1503; &#1513;&#1500; &#1492;&#1506;&#1512;&#1493;&#1509;. &#1488;&#1514;&#1492; &#1506;&#1491;&#1497;&#1497;&#1503; &#1502;&#1495;&#1493;&#1497;&#1489; &#1500;&#1492;&#1512;&#1497;&#1509; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498;
&#1489;&#1510;&#1493;&#1512;&#1492; &#1514;&#1511;&#1497;&#1504;&#1492;, &#1499;&#1490;&#1493;&#1503; &#1489;&#1491;&#1497;&#1511;&#1514;<span style="mso-spacerun: yes">&nbsp; </span></span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1492;&#1493;&#1505;&#1496;@&#1497;&#1493;&#1494;&#1512; &#1493;&#1490;&#1501; &#1489;&#1491;&#1497;&#1511;&#1514;
&#1505;&#1497;&#1505;&#1502;&#1488; &#1500;&#1508;&#1504;&#1497; &#1502;&#1514;&#1503; &#1488;&#1493;&#1508; &#1500;&#1502;&#1513;&#1492;&#1493;. &#1502;&#1514;&#1503; &#1488;&#1493;&#1508; &#1497;&#1491;&#1504;&#1497; , &#1488;&#1508;&#1497;&#1500;&#1493; &#1500;&#1502;&#1513;&#1492;&#1493; &#1513;&#1488;&#1514;&#1492; &#1495;&#1493;&#1513;&#1489; &#1513;&#1488;&#1514;&#1492; &#1502;&#1499;&#1497;&#1512; &#1494;&#1492; &#1502;&#1514;&#1499;&#1493;&#1503;
&#1500;&#1488;&#1505;&#1493;&#1503;.</span><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN'><span dir=LTR></span><o:p></o:p></span></p>

<p align=right style='text-align:right'><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN'>&#1492;&#1492;&#1493;&#1512;&#1488;&#1493;&#1514; &#1492;&#1488;&#1500;&#1493; &#1497;&#1506;&#1513;&#1493; &#1500;&#1498; &#1492;&#1499;&#1512;&#1493;&#1514; &#1506;&#1501; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1493;&#1497;&#1505;&#1508;&#1512;&#1493; &#1500;&#1498;
&#1488;&#1497;&#1498; &#1500;&#1511;&#1489;&#1500; &#1506;&#1494;&#1512;&#1492; &#1502;&#1502;&#1504;&#1493;. &#1492;&#1506;&#1502;&#1493;&#1491; &#1492;&#1494;&#1492; &#1506;&#1512;&#1493;&#1498; &#1506;&#1500; &#1502;&#1504;&#1514; &#1500;&#1506;&#1504;&#1493;&#1514; &#1500;&#1513;&#1488;&#1500;&#1493;&#1514; &#1492;&#1504;&#1508;&#1493;&#1510;&#1493;&#1514; &#1489;&#1497;&#1493;&#1514;&#1512;. &#1514;&#1505;&#1514;&#1499;&#1500; &#1489;&#1489;&#1511;&#1513;&#1492;
&#1506;&#1500; &#1492;&#1502;&#1510;&#1489; &#1492;&#1502;&#1497;&#1493;&#1495;&#1491; &#1513;&#1488;&#1514;&#1492; &#1504;&#1502;&#1510;&#1488; &#1489;&#1493; &#1493;&#1514;&#1511;&#1512;&#1488; &#1488;&#1514; &#1492;&#1514;&#1513;&#1493;&#1489;&#1492;, &#1489;&#1491;&#1512;&#1498; &#1492;&#1494;&#1488;&#1514; &#1514;&#1493;&#1499;&#1500; &#1500;&#1492;&#1489;&#1497;&#1503; &#1506;&#1500; &#1502;&#1492; &#1488;&#1504;&#1493; &#1502;&#1491;&#1489;&#1512;&#1497;&#1501;
&#1499;&#1488;&#1513;&#1512; &#1504;&#1491;&#1489;&#1512; &#1488;&#1514;&#1498; &#1489;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; .</span><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></p>

<p align=right style='text-align:right'><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN'>&#1489;&#1489;&#1511;&#1513;&#1492; &#1514;&#1504;&#1505;&#1492; &#1500;&#1492;&#1489;&#1497;&#1503; , &#1488;&#1504;&#1493; &#1500;&#1488; &#1488;&#1500;&#1493; &#1513;&#1513;&#1489;&#1512;&#1504;&#1493; &#1500;&#1498; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509;,
&#1494;&#1492; &#1500;&#1488; &#1492;&#1488;&#1513;&#1502;&#1492; &#1513;&#1500;&#1504;&#1493;, &#1488;&#1494; &#1488;&#1500; &#1514;&#1493;&#1510;&#1497;&#1488; &#1488;&#1514; &#1492;&#1494;&#1506;&#1501; &#1513;&#1500;&#1498; &#1506;&#1500;&#1497;&#1504;&#1493;. &#1488;&#1504;&#1493; &#1505;&#1514;&#1501; &#1502;&#1514;&#1504;&#1491;&#1489;&#1497;&#1501; &#1513;&#1502;&#1504;&#1505;&#1497;&#1501; &#1500;&#1506;&#1494;&#1493;&#1512;, &#1488;&#1494;
&#1489;&#1489;&#1511;&#1513;&#1492; &#1499;&#1489;&#1491; &#1488;&#1493;&#1514;&#1504;&#1493; &#1489;&#1504;&#1497;&#1502;&#1493;&#1505; &#1493;&#1488;&#1491;&#1497;&#1489;&#1493;&#1514;.</span><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></p>

<p align=right style='text-align:right'><span style='font-size:14.0pt;
mso-fareast-language:EN'><![if !supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></p>

<p dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><span
dir=RTL></span><span lang=HE style='font-size:24.0pt;mso-ansi-language:EN;
mso-fareast-language:EN'><a href="#register">1. &#1488;&#1497;&#1498; &#1488;&#1504;&#1497; &#1504;&#1512;&#1513;&#1501; &#1500;- &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1488;&#1493; &#1490;&#1493;&#1512;&#1501;
&#1500;&#1493; &#1500;&#1506;&#1489;&#1493;&#1491;?</a></span><span dir=LTR></span><span dir=LTR style='font-size:24.0pt;
mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></p>

<p dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><span
dir=RTL></span><span lang=HE style='font-size:24.0pt;mso-fareast-language:EN'><a
href="#_&#1492;&#1506;&#1512;&#1493;&#1509;_&#1513;&#1500;&#1497;_&#1489;&#1500;&#1497;">2. &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1497; &#1489;&#1500;&#1497; &#1488;&#1493;&#1508;&#1497;&#1501;, &#1488;&#1497;&#1498; &#1488;&#1504;&#1497; &#1502;&#1511;&#1489;&#1500; &#1488;&#1493;&#1508; &#1489;&#1495;&#1494;&#1512;&#1492; ?<span
dir=LTR></span><span dir=LTR><span dir=LTR></span> </span><span dir=RTL></span></a><span
style="mso-spacerun: yes">&nbsp;</span><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><a
href="#_2&#1488;._&#1492;&#1514;&#1504;&#1488;&#1497;&#1501;_&#1500;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;"><span style="mso-spacerun: yes">&nbsp;</span>&#1488;. &#1492;&#1514;&#1504;&#1488;&#1497;&#1501;
&#1500;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1492;&#1495;&#1494;&#1512;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509; &#1500;&#1500;&#1488; &#1488;&#1493;&#1508;&#1497;&#1501;</a><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><a href="#_&#1488;&#1501;_&#1488;&#1489;&#1491;&#1514;_&#1488;&#1514;_1">&#1489;. &#1500;&#1502;&#1492;
&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1488; &#1502;&#1495;&#1494;&#1497;&#1512; &#1500;&#1497; &#1488;&#1493;&#1508;&#1497;&#1501; &#1499;&#1488;&#1513;&#1512; &#1488;&#1497;&#1503; &#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509;?</a><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><a href="#_2&#1490;._&#1500;&#1502;&#1492;_&#1488;&#1514;&#1492;"><span
style="mso-spacerun: yes">&nbsp;</span>&#1490;. &#1500;&#1502;&#1492; &#1488;&#1514;&#1492; &#1500;&#1488; &#1497;&#1499;&#1493;&#1500; &#1500;&#1514;&#1514; &#1500;&#1497; &#1488;&#1493;&#1508; &#1493;&#1494;&#1492;&#1493;?</a><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><a href="#_&#1502;&#1497;&#1514;&#1493;&#1505;_&#1492;&#1488;&#1493;&#1508;&#1512;&#1497;&#1501;">3. &#1497;&#1513;
&#1500;&#1504;&#1493; &#1506;&#1491;&#1497;&#1497;&#1503; &#1488;&#1493;&#1508;&#1497;&#1501; , &#1488;&#1489;&#1500; &#1499;&#1493;&#1500;&#1501; &#1497;&#1493;&#1513;&#1504;&#1497;&#1501; , &#1492;&#1488;&#1501; &#1488;&#1514;&#1492; &#1497;&#1499;&#1493;&#1500; &#1500;&#1514;&#1514; &#1500;&#1497; &#1488;&#1493;&#1508; &#1489;&#1502;&#1511;&#1493;&#1501; ?</a><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-ansi-language:EN;mso-fareast-language:EN'><a
href="#_&#1502;&#1497;&#1514;&#1493;&#1505;_&#1492;&#1488;&#1493;&#1508;&#1512;&#1497;&#1501;">4. <span style='mso-ansi-language:EN-US'>&#1492;&#1506;&#1512;&#1493;&#1509; &#1504;&#1500;&#1511;&#1495; &#1489;&#1499;&#1495;
(&#1496;&#1497;&#1497;&#1511; &#1488;&#1493;&#1489;&#1512;) , &#1514;&#1506;&#1494;&#1512;&#1493; &#1500;&#1497; &#1489;&#1489;&#1511;&#1513;&#1492;?</span></a><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><a href="#_6._&#1502;&#1497;&#1491;&#1506;_&#1504;&#1493;&#1505;&#1507;">5.
&#1488;&#1497;&#1498; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1513;&#1493;&#1502;&#1512; &#1504;&#1511;&#1493;&#1491;&#1493;&#1514;?</a> </span><span lang=HE style='font-size:24.0pt;
mso-ansi-language:EN;mso-fareast-language:EN'><o:p></o:p></span></p>

<p class=MsoNormal dir=RTL style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;text-align:right;direction:rtl;unicode-bidi:embed'><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><a href="#_&#1502;&#1497;&#1491;&#1506;_&#1504;&#1493;&#1505;&#1507;_.6">6. &#1502;&#1497;&#1491;&#1506;
&#1504;&#1493;&#1505;&#1507;</a><o:p></o:p></span></p>

<p class=MsoNormal align=right style='mso-margin-top-alt:auto;mso-margin-bottom-alt:
auto;margin-left:.25in;text-align:right'><span lang=HE dir=RTL
style='font-size:24.0pt;mso-fareast-language:EN'><![if !supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></p>

<h2 dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><a
name=register></a><a name="_1._&#1488;&#1497;&#1498;_&#1488;&#1504;&#1497;"></a><span lang=HE style='font-size:
24.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>1. &#1488;&#1497;&#1498; &#1488;&#1504;&#1497; &#1504;&#1512;&#1513;&#1501; &#1500;- &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;
&#1488;&#1493; &#1490;&#1493;&#1512;&#1501; &#1500;&#1493; &#1500;&#1506;&#1489;&#1493;&#1491;?</span><span dir=LTR></span><span dir=LTR style='mso-fareast-language:
EN'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><a name="_&#1488;&#1514;&#1492;_&#1500;&#1488;_&#1512;&#1493;&#1513;&#1501;"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN;font-weight:normal'>&#1488;&#1514;&#1492;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1500;&#1488;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1512;&#1493;&#1513;&#1501;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1488;&#1514;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1492;&#1506;&#1512;&#1493;&#1509;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1513;&#1500;&#1498;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1506;&#1501;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'> </span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1510;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>'</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>.</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> &#1488;&#1514;&#1492; &#1510;&#1512;&#1497;&#1498; &#1512;&#1511; &#1500;&#1491;&#1488;&#1493;&#1490; &#1499;&#1498; &#1513;&#1510;&#1488;'&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1494;&#1492;&#1492; &#1502;&#1505;&#1508;&#1512; &#1514;&#1504;&#1488;&#1497;&#1501;. </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1489;&#1488;&#1493;&#1508;&#1503; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497; &#1506;&#1493;&#1511;&#1489; &#1488;&#1495;&#1512;&#1497; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509;. &#1489;&#1504;&#1493;&#1505;&#1507;, &#1488;&#1501; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498; &#1506;&#1493;&#1502;&#1491;
&#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1493;&#1492;&#1508;&#1505;&#1491;&#1514; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501;, &#1488;&#1494; &#1488;&#1514;&#1492; &#1500;&#1488; &#1510;&#1512;&#1497;&#1498; &#1500;&#1511;&#1512;&#1493;&#1488; &#1500;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;, &#1492;&#1493;&#1488; &#1497;&#1495;&#1494;&#1497;&#1512; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1489;&#1488;&#1493;&#1508;&#1503;
&#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497;.</span><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><a
name="_&#1492;&#1506;&#1512;&#1493;&#1509;_&#1513;&#1500;&#1497;_&#1489;&#1500;&#1497;"></a><span dir=RTL></span><span lang=HE style='font-size:
24.0pt;mso-fareast-language:EN'><span dir=RTL></span>2. &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1497; &#1489;&#1500;&#1497; &#1488;&#1493;&#1508;&#1497;&#1501;, &#1488;&#1497;&#1498;
&#1488;&#1504;&#1497; &#1502;&#1511;&#1489;&#1500; &#1488;&#1493;&#1508; &#1489;&#1495;&#1494;&#1512;&#1492; ?</span><span dir=LTR></span><span dir=LTR style='font-size:
24.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><a name="_&#1488;&#1501;_&#1488;&#1489;&#1491;&#1514;_&#1488;&#1514;"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1488;&#1501; &#1488;&#1489;&#1491;&#1514; &#1488;&#1514; </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN'>&#1499;&#1500; </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1492;&#1488;&#1493;&#1508;&#1497;&#1501;, &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1495;&#1494;&#1497;&#1512; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497;
&#1489;&#1514;&#1504;&#1488;&#1497; &#1513;&#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498; &#1506;&#1502;&#1491; </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN'>&#1489;&#1499;&#1500; </span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN;font-weight:normal'>&#1492;&#1514;&#1504;&#1488;&#1497;&#1501; &#1492;&#1502;&#1508;&#1493;&#1512;&#1496;&#1497;&#1501; &#1500;&#1492;&#1500;&#1503;. &#1492;&#1514;&#1492;&#1500;&#1497;&#1507;
&#1492;&#1494;&#1492; &#1500;&#1493;&#1511;&#1495; &#1500;&#1508;&#1506;&#1502;&#1497;&#1501; &#1502;&#1505;&#1508;&#1512; &#1491;&#1511;&#1493;&#1514; &#1488;&#1493; &#1500;&#1508;&#1506;&#1502;&#1497;&#1501; &#1513;&#1506;&#1493;&#1514;, &#1514;&#1500;&#1493;&#1497; &#1499;&#1502;&#1492; &#1489;&#1511;&#1489;&#1497;&#1506;&#1493;&#1514; &#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1495;&#1494;&#1497;&#1511;&#1493; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;.
&#1488;&#1504;&#1513;&#1497;&#1501; &#1513;&#1492;&#1495;&#1494;&#1497;&#1511;&#1493; &#1488;&#1493;&#1508; &#1499;&#1500; &#1492;&#1494;&#1502;&#1503; &#1504;&#1493;&#1496;&#1497;&#1501; &#1500;&#1511;&#1489;&#1500; &#1488;&#1493;&#1508; &#1495;&#1494;&#1512;&#1492; &#1502;&#1492;&#1512;. &#1488;&#1514;&#1492; &#1500;&#1488; &#1497;&#1499;&#1493;&#1500; &#1500;&#1511;&#1512;&#1493;&#1488; &#1488;&#1493; &#1500;&#1492;&#1494;&#1502;&#1497;&#1503; &#1488;&#1514;
&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1506;&#1513;&#1493;&#1514; &#1488;&#1514; &#1492;&#1506;&#1489;&#1493;&#1491;&#1492;. &#1488;&#1501; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1504;&#1499;&#1504;&#1505; &#1500;&#1506;&#1512;&#1493;&#1509; &#1493;&#1506;&#1494;&#1489; &#1502;&#1489;&#1500;&#1497; &#1500;&#1514;&#1514; &#1488;&#1493;&#1508;, &#1494;&#1492; &#1488;&#1493;&#1502;&#1512; &#1513;&#1488;&#1514;&#1492;
&#1500;&#1488; &#1506;&#1493;&#1502;&#1491; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1500;&#1502;&#1514;&#1503; &#1488;&#1493;&#1508;, &#1514;&#1502;&#1513;&#1497;&#1498; &#1500;&#1511;&#1512;&#1493;&#1488; &#1506;&#1500; &#1502;&#1504;&#1514; &#1500;&#1489;&#1512;&#1512; &#1502;&#1491;&#1493;&#1506;.<span
style="mso-spacerun:
yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><a
name="_2&#1488;._&#1492;&#1514;&#1504;&#1488;&#1497;&#1501;_&#1500;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;"></a><span dir=RTL></span><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><span dir=RTL></span>2 &#1488;. &#1492;&#1514;&#1504;&#1488;&#1497;&#1501;
&#1500;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1492;&#1495;&#1494;&#1512;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509; &#1500;&#1500;&#1488; &#1488;&#1493;&#1508;&#1497;&#1501;</span><span dir=LTR></span><span
dir=LTR style='font-size:24.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span lang=HE dir=RTL
style='font-size:14.0pt;mso-fareast-language:EN'>&#1488;&#1514;&#1492; &#1495;&#1497;&#1497;&#1489; &#1500;&#1506;&#1502;&#1493;&#1491; </span><span
lang=HE dir=RTL style='mso-fareast-language:EN'>&#1489;&#1499;&#1500; </span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1492;&#1514;&#1504;&#1488;&#1497;&#1501;, &#1488;&#1497;&#1503; &#1497;&#1493;&#1510;&#1488; &#1502;&#1492;&#1499;&#1500;&#1500;:</span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN'><span
dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span dir=RTL></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'><span dir=RTL></span>1.
</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'>&#1492;&#1506;&#1512;&#1493;&#1509; &#1495;&#1497;&#1497;&#1489; &#1500;&#1492;&#1514;&#1511;&#1497;&#1497;&#1501; &#1500;&#1508;&#1495;&#1493;&#1514; &#1495;&#1510;&#1497; &#1513;&#1506;&#1492;. &#1488;&#1507; &#1488;&#1500; &#1508;&#1497; &#1513;&#1494;&#1492; &#1502;&#1497;&#1504;&#1497;&#1502;&#1493;&#1501; &#1496;&#1499;&#1504;&#1497;,
&#1514;&#1492;&#1497;&#1492; &#1502;&#1510;&#1497;&#1488;&#1493;&#1514;&#1497; , &#1499;&#1500; &#1506;&#1512;&#1493;&#1509;<span style="mso-spacerun: yes">&nbsp; </span>&#1513;&#1489;&#1490;&#1497;&#1500;&#1493; &#1492;&#1493;&#1488; &#1508;&#1495;&#1493;&#1514;
&#1502;&#1499;&#1502;&#1492; &#1497;&#1502;&#1497;&#1501; &#1488;&#1494; &#1492;&#1493;&#1488; &#1510;&#1506;&#1497;&#1512; &#1500;&#1514;&#1497;&#1511;&#1493;&#1503;, &#1489;&#1490;&#1500;&#1500; &#1513;&#1488;&#1514;&#1492; &#1500;&#1488; &#1489;&#1505;&#1505;&#1514;<span style="mso-spacerun:
yes">&nbsp; </span>&#1506;&#1491;&#1497;&#1497;&#1503; &#1488;&#1493;&#1508;&#1497;&#1501; &#1497;&#1510;&#1497;&#1489;&#1497;&#1501;.<span style="mso-spacerun:
yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span><span style="mso-spacerun:
yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span dir=RTL></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'><span dir=RTL></span>2.</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'> &#1492;&#1506;&#1512;&#1493;&#1509; &#1495;&#1497;&#1497;&#1489; &#1513;&#1492;&#1497;&#1493; &#1489;&#1493; &#1500;&#1508;&#1495;&#1493;&#1514; 4 &#1488;&#1504;&#1513;&#1497;&#1501; , &#1493;&#1513;&#1493;&#1489; &#1494;&#1492; &#1492;&#1499;&#1512;&#1495; &#1496;&#1499;&#1504;&#1497;, &#1488;&#1489;&#1500; &#1488;&#1501; &#1488;&#1497;&#1503; &#1500;&#1498; &#1492;&#1512;&#1489;&#1492;
&#1488;&#1504;&#1513;&#1497;&#1501; , &#1494;&#1492; &#1500;&#1506;&#1497;&#1514;&#1497;&#1501; &#1511;&#1512;&#1493;&#1489;&#1493;&#1514; &#1502;&#1492;&#1497;&#1512; &#1497;&#1493;&#1514;&#1512; &#1500;&#1514;&#1497;&#1511;&#1493;&#1503; &#1506;&quot;&#1497; &#1497;&#1510;&#1497;&#1488;&#1514; &#1499;&#1500; &#1492;&#1488;&#1504;&#1513;&#1497;&#1501; &#1502;&#1492;&#1506;&#1512;&#1493;&#1509; &#1493;&#1499;&#1504;&#1497;&#1505;&#1514;&#1501;
&#1500;&#1506;&#1512;&#1493;&#1509; &#1489;&#1495;&#1494;&#1512;&#1492; &#1493;&#1489;&#1504;&#1497;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1502;&#1495;&#1491;&#1513;.<span style="mso-spacerun: yes">&nbsp; </span></span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><a name="_&#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514;_&#1497;&#1508;&#1493;&#1512;&#1496;&#1493;_&#1489;&#1505;&#1506;&#1497;&#1507;"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1497;&#1508;&#1493;&#1512;&#1496;&#1493; &#1489;&#1505;&#1506;&#1497;&#1507; &#1492;&#1489;&#1488;.</span><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'><span
dir=LTR></span>.</span><span style='font-size:14.0pt;mso-fareast-language:EN'> <span
dir=RTL></span><span lang=HE dir=RTL><span dir=RTL></span>3. </span></span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1497;&#1513; &#1500;&#1498; &#1500;&#1508;&#1495;&#1493;&#1514; 1 &#1493;&#1506;&#1491;&#1497;&#1507; 5 &#1488;&#1493; &#1497;&#1493;&#1514;&#1512; &#1488;&#1493;&#1508;&#1497;&#1501; &#1513;&#1506;&#1493;&#1502;&#1491;&#1497;&#1501; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1489;&#1512;&#1490;&#1506; &#1494;&#1492; &#1489;&#1506;&#1512;&#1493;&#1509;</span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span dir=RTL></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'><span dir=RTL></span>4.
</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'>&#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1493;&#1514;&#1497;&#1511;&#1497;&#1501; &#1492;&#1501; &#1499;&#1488;&#1500;&#1493; &#1513;&#1497;&#1513; &#1500;&#1492;&#1501; &#1497;&#1491;&#1504;&#1496;&#1491; &#1506;&#1493;&#1489;&#1491; , &#1492;&#1493;&#1493;&#1492; &#1488;&#1493;&#1502;&#1512; &#1513;&#1488;&#1497;&#1503; &#1500;&#1492;&#1501;
&quot;~&quot;<span style="mso-spacerun: yes">&nbsp; </span>&#1500;&#1508;&#1504;&#1497; &#1492;&#1497;&#1493;&#1494;&#1512; &#1504;&#1497;&#1497;&#1501; &#1499;&#1488;&#1513;&#1512;
&#1506;&#1493;&#1513;&#1497;&#1501; &#1506;&#1500;&#1497;&#1492;&#1501; &#1492;&#1493;&#1488;&#1488;&#1497;&#1494;. &#1500;&#1491;&#1493;&#1490;&#1502;&#1488; , &#1488;&#1501; &#1492;&#1513;&#1501; &#1513;&#1500;&#1498; &#1492;&#1493;&#1488; &#1490;'&#1493;&#1489;&#1493;&#1489; &#1493;&#1488;&#1514;&#1492; &#1506;&#1493;&#1513;&#1492; &#1492;&#1493;&#1488;&#1488;&#1497;&#1494; &#1506;&#1500;&#1497;&#1493; :</span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span lang=EN style='font-size:14.0pt;
mso-ansi-language:EN;font-weight:normal'>&quot;/whois JoeBob&quot; </span><span
style='font-size:14.0pt;font-weight:normal'>(<span dir=RTL></span><span
lang=HE dir=RTL><span dir=RTL></span>(</span></span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;font-weight:normal'>&#1489;&#1500;&#1497; &#1492;&#1502;&#1512;&#1499;&#1488;&#1493;&#1514;</span><span
dir=LTR></span><span style='font-size:14.0pt;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span lang=HE dir=RTL
style='font-size:14.0pt'>&#1493;&#1488;&#1514;&#1492; &#1512;&#1493;&#1488;&#1492;: </span><span dir=LTR></span><span
style='font-size:14.0pt'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span style='mso-ansi-language:EN;
font-weight:normal'><span style="mso-spacerun: yes">&nbsp;</span></span><span
lang=EN style='font-size:14.0pt;mso-ansi-language:EN;font-weight:normal'>&quot;</span><tt><span
lang=EN style='font-size:14.0pt;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman";
mso-ansi-language:EN;font-weight:normal'>JoeBob is </span></tt><tt><span
lang=EN style='font-size:14.0pt;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman";
color:red;mso-ansi-language:EN;font-weight:normal'>~</span></tt><tt><span
lang=EN style='font-size:14.0pt;mso-ascii-font-family:"Times New Roman";
mso-hansi-font-family:"Times New Roman";mso-bidi-font-family:"Times New Roman";
mso-ansi-language:EN;font-weight:normal'>blah@whatever.com</span></tt><span
lang=EN style='font-size:14.0pt;mso-ansi-language:EN;font-weight:normal'>&quot;</span><span
lang=EN style='mso-ansi-language:EN;font-weight:normal'> <o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><a name="_&#1488;&#1494;_&#1494;&#1492;_&#1488;&#1493;&#1502;&#1512;"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;font-weight:normal'>&#1488;&#1494;
&#1494;&#1492; &#1488;&#1493;&#1502;&#1512; &#1513;&#1488;&#1497;&#1503; &#1488;&#1497;&#1491;&#1504;&#1496;&#1491; &#1489;&#1490;&#1500;&#1500; &#1513;&#1497;&#1513; &quot;~&quot; &#1493;&#1488;&#1494; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1488; &#1497;&#1494;&#1492;&#1492; &#1488;&#1493;&#1514;&#1498; , &#1493;&#1500;&#1488; &#1495;&#1513;&#1493;&#1489;
&#1499;&#1502;&#1492; &#1494;&#1502;&#1503; &#1492;&#1497;&#1492; &#1500;&#1498; &#1488;&#1493;&#1508;.</span><span dir=LTR></span><span lang=EN style='font-size:
14.0pt;mso-ansi-language:EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><a name="_5._&#1492;&#1488;&#1493;&#1508;&#1497;&#1501;_&#1492;&#1493;&#1514;&#1497;&#1511;&#1497;&#1501;"></a><span
dir=RTL></span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'><span dir=RTL></span>5.</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-ansi-language:EN;mso-fareast-language:EN;font-weight:normal'> &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1493;&#1514;&#1497;&#1511;&#1497;&#1501;
&#1497;&#1493;&#1514;&#1512; &#1492;&#1497;&#1493; &#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1511;&#1489;&#1497;&#1506;&#1493;&#1514; &#1489;&#1502;&#1513;&#1498; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501;. &quot;&#1512;&#1490;&#1497;&#1500;&#1497;&#1501;&quot; &#1488;&#1497;&#1503; &#1500;&#1492;&#1501; &#1495;&#1497;&#1489;&#1493;&#1512;
24/7 (7 &#1497;&#1502;&#1497;&#1501; 24 &#1513;&#1506;&#1493;&#1514;) , &#1488;&#1489;&#1500; &#1492;&#1499;&#1493;&#1493;&#1504;&#1492; &#1513;&#1492;&#1501; &#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1491;&#1512;&#1498; &#1499;&#1500;&#1500;- &#1500;&#1488; &#1512;&#1511; &#1499;&#1502;&#1492; &#1513;&#1506;&#1493;&#1514; &#1508;&#1506;&#1501; &#1489;&#1499;&#1502;&#1492; &#1497;&#1502;&#1497;&#1501;,&#1499;&#1500;
&#1491;&#1489;&#1512; &#1500;&#1508;&#1504;&#1497; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501; &#1494;&#1492; &#1500;&#1488; &#1500;&#1506;&#1504;&#1497;&#1497;&#1503; &#1489;&#1490;&#1500;&#1500; &#1513;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1513;&#1493;&#1502;&#1512; &#1512;&#1511; &#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501; </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'><span style="mso-spacerun: yes">&nbsp;</span></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'><span style="mso-spacerun: yes">&nbsp;</span></span><span
dir=LTR></span><span lang=EN style='font-size:14.0pt;mso-ansi-language:EN;
mso-fareast-language:EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span dir=RTL></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'><span dir=RTL></span>6.<span
style="mso-spacerun: yes">&nbsp; </span></span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'>&#1492;&#1499;&#1514;&#1493;&#1489;&#1514; &#1488;&#1497;&#1508;&#1497;
&#1513;&#1500;&#1492;&#1501; &#1492;&#1497;&#1488; &#1511;&#1489;&#1493;&#1506;&#1492; , &#1492;&#1493;&#1493;&#1492; &#1488;&#1493;&#1502;&#1512; &#1492;&#1499;&#1514;&#1493;&#1489;&#1514; &#1500;&#1488; &#1492;&#1513;&#1514;&#1504;&#1514; &#1489;&#1502;&#1513;&#1498; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501;, &#1492;&#1499;&#1514;&#1493;&#1489;&#1514; &#1494;&#1492; &#1502;&#1492;
&#1513;&#1502;&#1493;&#1508;&#1497;&#1506; &#1488;&#1495;&#1512;&#1497; &#1492;&#1513;&#1496;&#1512;&#1493;&#1491;&#1500;, &#1489;&#1491;&#1493;&#1490;&#1502;&#1492; &#1513;&#1500;&#1502;&#1506;&#1500;&#1492; &#1506;&#1489;&#1493;&#1512; &#1490;'&#1493;&#1489;&#1493;&#1489; &#1494;&#1492;:<span style="mso-spacerun:
yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span dir=RTL></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'><span style='mso-tab-count:1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span
dir=RTL></span>&quot;</span><span dir=LTR></span><tt><span lang=EN
style='font-size:14.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";mso-ansi-language:
EN;font-weight:normal'><span dir=LTR></span> whatever.com</span></tt><span
lang=EN style='font-size:14.0pt;mso-ansi-language:EN;font-weight:normal'>&quot;</span><span
lang=EN style='mso-ansi-language:EN;font-weight:normal'> </span><span
style='font-weight:normal'><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span dir=RTL></span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'><span dir=RTL></span>7.<span
style="mso-spacerun: yes">&nbsp; </span></span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'>&#1492;&#1504;&#1497;&#1511; &#1500;&#1488; &#1495;&#1513;&#1493;&#1489;
&#1488;&#1489;&#1500; &#1492;&#1497;&#1493;&#1494;&#1512; &#1504;&#1497;&#1497;&#1501; &#1488;&#1505;&#1493;&#1512; &#1513;&#1492;&#1513;&#1514;&#1504;&#1492;. &#1489;&#1491;&#1493;&#1490;&#1502;&#1492; &#1513;&#1500;&#1504;&#1493; &#1500;&#1490;'&#1493;&#1489;&#1493;&#1489; &#1492;&#1513;&#1501; &#1513;&#1500;&#1508;&#1504;&#1497; &#1492;&#1513;&#1496;&#1512;&#1493;&#1491;&#1500; &#1494;&#1492; &#1492;&#1497;&#1493;&#1494;&#1512; &#1504;&#1497;&#1497;&#1501;:
</span><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><tt><span lang=EN style='font-size:
14.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:"Times New Roman";
mso-bidi-font-family:"Times New Roman";mso-ansi-language:EN;font-weight:normal'>Blah</span></tt><tt><span
style='font-size:14.0pt;mso-ascii-font-family:"Times New Roman";mso-hansi-font-family:
"Times New Roman";mso-bidi-font-family:"Times New Roman";font-weight:normal'><o:p></o:p></span></tt></h2>

<h2 align=right style='text-align:right'><a name="_&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;_&#1502;&#1513;&#1514;&#1502;&#1513;_&#1489;-"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1510;</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:
EN;mso-fareast-language:EN;font-weight:normal'>'</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'>&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN;font-weight:normal'> </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1502;&#1513;&#1514;&#1502;&#1513;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1489;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>- </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1499;&#1514;&#1493;&#1489;&#1514;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>@</span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1497;&#1493;&#1494;&#1512;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1506;&#1500;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1502;&#1504;&#1514;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1500;&#1514;&#1514;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1504;&#1511;&#1493;&#1491;&#1493;&#1514;</span><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>. </span><span dir=LTR></span><span lang=EN
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1488;&#1501; &#1506;&#1502;&#1491;&#1514; &#1489;&#1499;&#1500; &#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1492;&#1504;&quot;&#1500; , &#1514;&#1489;&#1497;&#1488; &#1500;&#1506;&#1512;&#1493;&#1509; &#1488;&#1514; &#1499;&#1500; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1513;&#1506;&#1502;&#1491;&#1493;
&#1489;&#1514;&#1504;&#1488;&#1497;&#1501; &#1493;&#1488;&#1494; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1495;&#1494;&#1497;&#1512; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1488;&#1493;&#1508;&#1503; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497; &#1500;&#1489;&#1506;&#1500;&#1497; &#1492;&#1504;&#1497;&#1511;&#1493;&#1491; &#1492;&#1490;&#1489;&#1493;&#1492;&#1492; &#1489;&#1497;&#1493;&#1514;&#1512; &#1489;&#1514;&#1495;&#1497;&#1500;&#1492;
&#1493;&#1500;&#1488;&#1495;&#1512; &#1502;&#1499;&#1503; &#1492;&#1493;&#1488; &#1497;&#1500;&#1498; &#1500;&#1508;&#1497; &#1492;&#1512;&#1513;&#1497;&#1502;&#1492; &#1502;&#1492;&#1490;&#1489;&#1493;&#1492;&#1492; &#1500;&#1504;&#1502;&#1493;&#1498; &#1506;&#1491; &#1500; 5 &#1488;&#1493;&#1508;&#1497;&#1501;. &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1499;&#1493;&#1500; &#1500;&#1506;&#1494;&#1493;&#1489; &#1493;&#1500;&#1495;&#1494;&#1493;&#1512;
&#1500;&#1506;&#1512;&#1493;&#1509; &#1502;&#1505;&#1508;&#1512; &#1508;&#1506;&#1502;&#1497;&#1501; &#1506;&#1491; &#1500;&#1492;&#1513;&#1500;&#1502;&#1514; &#1492;&#1502;&#1513;&#1497;&#1502;&#1492;, &#1514;&#1500;&#1493;&#1497; &#1499;&#1502;&#1492; &#1492;&#1504;&#1497;&#1511;&#1493;&#1491; &#1490;&#1489;&#1493;&#1492;&#1492;. &#1489;&#1506;&#1500;&#1497; &#1504;&#1497;&#1511;&#1493;&#1491; &#1490;&#1489;&#1493;&#1492;&#1492; &#1497;&#1511;&#1489;&#1500;&#1493;
&#1488;&#1493;&#1508; &#1489;&#1502;&#1492;&#1512;&#1492;.<span style="mso-spacerun:
yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span dir=LTR></span><span lang=EN style='font-size:14.0pt;
mso-ansi-language:EN;mso-fareast-language:EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span lang=HE dir=RTL
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'>&#1489;&#1502;&#1497;&#1491;&#1492; &#1493;&#1500;&#1488; &#1506;&#1502;&#1491;&#1514; &#1489;&#1499;&#1500; &#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1513;&#1492;&#1493;&#1494;&#1499;&#1512;&#1493; &#1493;&#1500;&#1488; &#1511;&#1489;&#1500;&#1514; &#1488;&#1493;&#1508; &#1495;&#1494;&#1512;&#1492; , &#1506;&#1489;&#1493;&#1512;
&#1500;&#1511;&#1512;&#1497;&#1488;&#1514; &#1492;&#1505;&#1506;&#1497;&#1507; &#1492;&#1489;&#1488;:</span><span dir=LTR></span><span lang=EN style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;font-weight:normal'><span
dir=LTR></span><o:p></o:p></span></h2>

<h2 dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><span
dir=RTL></span><span lang=HE style='font-size:14.0pt;mso-ansi-language:EN;
mso-fareast-language:EN;font-weight:normal'><span dir=RTL></span><span
style="mso-spacerun: yes">&nbsp; </span><span style="mso-spacerun:
yes">&nbsp;</span></span><a name="_&#1489;._&#1500;&#1502;&#1492;_&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;"></a><span lang=HE
style='font-size:24.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>2</span><span
lang=HE style='font-size:24.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'> </span><span lang=HE style='font-size:24.0pt;mso-fareast-language:
EN'>&#1489;. &#1500;&#1502;&#1492; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1488; &#1502;&#1495;&#1494;&#1497;&#1512; &#1500;&#1497; &#1488;&#1493;&#1508;&#1497;&#1501; &#1499;&#1488;&#1513;&#1512; &#1488;&#1497;&#1503; &#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509;?</span><span
dir=LTR></span><span dir=LTR style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h2>

<h3 align=right style='text-align:right'><span lang=HE dir=RTL
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'>&#1488;&#1501; &#1488;&#1489;&#1491;&#1514; &#1488;&#1514; </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1499;&#1500; </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1493;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1488; &#1504;&#1499;&#1504;&#1505; &#1500;&#1506;&#1512;&#1493;&#1509; &#1489;&#1488;&#1493;&#1508;&#1503; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497; &#1488;&#1495;&#1512;&#1497; 5 &#1491;&#1511;&#1493;&#1514;, &#1488;&#1494; &#1494;&#1492; &#1488;&#1493;&#1502;&#1512; &#1513;&#1500;&#1488;
&#1506;&#1502;&#1491;&#1514; &#1489;&#1499;&#1500; &#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1513;&#1492;&#1494;&#1499;&#1512;&#1504;&#1493; &#1489;&#1505;&#1506;&#1497;&#1507; &#1492;&#1511;&#1493;&#1491;&#1501;.</span><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'><span
dir=LTR></span><o:p></o:p></span></h3>

<h3 align=right style='text-align:right'><a name="_&#1488;&#1501;_&#1488;&#1489;&#1491;&#1514;_&#1488;&#1514;_1"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1488;&#1501; &#1488;&#1489;&#1491;&#1514; &#1488;&#1514; </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN'>&#1499;&#1500; </span><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN;font-weight:normal'>&#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1493;&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1504;&#1499;&#1504;&#1505; &#1500;&#1506;&#1512;&#1493;&#1509; &#1502;&#1489;&#1500;&#1497; &#1500;&#1514;&#1514;
&#1488;&#1493;&#1508; &#1500;&#1488;&#1507; &#1488;&#1495;&#1491; , &#1494;&#1492; &#1488;&#1493;&#1502;&#1512; &#1513;&#1497;&#1513; &#1500;&#1498; &#1488;&#1493;&#1508;&#1497;&#1501; &#1506;&#1501; &#1504;&#1511;&#1493;&#1491;&#1493;&#1514; , &#1493;&#1494;&#1492; &#1502;&#1504;&#1505;&#1492; &#1500;&#1502;&#1510;&#1493;&#1488; 5 &#1488;&#1504;&#1513;&#1497;&#1501; &#1500;&#1514;&#1514; &#1500;&#1492;&#1501; &#1488;&#1493;&#1508;,
&#1488;&#1489;&#1500; &#1488;&#1507; &#1488;&#1495;&#1491; &#1502;&#1492;&#1501; &#1500;&#1488; &#1504;&#1493;&#1499;&#1495; &#1489;&#1506;&#1512;&#1493;&#1509;. &#1514;&#1492;&#1497;&#1492; &#1512;&#1490;&#1493;&#1506;, &#1514;&#1489;&#1491;&#1493;&#1511; &#1506;&#1501; &#1506;&#1502;&#1491;&#1514; &#1489;&#1499;&#1500; &#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1489;&#1508;&#1512;&#1511; &#1492;&#1511;&#1493;&#1491;&#1501;, &#1493;&#1514;&#1504;&#1505;&#1492;
&#1500;&#1492;&#1513;&#1497;&#1490; &#1488;&#1514; &#1492;&#1488;&#1504;&#1513;&#1497;&#1501; &#1513;&#1492;&#1497;&#1492; &#1500;&#1492;&#1501; &#1488;&#1493;&#1508; &#1495;&#1494;&#1512;&#1492; &#1500;&#1506;&#1512;&#1493;&#1509;. &#1500;&#1491;&#1493;&#1490;&#1502;&#1488; &#1488;&#1501; &#1489;&#1491;&#1512;&#1498; &#1499;&#1500;&#1500; &#1497;&#1513; &#1500;&#1498; &#1489;&#1493;&#1496; &#1489;&#1506;&#1512;&#1493;&#1509; &#1488;&#1493; &#1489;&#1493;&#1496;&#1497;&#1501;
&#1513;&#1513;&#1493;&#1502;&#1512;&#1497;&#1501; &#1506;&#1500; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501;, &#1505;&#1489;&#1497;&#1512; &#1500;&#1492;&#1504;&#1497;&#1495; &#1513;&#1497;&#1513; &#1500;&#1492;&#1501; &#1504;&#1497;&#1511;&#1493;&#1491; &#1490;&#1489;&#1493;&#1492;&#1492;, &#1514;&#1495;&#1494;&#1497;&#1512; &#1488;&#1493;&#1514;&#1501; &#1495;&#1494;&#1512;&#1492; &#1500;&#1506;&#1512;&#1493;&#1509;!</span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h3>

<h3 align=right style='text-align:right'><a name="_&#1488;&#1501;_&#1488;&#1514;&#1492;_&#1500;&#1488;"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1488;&#1501; &#1488;&#1514;&#1492; &#1500;&#1488; &#1506;&#1502;&#1491;&#1514; &#1489;&#1499;&#1500; &#1492;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514;, &#1500;&#1502;&#1513;&#1500; &#1497;&#1513; &#1500;&#1498; &#1506;&#1512;&#1493;&#1509; &#1495;&#1491;&#1513; &#1488;&#1493; &#1506;&#1512;&#1493;&#1509; &#1511;&#1496;&#1503;, &#1488;&#1493; &#1513;&#1492;&#1497;&#1497;&#1514; &#1489;&#1500;&#1497;
&#1488;&#1493;&#1508;&#1497;&#1501; &#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501;, &#1488;&#1494; &#1500; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1488;&#1497;&#1503; &#1504;&#1514;&#1493;&#1504;&#1497;&#1501; &#1506;&#1500; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498;, &#1493;&#1494;&#1492; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498;. &#1488;&#1514;&#1492; &#1495;&#1497;&#1497;&#1489; &#1500;&#1506;&#1494;&#1493;&#1489;
&#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1493;&#1500;&#1495;&#1494;&#1493;&#1512; &#1502;&#1497;&#1497;&#1491; &#1495;&#1494;&#1512;&#1492; (&#1493;&#1514;&#1489;&#1511;&#1513; &#1502;&#1499;&#1493;&#1500;&#1501; &#1500;&#1506;&#1494;&#1493;&#1489; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1490;&#1501;) &#1493;&#1488;&#1494; &#1497;&#1492;&#1497;&#1492; &#1500;&#1498; &#1488;&#1493;&#1508; &#1513;&#1493;&#1489;. &#1489;&#1492;&#1514;&#1497;&#1497;&#1495;&#1505;
&#1513;&#1494;&#1492; &#1508;&#1506;&#1501; &#1512;&#1488;&#1513;&#1493;&#1504;&#1492; &#1513;&#1500;&#1498;:&#1488;&#1501; &#1488;&#1514;&#1492; &#1500;&#1488; &#1497;&#1499;&#1493;&#1500; &#1500;&#1504;&#1492;&#1500; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1489;&#1510;&#1493;&#1512;&#1492; &#1514;&#1511;&#1497;&#1504;&#1492; (&#1506;&quot;&#1497; &#1492;&#1495;&#1494;&#1511;&#1514; &#1488;&#1493;&#1508;&#1497;&#1501;
&#1488;&#1493; &#1506;&#1494;&#1497;&#1489;&#1492; &#1493;&#1495;&#1494;&#1512;&#1492; &#1502;&#1492;&#1497;&#1512;&#1492; &#1500;&#1506;&#1512;&#1493;&#1509;) &#1499;&#1488;&#1513;&#1512; &#1497;&#1513; &#1500;&#1498; &#1502;&#1506;&#1496; &#1488;&#1504;&#1513;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509;, &#1514;&#1491;&#1502;&#1497;&#1497;&#1503; &#1488;&#1514; &#1492;&#1514;&#1493;&#1492;&#1493; &#1493;&#1489;&#1493;&#1492;&#1493; &#1488;&#1501;
&#1497;&#1492;&#1497;&#1493; &#1500;&#1498; 50 &#1488;&#1493; 500 &#1488;&#1504;&#1513;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509;. &#1492;&#1506;&#1493;&#1489;&#1491;&#1492; &#1492;&#1508;&#1513;&#1493;&#1496;&#1492; &#1492;&#1497;&#1488; , &#1500;&#1492;&#1512;&#1497;&#1509; &#1506;&#1512;&#1493;&#1509; &#1489;&#1488;&#1508;&#1504;&#1496; &#1500;&#1493;&#1511;&#1495; &#1500;&#1508;&#1495;&#1493;&#1514;
10 &#1488;&#1504;&#1513;&#1497;&#1501;(&#1500;&#1488; &#1489;&#1493;&#1496;&#1497;&#1501;) &#1513;&#1506;&#1493;&#1502;&#1491;&#1497;&#1501; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1513;&#1492;&#1494;&#1499;&#1512;&#1504;&#1493; &#1511;&#1493;&#1491;&#1501;. &#1488;&#1501; &#1488;&#1497;&#1503; &#1500;&#1498; &#1488;&#1514; &#1494;&#1492; , &#1502;&#1492; &#1492;&#1496;&#1506;&#1501; &#1489;&#1492;&#1495;&#1494;&#1511;&#1514;
&#1506;&#1512;&#1493;&#1509;? &#1502;&#1489;&#1511;&#1512;&#1497;&#1501; &#1500;&#1488; &#1504;&#1493;&#1492;&#1490;&#1497;&#1501; &#1500;&#1489;&#1511;&#1512; &#1489;&#1506;&#1512;&#1493;&#1510;&#1497;&#1501; &#1511;&#1496;&#1504;&#1497;&#1501; &#1488;&#1493; &#1506;&#1512;&#1493;&#1509; &#1513;&#1497;&#1513; &#1500;&#1493; &#1488;&#1512;&#1490;&#1493;&#1503; &#1500;&#1511;&#1493;&#1497; &#1499;&#1488;&#1513;&#1512; &#1497;&#1513; &#1499;&#1489;&#1512;
&#1488;&#1500;&#1508;&#1497; &#1506;&#1512;&#1493;&#1510;&#1497;&#1501; &#1490;&#1491;&#1493;&#1500;&#1497;&#1501;. &#1488;&#1489;&#1500; &#1488;&#1501; &#1488;&#1514;&#1492; &#1502;&#1514;&#1506;&#1511;&#1513; &#1500;&#1492;&#1512;&#1497;&#1509; &#1506;&#1512;&#1493;&#1509; &#1489;&#1499;&#1500; &#1502;&#1511;&#1512;&#1492;, &#1514;&#1513;&#1511;&#1493;&#1500; &#1500;&#1492;&#1506;&#1489;&#1497;&#1512; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509;
&#1492;&#1495;&#1491;&#1513; &#1493;&#1492;&#1511;&#1496;&#1503; &#1513;&#1500;&#1498; &#1500;&#1512;&#1513;&#1514; &#1488;&#1495;&#1512;&#1514; &#1513;&#1513;&#1501; &#1497;&#1513; &#1500;&#1498; &#1488;&#1508;&#1513;&#1512;&#1493;&#1514; &#1500;&#1512;&#1497;&#1513;&#1493;&#1501; &#1492;&#1506;&#1512;&#1493;&#1509;.</span><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'><span
dir=LTR></span><o:p></o:p></span></h3>

<h3 dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><a
name="_2&#1490;._&#1500;&#1502;&#1492;_&#1488;&#1514;&#1492;"></a><span dir=RTL></span><span lang=HE style='font-size:
24.0pt;mso-fareast-language:EN'><span dir=RTL></span>2 &#1490;. &#1500;&#1502;&#1492; &#1488;&#1514;&#1492; &#1500;&#1488; &#1497;&#1499;&#1493;&#1500; &#1500;&#1514;&#1514; &#1500;&#1497;
&#1488;&#1493;&#1508; &#1493;&#1494;&#1492;&#1493;?</span><span dir=LTR></span><span dir=LTR style='font-size:24.0pt;
mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></h3>

<h3 align=right style='text-align:right'><a name="_&#1489;&#1512;&#1513;&#1514;_&#1488;&#1508;&#1504;&#1496;_,"></a><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN;font-weight:
normal'>&#1489;&#1512;&#1513;&#1514; &#1488;&#1508;&#1504;&#1496; , &#1488;&#1507; &#1488;&#1495;&#1491; &#1500;&#1488; &#1497;&#1499;&#1493;&#1500; &#1500;&#1514;&#1514; &#1500;&#1498; &#1488;&#1493;&#1508; &#1489;&#1488;&#1507; &#1506;&#1512;&#1493;&#1509;, &#1488;&#1508;&#1497;&#1500;&#1493; &#1500;&#1488; &#1488;&#1497; &#1488;&#1512; &#1505;&#1497; &#1488;&#1493;&#1508;&#1512;&#1496;&#1493;&#1512;(&#1488;&#1493;&#1508;&#1512;)
&#1488;&#1493; &#1488;&#1491;&#1502;&#1497;&#1503;. &#1488;&#1497;&#1503; &#1508;&#1511;&#1493;&#1491;&#1493;&#1514; &#1505;&#1493;&#1491;&#1497;&#1493;&#1514; . &#1488;&#1508;&#1504;&#1496; &#1494;&#1492; &#1500;&#1488; &#1499;&#1502;&#1493; &#1512;&#1513;&#1493;&#1514; &#1488;&#1495;&#1512;&#1493;&#1514; &#1499;&#1502;&#1493; &#1491;&#1500;&#1504;&#1496; &#1513;&#1513;&#1501; &#1497;&#1513; &#1513;&#1512;&#1493;&#1514;&#1497;&#1501; &#1513;&#1504;&#1493;&#1514;&#1504;&#1497;&#1501;
&#1500;&#1488;&#1493;&#1508;&#1512;&#1497;&#1501; &#1499;&#1495;. &#1500;&#1502;&#1497;&#1491;&#1506; &#1504;&#1493;&#1505;&#1507; &#1489;&#1504;&#1493;&#1513;&#1488; &#1512;&#1488;&#1492;:</span><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN;font-weight:normal'><span
dir=LTR></span><o:p></o:p></span></h3>

<h3 align=right style='text-align:right'><a name="_&#1500;&#1502;&#1492;_&#1500;&#1488;&#1508;&#1504;&#1496;_&#1488;&#1497;&#1503;"></a><span
dir=RTL></span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><a
href="/networks/noserv.html">&#1500;&#1502;&#1492; &#1500;&#1488;&#1508;&#1504;&#1496; &#1488;&#1497;&#1503; &#1513;&#1512;&#1493;&#1514;&#1497; &#1512;&#1497;&#1513;&#1493;&#1501;</a>
</span><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h3>

<h3 align=right style='text-align:right'><a name="_&#1502;&#1497;&#1514;&#1493;&#1505;_&#1492;&#1488;&#1493;&#1508;&#1512;&#1497;&#1501;"></a><span
dir=RTL></span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN;font-weight:normal'><a
href="/ircd/opermyth.html">&#1502;&#1497;&#1514;&#1493;&#1505; &#1492;&#1488;&#1493;&#1508;&#1512;&#1497;&#1501;</a></span><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN;
font-weight:normal'><span dir=LTR></span><o:p></o:p></span></h3>

<p dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><span
dir=RTL></span><b><span lang=HE style='font-size:24.0pt;mso-fareast-language:
EN'><span dir=RTL></span>3. &#1497;&#1513; &#1500;&#1504;&#1493; &#1506;&#1491;&#1497;&#1497;&#1503; &#1488;&#1493;&#1508;&#1497;&#1501; , &#1488;&#1489;&#1500; &#1499;&#1493;&#1500;&#1501; &#1497;&#1493;&#1513;&#1504;&#1497;&#1501; , &#1492;&#1488;&#1501; &#1488;&#1514;&#1492; &#1497;&#1499;&#1493;&#1500;
&#1500;&#1514;&#1514; &#1500;&#1497; &#1488;&#1493;&#1508; &#1489;&#1502;&#1511;&#1493;&#1501; ?</span></b><span dir=LTR></span><b><span lang=HE dir=LTR
style='font-size:24.0pt;mso-fareast-language:EN'><span dir=LTR></span> </span></b><b><span
dir=LTR style='mso-fareast-language:EN'><o:p></o:p></span></b></p>

<p align=right style='text-align:right'><span lang=HE dir=RTL style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1499;&#1500;</span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1506;&#1493;&#1491;</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1497;&#1513;</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'> </span><span lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:
EN;mso-fareast-language:EN'>&#1488;&#1493;&#1508;</span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN'> </span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1489;&#1506;&#1512;&#1493;&#1509;</span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> (</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1488;&#1495;&#1491;</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'> </span><span lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:
EN;mso-fareast-language:EN'>&#1513;&#1497;&#1513;</span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN'> </span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1500;&#1493;</span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1492;&#1512;&#1489;&#1492;</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1504;&#1511;&#1493;&#1491;&#1493;&#1514;</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'>) , </span><span lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:
EN;mso-fareast-language:EN'>&#1510;</span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN'>'</span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1500;&#1488;</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'> </span><span lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:
EN;mso-fareast-language:EN'>&#1497;&#1499;&#1493;&#1500;</span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-fareast-language:EN'> </span><span lang=HE dir=RTL style='font-size:
14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1500;&#1506;&#1513;&#1493;&#1514;</span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span lang=HE
dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&#1499;&#1500;&#1493;&#1501;</span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'> </span><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1489;&#1504;&#1497;&#1491;&#1493;&#1503;</span><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'>. </span><span lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:
EN;mso-fareast-language:EN'>&#1488;&#1514;&#1492; &#1510;&#1512;&#1497;&#1498; &#1500;&#1511;&#1512;&#1493;&#1488; &#1500;&#1488;&#1493;&#1508;, &#1514;&#1514;&#1511;&#1513;&#1512; &#1488;&#1500;&#1497;&#1493;, &#1514;&#1506;&#1497;&#1512; &#1488;&#1493;&#1514;&#1493;, &#1500;&#1498; &#1488;&#1500;&#1497;&#1493;
&#1492;&#1489;&#1497;&#1514;&#1492;, &#1514;&#1512;&#1489;&#1497;&#1509; &#1500;&#1493;, &#1494;&#1492; &#1500;&#1488; &#1502;&#1513;&#1504;&#1492; &#1488;&#1501; &#1492;&#1493;&#1488; &#1497;&#1493;&#1513;&#1503; &#1513;&#1489;&#1493;&#1506;&#1493;&#1514; &#1488;&#1493; &#1513;&#1492;&#1493;&#1488; &#1508;&#1513;&#1493;&#1496; &#1500;&#1488; &#1502;&#1506;&#1493;&#1504;&#1497;&#1497;&#1503; &#1500;&#1495;&#1500;&#1511; &#1488;&#1493;&#1508;&#1497;&#1501;
&#1495;&#1494;&#1512;&#1492;, &#1492;&#1497;&#1497;&#1514; &#1510;&#1512;&#1497;&#1498; &#1500;&#1495;&#1513;&#1493;&#1489; &#1506;&#1500; &#1494;&#1492; &#1511;&#1493;&#1491;&#1501; &#1500;&#1508;&#1504;&#1497; &#1513;&#1504;&#1514;&#1514; &#1500;&#1493; &#1488;&#1493;&#1508;. &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1494;&#1492; &#1492;&#1488;&#1508;&#1513;&#1512;&#1493;&#1514; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1492; &#1512;&#1511;
&#1499;&#1488;&#1513;&#1512; &#1488;&#1489;&#1491;&#1514; &#1488;&#1514; <b>&#1499;&#1500;</b> &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1488;&#1493; &#1504;&#1500;&#1511;&#1495; &#1500;&#1498; &#1492;&#1506;&#1512;&#1493;&#1509; &#1489;&#1499;&#1495; (&#1496;&#1497;&#1497;&#1511; &#1488;&#1493;&#1489;&#1512;) &#1506;&quot;&#1497; &#1488;&#1504;&#1513;&#1497;&#1501; &#1495;&#1497;&#1510;&#1493;&#1504;&#1497;&#1497;&#1501;.
&#1500;-&#1488;&#1508;&#1504;&#1496;<span style="mso-spacerun: yes">&nbsp; </span>&#1488;&#1497;&#1503; &#1513;&#1512;&#1493;&#1514;&#1497; &#1512;&#1497;&#1513;&#1493;&#1501; &#1506;&#1512;&#1493;&#1510;&#1497;&#1501; &#1500;&#1504;&#1493;&#1495;&#1497;&#1493;&#1514;&#1498;.&#1489;&#1514;&#1493;&#1512;
&#1488;&#1493;&#1508; &#1489;&#1506;&#1512;&#1493;&#1509;, &#1514;&#1495;&#1513;&#1493;&#1489; &#1513;&#1488;&#1497;&#1503; &#1499;&#1494;&#1492; &#1491;&#1489;&#1512; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;, &#1493;&#1514;&#1500;&#1502;&#1491; &#1500;&#1492;&#1512;&#1497;&#1509; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498; &#1489;&#1510;&#1493;&#1512;&#1492; &#1514;&#1511;&#1497;&#1504;&#1492;, &#1499;&#1493;&#1500;&#1500;
&#1492;&#1513;&#1502;&#1514; &#1505;&#1511;&#1512;&#1497;&#1508;&#1496;&#1497;&#1501; &#1500;&#1489;&#1496;&#1495;&#1493;&#1503; &#1489;&#1511;&#1513;&#1514; &#1488;&#1493;&#1508;.</span><span dir=LTR></span><span lang=EN
style='mso-ansi-language:EN;mso-fareast-language:EN'><span dir=LTR></span>. <a
name=justopme></a><o:p></o:p></span></p>

<p dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><span
dir=RTL></span><b><span lang=HE style='font-size:24.0pt;mso-ansi-language:EN;
mso-fareast-language:EN'><span dir=RTL></span>4. </span></b><b><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'>&#1492;&#1506;&#1512;&#1493;&#1509; &#1504;&#1500;&#1511;&#1495; &#1489;&#1499;&#1495; (&#1496;&#1497;&#1497;&#1511; &#1488;&#1493;&#1489;&#1512;) , &#1514;&#1506;&#1494;&#1512;&#1493;
&#1500;&#1497; &#1489;&#1489;&#1511;&#1513;&#1492;?</span></b><span dir=LTR></span><b><span lang=HE dir=LTR
style='font-size:24.0pt;mso-fareast-language:EN'><span dir=LTR></span> </span></b><a
name=onefriend><span lang=EN dir=LTR style='mso-ansi-language:EN;mso-fareast-language:
EN'><o:p></o:p></span></a></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1497;&#1513; &#1488;&#1508;&#1513;&#1512;&#1493;&#1514; &#1500;&#1492;&#1514;&#1506;&#1512;&#1489;&#1493;&#1514;
&#1497;&#1491;&#1504;&#1497;&#1514; &#1489;-&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1500;&#1492;&#1495;&#1494;&#1512;&#1514; &#1492;&#1502;&#1510;&#1489; &#1500;&#1511;&#1491;&#1502;&#1493;&#1514;&#1493; &#1500;&#1508;&#1504;&#1497; &#1492;&#1500;&#1511;&#1497;&#1495;&#1492; &#1489;&#1499;&#1495;. &#1496;&#1497;&#1497;&#1511; &#1488;&#1493;&#1489;&#1512; &#1502;&#1493;&#1490;&#1491;&#1512; &#1499;&#1488;&#1513;&#1512; &#1506;&#1491;&#1497;&#1497;&#1503;
&#1497;&#1513; &#1497;&#1513; &#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509; &#1488;&#1489;&#1500; &#1500;&#1488; &#1492;&#1497;&#1492; &#1500;&#1492;&#1501; &#1488;&#1493;&#1508;&#1497;&#1501; &#1511;&#1493;&#1491;&#1501; (&#1500;&#1491;&#1493;&#1490;&#1502;&#1488;: &#1489;&#1496;&#1506;&#1493;&#1514; &#1504;&#1514;&#1514; &#1488;&#1493;&#1508; &#1500;&#1502;&#1513;&#1492;&#1493; , &#1493;&#1492;&#1493;&#1488;
&#1492;&#1493;&#1512;&#1497;&#1491; &#1500;&#1499;&#1493;&#1500;&#1501; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501;). &#1488;&#1504;&#1495;&#1504;&#1493; &#1500;&#1488; &#1502;&#1514;&#1506;&#1512;&#1489;&#1497;&#1501; &#1489;&#1493;&#1497;&#1499;&#1493;&#1495; &#1508;&#1504;&#1497;&#1502;&#1497; &#1489;&#1497;&#1503; &#1488;&#1493;&#1508;&#1497;&#1501;, &#1499;&#1488;&#1513;&#1512; &#1488;&#1493;&#1508;&#1497;&#1501; &#1512;&#1490;&#1497;&#1500;&#1497;&#1501;
&#1504;&#1500;&#1495;&#1502;&#1497;&#1501; &#1489;&#1497;&#1504;&#1497;&#1492;&#1501; &#1506;&#1500; &#1513;&#1500;&#1497;&#1496;&#1492; &#1489;&#1506;&#1512;&#1493;&#1509; (&#1500;&#1491;&#1493;&#1490;&#1502;&#1488;: &#1488;&#1497;&#1503; &#1492;&#1505;&#1499;&#1502;&#1492; &#1489;&#1511;&#1513;&#1512; &#1500;&#1502;&#1497; &#1513;&#1512;&#1513;&#1488;&#1497; &#1500;&#1492;&#1512;&#1497;&#1509; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509;, &#1488;&#1494;
&#1488;&#1495;&#1491; &#1502;&#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1512;&#1490;&#1497;&#1500;&#1497;&#1501; &#1502;&#1495;&#1500;&#1497;&#1496; &#1500;&#1492;&#1493;&#1512;&#1497;&#1491; &#1500;&#1499;&#1493;&#1500;&#1501; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;). &#1489;&#1502;&#1497;&#1500;&#1497;&#1501; &#1488;&#1495;&#1512;&#1493;&#1514; , &#1488;&#1501; &#1502;&#1497;&#1513;&#1492;&#1493; &#1492;&#1497;&#1492; &#1489;&#1497;&#1503;
10 &#1492;&#1512;&#1488;&#1513;&#1493;&#1504;&#1497;&#1501; &#1489;&#1497;&#1503; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1512;&#1490;&#1497;&#1500;&#1497;&#1501; &#1513;&#1500; &#1492;&#1506;&#1512;&#1493;&#1509; &#1489;&#1502;&#1513;&#1498; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501;(&#1499;&#1500; &#1502;&#1492; &#1513;&#1492;&#1497;&#1492; &#1500;&#1508;&#1504;&#1497; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501;
&#1494;&#1492; &#1500;&#1488; &#1500;&#1506;&#1504;&#1497;&#1497;&#1503;, &#1488;&#1508;&#1497;&#1500;&#1493; &#1488;&#1501; &#1488;&#1514;&#1492; &#1494;&#1492; &#1513;&#1492;&#1511;&#1502;&#1514; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1488;&#1493; &#1513;&#1488;&#1514;&#1492; &#1492;&#1495;&#1494;&#1511;&#1514; &#1488;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1504;&#1497;&#1501;), &#1492;&#1493;&#1488; &#1497;&#1499;&#1493;&#1500;
&#1500;&#1506;&#1513;&#1493;&#1514; &#1489;&#1506;&#1512;&#1493;&#1509; &#1492;&#1499;&#1500; &#1499;&#1493;&#1500;&#1500; &#1500;&#1492;&#1493;&#1512;&#1497;&#1491; &#1500;&#1488;&#1495;&#1512;&#1497;&#1501; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501;. &#1494;&#1492; &#1502;&#1492; &#1513;&#1511;&#1493;&#1512;&#1492; &#1500;&#1502;&#1512;&#1489;&#1492; &#1492;&#1510;&#1506;&#1512; &#1499;&#1488;&#1513;&#1512; &#1488;&#1514;&#1492; &#1505;&#1493;&#1502;&#1498;
&#1506;&#1500; &#1502;&#1497;&#1513;&#1492;&#1493; &#1513;&#1488;&#1505;&#1493;&#1512; &#1492;&#1497;&#1492; &#1500;&#1505;&#1502;&#1493;&#1498; &#1506;&#1500;&#1497;&#1493;, &#1493;&#1490;&#1501; &#1500;&#1488; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1488;&#1493; &#1502;&#1497;&#1513;&#1492;&#1493; &#1488;&#1495;&#1512; &#1497;&#1499;&#1493;&#1500; &#1500;&#1506;&#1494;&#1493;&#1512; &#1489;&#1502;&#1511;&#1512;&#1492; &#1499;&#1494;&#1492;.
&#1489;&#1489;&#1511;&#1513;&#1492; &#1514;&#1505;&#1491;&#1512; &#1488;&#1514; &#1494;&#1492; &#1489;&#1506;&#1510;&#1502;&#1498; &#1488;&#1493; &#1514;&#1508;&#1514;&#1495; &#1506;&#1512;&#1493;&#1509; &#1495;&#1491;&#1513;.</span></span><span style='mso-bookmark:
onefriend'><span dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:
EN'><span dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1488;&#1501; &#1492;&#1497;&#1492; &#1500;&#1498; &#1496;&#1497;&#1497;&#1511;
&#1488;&#1493;&#1489;&#1512; &#1502;&#1502;&#1513;&#1497; &#1506;&quot;&#1497; &#1502;&#1497;&#1513;&#1492;&#1493; &#1495;&#1497;&#1510;&#1493;&#1504;&#1497;, &#1488;&#1494; &#1488;&#1514;&#1492; &#1510;&#1512;&#1497;&#1498; &#1500;&#1495;&#1513;&#1493;&#1489; &#1488;&#1497;&#1498; &#1494;&#1492; &#1513;&#1502;&#1497;&#1513;&#1492;&#1493; &#1488;&#1495;&#1512; &#1511;&#1497;&#1489;&#1500; &#1488;&#1493;&#1508; (
&#1496;&#1506;&#1493;&#1514; &#1489;&#1502;&#1514;&#1503; &#1488;&#1493;&#1508;, &#1508;&#1512;&#1497;&#1510;&#1492; &#1500;&#1502;&#1495;&#1513;&#1489; &#1513;&#1500; &#1488;&#1493;&#1508; &#1488;&#1493; &#1489;&#1493;&#1496;, &#1492;&#1514;&#1511;&#1508;&#1492; &#1506;&#1500; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1513;&#1490;&#1512;&#1502;&#1492; &#1500;&#1499;&#1493;&#1500;&#1501; &#1500;&#1492;&#1514;&#1504;&#1514;&#1511; &#1493;&#1499;&#1493;..).
&#1488;&#1494; &#1511;&#1493;&#1491;&#1501; &#1499;&#1500; &#1514;&#1493;&#1493;&#1491;&#1488; &#1513;&#1494;&#1492; &#1500;&#1488; &#1497;&#1511;&#1512;&#1492; &#1513;&#1493;&#1489;. &#1488;&#1504;&#1493; &#1500;&#1488; &#1502;&#1514;&#1506;&#1505;&#1511;&#1497;&#1501; &#1489;&#1514;&#1497;&#1511;&#1493;&#1503; &#1492;&#1506;&#1512;&#1493;&#1509; &#1506;&#1491; &#1513;&#1488;&#1514;&#1492; &#1502;&#1493;&#1499;&#1497;&#1495; &#1513;&#1494;&#1492;
&#1500;&#1488; &#1497;&#1511;&#1512;&#1492; &#1513;&#1493;&#1489;. &#1488;&#1514;&#1492; &#1510;&#1512;&#1497;&#1498; &#1513;&#1497;&#1492;&#1497;&#1492; &#1500;&#1498; &#1499;&#1502;&#1492; &#1513;&#1497;&#1493;&#1514;&#1512; &#1488;&#1493;&#1508;&#1497;&#1501; &#1502;&#1493;&#1499;&#1513;&#1512;&#1497;&#1501;, &#1493;&#1500;&#1488; &#1499;&#1488;&#1500;&#1493; &#1513;&#1497;&#1493;&#1513;&#1504;&#1497;&#1501;, &#1493;&#1490;&#1501; &#1497;&#1493;&#1513;&#1489;&#1497;&#1501;
&#1489;&#1506;&#1512;&#1493;&#1509; &#1488;&#1493; &#1502;&#1493;&#1499;&#1504;&#1497;&#1501; &#1500;&#1492;&#1499;&#1504;&#1505; &#1500;&#1506;&#1512;&#1493;&#1509; &#1489;&#1492;&#1514;&#1512;&#1488;&#1492; &#1502;&#1497;&#1491;&#1497;&#1514;.<span style="mso-spacerun: yes">&nbsp;
</span>&#1514;&#1491;&#1488;&#1490; &#1502;&#1497;&#1497;&#1491; &#1500;&#1489;&#1496;&#1495;&#1493;&#1503; &#1492;&#1506;&#1512;&#1493;&#1509; &#1499;&#1513;&#1492;&#1506;&#1512;&#1493;&#1509; &#1497;&#1514;&#1493;&#1511;&#1503; &#1495;&#1494;&#1512;&#1492;.</span></span><span
style='mso-bookmark:onefriend'><span dir=LTR></span><span style='font-size:
14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1488;&#1497;&#1498; &#1492;&#1514;&#1497;&#1511;&#1493;&#1503; &#1506;&#1493;&#1489;&#1491;? &#1500;&#1488;&#1495;&#1512; &#1513;&#1492;&#1513;&#1493;&#1493;&#1504;&#1493; &#1488;&#1514; &#1492;&#1504;&#1514;&#1493;&#1504;&#1497;&#1501; &#1493;&#1512;&#1488;&#1497;&#1504;&#1493; &#1513;&#1497;&#1513; &#1489;&#1488;&#1502;&#1514; &#1496;&#1497;&#1497;&#1511; &#1488;&#1493;&#1489;&#1512;,<span
style="mso-spacerun: yes">&nbsp; </span>&#1504;&#1497;&#1514;&#1503; &#1500;&#1492;&#1508;&#1506;&#1497;&#1500; &#1488;&#1514; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1489;&#1510;&#1493;&#1512;&#1492; &#1497;&#1491;&#1504;&#1497;&#1514;. &#1489;&#1513;&#1500;&#1489;
&#1492;&#1512;&#1488;&#1513;&#1493;&#1503; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1493;&#1512;&#1497;&#1491; &#1500;&#1499;&#1493;&#1500;&#1501; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1493;&#1497;&#1493;&#1512;&#1497;&#1491; &#1488;&#1514; &#1499;&#1500; &#1492;&#1491;&#1490;&#1500;&#1497;&#1501; &#1489;&#1506;&#1512;&#1493;&#1509; &#1513;&#1502;&#1493;&#1504;&#1506;&#1497;&#1501; &#1502;&#1488;&#1495;&#1512;&#1497;&#1501; &#1500;&#1492;&#1499;&#1504;&#1505;:</span></span><span
style='mso-bookmark:onefriend'><span dir=LTR></span><span lang=EN
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'><span
dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=EN style='mso-ansi-language:EN;mso-fareast-language:EN'>(+b bans, +i
invite-only, +k keyword-required, +l limit). <o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:
EN'>&#1494;&#1492; &#1502;&#1514;&#1497; &#1513;&#1488;&#1514;&#1492; &#1495;&#1497;&#1497;&#1489; &#1500;&#1492;&#1499;&#1504;&#1505; &#1500;&#1506;&#1512;&#1493;&#1509; &#1495;&#1494;&#1512;&#1492; &#1489;&#1502;&#1492;&#1497;&#1512;&#1493;&#1514;. &#1493;&#1488;&#1494; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1495;&#1493;&#1494;&#1512; &#1500;&#1506;&#1512;&#1493;&#1509; &#1500;&#1488;&#1495;&#1512; &#1502;&#1499;&#1503;
&#1493;&#1502;&#1495;&#1494;&#1497;&#1512; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1500;&#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1512;&#1490;&#1497;&#1500;&#1497;&#1501; &#1513;&#1500; &#1492;&#1506;&#1512;&#1493;&#1509;, &#1499;&#1488;&#1497;&#1500;&#1493; &#1494;&#1492; &#1506;&#1512;&#1493;&#1509; &#1512;&#1490;&#1497;&#1500; &#1513;&#1492;&#1508;&#1505;&#1497;&#1491; &#1488;&#1514; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501;. </span></span><span
style='mso-bookmark:onefriend'><span dir=LTR></span><span lang=EN
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'><span
dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><b><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1500;&#1492;&#1495;&#1494;&#1497;&#1512; &#1495;&#1494;&#1512;&#1492; &#1502;-
&#1496;&#1497;&#1497;&#1511; &#1488;&#1493;&#1489;&#1512; , &#1488;&#1501; &#1506;&#1502;&#1491;&#1514; &#1489;&#1499;&#1500; &#1492;&#1514;&#1504;&#1488;&#1497;&#1501; &#1513;&#1500; &#1506;&#1512;&#1493;&#1509; &#1500;&#1500;&#1488; &#1488;&#1493;&#1508;&#1497;&#1501; , &#1500;&#1498; &#1500;&#1488;&#1508;&#1504;&#1496; &#1500;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;</span></b></span><span
style='mso-bookmark:onefriend'><span dir=LTR></span><b><span style='font-size:
14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></b></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
dir=RTL></span><b><span lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:
EN'><span dir=RTL></span>#</span></b></span><span style='mso-bookmark:onefriend'><b><span
style='font-size:14.0pt;mso-fareast-language:EN'>CHANFIX<o:p></o:p></span></b></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><b><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1493;&#1514;&#1505;&#1508;&#1512; &#1500;&#1504;&#1493; &#1488;&#1514; &#1513;&#1501;
&#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498;, &#1502;&#1492; &#1492;&#1497;&#1492; &#1500;&#1488; &#1514;&#1511;&#1497;&#1503; , &#1502;&#1492; &#1506;&#1513;&#1497;&#1514; &#1500;&#1502;&#1504;&#1493;&#1506; &#1488;&#1514; &#1494;&#1492; &#1489;&#1513;&#1504;&#1497;&#1514;, &#1493;&#1488;&#1494; &#1514;&#1502;&#1514;&#1497;&#1503; &#1489;&#1513;&#1511;&#1496; &#1500;&#1506;&#1494;&#1512;&#1492;, </span></b></span><span
style='mso-bookmark:onefriend'><span lang=HE dir=RTL style='font-size:14.0pt;
mso-fareast-language:EN'>&#1504;&#1495;&#1494;&#1493;&#1512; &#1488;&#1500;&#1497;&#1498; &#1489;&#1492;&#1511;&#1491;&#1501; &#1492;&#1488;&#1508;&#1513;&#1512;&#1497;.</span></span><span
style='mso-bookmark:onefriend'><span dir=LTR></span><span style='font-size:
14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1489;&#1502;&#1497;&#1491;&#1492; &#1493;&#1500;&#1488; &#1506;&#1502;&#1491;&#1514;
&#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; , &#1512;&#1488;&#1492; &#1488;&#1514; &#1492;&#1508;&#1512;&#1511; &#1492;&#1491;&#1503; &#1489;&#1504;&#1493;&#1513;&#1488; &#1500;&#1502;&#1506;&#1500;&#1492;. &#1489;&#1492;&#1510;&#1500;&#1495;&#1492;, &#1488;&#1514;&#1492; &#1510;&#1512;&#1497;&#1498; &#1488;&#1514; &#1494;&#1492;.</span></span><span
style='mso-bookmark:onefriend'><span dir=LTR></span><span style='font-size:
14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></span></p>

<p dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><span
style='mso-bookmark:onefriend'><span dir=RTL></span><b><span lang=HE
style='font-size:24.0pt;mso-fareast-language:EN'><span dir=RTL></span>5. &#1488;&#1497;&#1498; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505;
&#1513;&#1493;&#1502;&#1512; &#1504;&#1511;&#1493;&#1491;&#1493;&#1514;?</span></b></span><span style='mso-bookmark:onefriend'><span
dir=LTR></span><b><span lang=HE dir=LTR style='font-size:24.0pt;mso-fareast-language:
EN'><span dir=LTR></span> </span></b></span><span style='mso-bookmark:onefriend'><span
lang=EN dir=LTR style='mso-ansi-language:EN;mso-fareast-language:EN'><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1502;&#1502;&#1513;&#1497;&#1498;
&#1499;&#1500; &#1492;&#1494;&#1502;&#1503; &#1500;&#1489;&#1491;&#1493;&#1511; &#1500;&#1502;&#1497; &#1497;&#1513; &#1488;&#1493;&#1508; &#1489;&#1506;&#1512;&#1493;&#1509; &#1506;&quot;&#1497; &#1513;&#1497;&#1502;&#1493;&#1513; &#1489;&#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1493;&#1512;&#1497;&#1513;&#1493;&#1502;&#1501; &#1489;&#1502;&#1505;&#1491; &#1504;&#1514;&#1493;&#1504;&#1497;&#1501;. &#1500;&#1492;&#1495;&#1494;&#1497;&#1511;
&#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1492;&#1506;&#1512;&#1493;&#1509; &#1513;&#1500;&#1498; &#1495;&#1497;&#1497;&#1489; &#1500;&#1506;&#1502;&#1493;&#1491; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514; &#1499;&#1508;&#1497; &#1513;&#1510;&#1493;&#1497;&#1503; &#1511;&#1493;&#1491;&#1501;. &#1492;&#1514;&#1504;&#1488;&#1497;&#1501; &#1492;&#1488;&#1500;&#1493; &#1499;&#1493;&#1500;&#1500;&#1497;&#1501; &#1502;&#1505;&#1508;&#1512; &#1502;&#1497;&#1504;&#1497;&#1502;&#1500;&#1497;
&#1513;&#1500; &#1488;&#1493;&#1508;&#1497;&#1501; &#1512;&#1490;&#1497;&#1500;&#1497;&#1501; &#1513;&#1497;&#1513; &#1500;&#1492;&#1501; &#1488;&#1497;&#1491;&#1504;&#1496;&#1491; &#1493;&#1499;&#1514;&#1493;&#1489;&#1514; &#1488;&#1493; &#1488;&#1497; &#1508;&#1497; &#1511;&#1489;&#1493;&#1506; &#1500;&#1502;&#1497;&#1504;&#1497;&#1502;&#1493;&#1501; &#1508;&#1512;&#1511; &#1494;&#1502;&#1503;. &#1488;&#1501; &#1506;&#1502;&#1491;&#1514; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514;
&#1488;&#1514;&#1492; &#1500;&#1488; &#1510;&#1512;&#1497;&#1498; &#1500;&#1492;&#1512;&#1513;&#1501;, &#1493;&#1494;&#1492; &#1500;&#1488; &#1502;&#1513;&#1504;&#1492; &#1488;&#1501; &#1513;&#1497;&#1504;&#1497;&#1514; &#1504;&#1497;&#1511;. &#1492;&#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1504;&#1513;&#1502;&#1512;&#1493;&#1514; &#1488;&#1493;&#1496;&#1493;&#1502;&#1496;&#1497; &#1489;&#1492;&#1514;&#1488;&#1501; &#1500;- &#1492;&#1493;&#1505;&#1496;@&#1497;&#1493;&#1494;&#1512;
.</span></span><span style='mso-bookmark:onefriend'><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1488;&#1501; &#1506;&#1502;&#1491;&#1514; &#1489;&#1491;&#1512;&#1497;&#1513;&#1493;&#1514;,
&#1499;&#1500; 5 &#1491;&#1511;&#1493;&#1514; &#1513;&#1497;&#1513; &#1500;&#1498; &#1488;&#1493;&#1508; &#1489;&#1506;&#1512;&#1493;&#1509; &#1488;&#1514;&#1492; &#1502;&#1511;&#1489;&#1500; &#1504;&#1511;&#1493;&#1491;&#1492;. &#1499;&#1499;&#1500; &#1513;&#1514;&#1514;&#1502;&#1497;&#1491; &#1500;&#1492;&#1495;&#1494;&#1497;&#1511; &#1488;&#1493;&#1508; , &#1497;&#1492;&#1497;&#1492; &#1500;&#1498; &#1497;&#1493;&#1514;&#1512;
&#1504;&#1511;&#1493;&#1491;&#1493;&#1514;. &#1492;&#1504;&#1497;&#1511;&#1493;&#1491; &#1504;&#1513;&#1502;&#1512; &#1512;&#1511; &#1506;&#1489;&#1493;&#1512; &#1492;&#1513;&#1489;&#1493;&#1506;&#1497;&#1497;&#1501; &#1492;&#1488;&#1495;&#1512;&#1493;&#1504;&#1497;&#1501;. &#1492;&#1504;&#1497;&#1511;&#1493;&#1491; &#1492;&#1496;&#1493;&#1489; &#1489;&#1497;&#1493;&#1514;&#1512; &#1492;&#1493;&#1500;&#1498; &#1500;&#1488;&#1504;&#1513;&#1497;&#1501; (&#1488;&#1493;
&#1489;&#1493;&#1496;&#1497;&#1501;) &#1513;&#1497;&#1513; &#1500;&#1492;&#1501; &#1495;&#1497;&#1489;&#1493;&#1512; 24/7 , &#1493;&#1499;&#1488;&#1500;&#1493; &#1513;&#1502;&#1511;&#1489;&#1500;&#1497;&#1501; &#1488;&#1493;&#1508; &#1502;&#1492;&#1512; &#1502;&#1497;&#1491; &#1500;&#1488;&#1495;&#1512; &#1513;&#1504;&#1499;&#1504;&#1505;&#1493; &#1500;&#1506;&#1512;&#1493;&#1509;. &#1506;&#1512;&#1493;&#1509; &#1497;&#1510;&#1497;&#1489;
&#1510;&#1512;&#1497;&#1498; &#1513;&#1497;&#1492;&#1497;&#1492; &#1500;&#1493; 10 &#1488;&#1493; &#1497;&#1493;&#1514;&#1512; &#1488;&#1493;&#1508;&#1497;&#1501; &#1506;&#1501; &#1492;&#1512;&#1489;&#1492; &#1504;&#1511;&#1493;&#1491;&#1493;&#1514;,<span style="mso-spacerun:
yes">&nbsp; </span>&#1492;&#1493;&#1493;&#1492; &#1488;&#1493;&#1502;&#1512; &#1492;&#1495;&#1494;&#1511;&#1514; &#1488;&#1493;&#1508; &#1500;&#1508;&#1495;&#1493;&#1514; 50%-25 &#1502;&#1492;&#1494;&#1502;&#1503;. &#1489;&#1491;&#1512;&#1498; &#1492;&#1494;&#1488;&#1514; &#1488;&#1501; &#1502;&#1513;&#1492;&#1493; &#1502;&#1513;&#1514;&#1489;&#1513;,
&#1500;&#1500;&#1488; &#1505;&#1508;&#1511; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1499;&#1493;&#1500; &#1500;&#1494;&#1492;&#1493;&#1514; &#1502;&#1497; &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1492;&#1512;&#1490;&#1497;&#1500;&#1497;&#1501; &#1493;&#1488;&#1494; &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1497;&#1499;&#1493;&#1500; &#1500;&#1506;&#1513;&#1493;&#1514; &#1488;&#1514; &#1492;&#1506;&#1489;&#1493;&#1491;&#1492;
&#1489;&#1511;&#1500;&#1493;&#1514;. &#1492;&#1502;&#1497;&#1491;&#1506; &#1506;&#1500; &#1492;&#1504;&#1511;&#1493;&#1491;&#1493;&#1514; &#1504;&#1490;&#1497;&#1513; &#1500;&#1499;&#1500; &#1492;&#1488;&#1497; &#1488;&#1512; &#1505;&#1497; &#1488;&#1493;&#1508;&#1512;&#1496;&#1493;&#1512;&#1497;&#1501; , &#1488;&#1489;&#1500; &#1500;&#1488; &#1500;&#1498;, &#1488;&#1508;&#1497;&#1500;&#1493; &#1488;&#1501; &#1488;&#1514;&#1492; &#1488;&#1495;&#1491;
&#1502;&#1492;- 10 &#1492;&#1488;&#1493;&#1508;&#1497;&#1501; &#1489;&#1504;&#1497;&#1511;&#1493;&#1491;. &#1494;&#1492; &#1506;&#1500; &#1502;&#1504;&#1514; &#1500;&#1492;&#1490;&#1503; &#1506;&#1500;&#1497;&#1498; &#1493;&#1506;&#1500; &#1492;&#1506;&#1512;&#1493;&#1509; &#1504;&#1490;&#1491; &#1502;&#1514;&#1511;&#1497;&#1508;&#1497;&#1501; &#1513;&#1497;&#1491;&#1506;&#1493; &#1502;&#1497; &#1492;&#1506;&#1513;&#1512; &#1492;&#1512;&#1488;&#1513;&#1493;&#1504;&#1497;&#1501;
&#1513;&#1499;&#1491;&#1488;&#1497; &#1500;&#1492;&#1501; &#1500;&#1492;&#1514;&#1511;&#1497;&#1507;.</span></span><span style='mso-bookmark:onefriend'><span
dir=LTR></span><span style='font-size:14.0pt;mso-fareast-language:EN'><span
dir=LTR></span><o:p></o:p></span></span></p>

<p align=right style='text-align:right'><span style='mso-bookmark:onefriend'><span
lang=HE dir=RTL style='font-size:14.0pt;mso-fareast-language:EN'>&#1500;&#1511;&#1489;&#1500;&#1514; &#1502;&#1497;&#1491;&#1506; &#1496;&#1499;&#1504;&#1497;
&#1493;&#1491;&#1497;&#1493;&#1503; &#1489;&#1504;&#1493;&#1513;&#1488; &#1488;&#1497;&#1498; &#1513;&#1497;&#1496;&#1514; &#1492;&#1504;&#1497;&#1511;&#1493;&#1491; &#1506;&#1493;&#1489;&#1491;&#1514; &#1512;&#1488;&#1492;:<span style="mso-spacerun: yes">&nbsp;
</span></span></span><span style='mso-bookmark:onefriend'><span dir=LTR></span><span
style='font-size:14.0pt;mso-fareast-language:EN'><span dir=LTR></span><o:p></o:p></span></span></p>

<span style='mso-bookmark:onefriend'></span>

<p align=right style='text-align:right'><span lang=EN style='mso-ansi-language:
EN;mso-fareast-language:EN'>&quot;</span><span lang=EN style='mso-ansi-language:
EN'><a href="http://www.qurve.com/efnet/chanfix/"><span style='mso-fareast-language:
EN'>What CHANFIX really is and isn't</span></a></span><span lang=EN
style='mso-ansi-language:EN;mso-fareast-language:EN'>&quot; <a name=more></a><o:p></o:p></span></p>

<h2 dir=RTL style='text-align:right;direction:rtl;unicode-bidi:embed'><a
name="_&#1502;&#1497;&#1491;&#1506;_&#1504;&#1493;&#1505;&#1507;_.6"></a><a name="_6._&#1502;&#1497;&#1491;&#1506;_&#1504;&#1493;&#1505;&#1507;"></a><span dir=RTL></span><span
lang=HE style='font-size:24.0pt;mso-fareast-language:EN'><span dir=RTL></span>6.
&#1502;&#1497;&#1491;&#1506; &#1504;&#1493;&#1505;&#1507;</span><span dir=LTR></span><span lang=HE dir=LTR style='font-size:
24.0pt;mso-fareast-language:EN'><span dir=LTR></span> </span><span lang=EN
dir=LTR style='mso-ansi-language:EN;mso-fareast-language:EN'><o:p></o:p></span></h2>

<p align=right style='text-align:right'><span lang=EN style='font-size:14.0pt;
mso-ansi-language:EN;mso-fareast-language:EN'>&quot;</span><span lang=EN
style='font-size:14.0pt;mso-ansi-language:EN'><a
href="http://www.qurve.com/efnet/chanfix/"><span style='mso-fareast-language:
EN'>What CHANFIX really is and isn't</span></a></span><span lang=EN
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN'>&quot; <o:p></o:p></span></p>

<h2 align=right style='text-align:right'><span lang=EN style='font-size:14.0pt;
mso-ansi-language:EN;font-weight:normal'><a
href="http://services.efnet.broken.com/chanfix/chanfix-faq.html"><span
style='mso-fareast-language:EN'>original FAQ</span></a></span><span lang=EN
style='font-size:14.0pt;mso-ansi-language:EN;mso-fareast-language:EN;
font-weight:normal'><o:p></o:p></span></h2>

<h2 align=right style='text-align:right'><span lang=HE dir=RTL
style='mso-ansi-language:EN;mso-fareast-language:EN'>&#1492;&#1505;&#1496;&#1493;&#1512;&#1497;&#1492;: &#1510;'&#1488;&#1504;&#1508;&#1497;&#1511;&#1505; &#1492;&#1493;&#1495;&#1500;&#1496; &#1489;&#1492;&#1510;&#1489;&#1506;&#1492;
&#1506;&quot;&#1497; &#1512;&#1493;&#1489; &#1492;&#1488;&#1491;&#1502;&#1497;&#1504;&#1497;&#1501; &#1513;&#1500; &#1488;&#1508;&#1504;&#1496; &#1489;&#1488;&#1508;&#1512;&#1497;&#1500; 2001 , &#1493;&#1492;&#1514;&#1495;&#1497;&#1500; &#1489;&#1497;&#1493;&#1500;&#1497; 2001.</span><span
dir=LTR></span><span lang=EN style='mso-ansi-language:EN;mso-fareast-language:
EN'><span dir=LTR></span><o:p></o:p></span></h2>

<p align=right style='text-align:right'><span lang=EN style='mso-ansi-language:
EN;mso-fareast-language:EN'><![if !supportEmptyParas]>&nbsp;<![endif]><o:p></o:p></span></p>

<p align=right style='text-align:right'><span lang=EN style='mso-ansi-language:
EN;mso-fareast-language:EN'>[</span><span lang=EN style='mso-ansi-language:
EN'><a href="/ircd/index.html"><span
style='mso-fareast-language:EN'>Return to main directory: IRC daemon / IRC
server software</span></a></span><span lang=EN style='mso-ansi-language:EN;
mso-fareast-language:EN'>] <o:p></o:p></span></p>


<div class=MsoNormal align=right style='text-align:right'><span lang=EN
style='mso-ansi-language:EN'>

<hr size=2 width="100%" align=right>

</span></div>

</div>

{:/nomarkdown}


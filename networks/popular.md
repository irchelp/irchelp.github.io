---
title: Popular IRC networks
author: irchelp.org staff
layout: default
redirect_from:
  - /irchelp/networks/popular.html
---

# Popular IRC Networks

_Selected Networks with 10,000+ Users_


updated Nov 7, 2003

This page is part of the <http://www.irchelp.org/irchelp/networks/>, please do not mirror or distribute.

We highlight here some popular networks with average user counts of 10,000 to 170,000 and up. These nets tend to have the largest, busiest channels. For example, some channels have over 2000 people, so just one channel like that has more people than 97% of the 800+ networks out there!

Size isn't everything, though. These nets have lots of fun chat but also an abundance of the "dark side" of IRC: [illegal file trading](../security/warez.html), lag, splits, ad spams, pornography, [trojan/virus infections](../security/trojan.html), [denial of service attacks](../nuke/), etc. It's no wonder then that many experienced IRC users prefer other alternatives, such as smaller nets that still have lots of people but far fewer problems, or nets devoted to specific subjects or geographical areas / languages.

The popular nets are listed alphabetically with no regard to size. All links take you away to pages hosted by that network or to the 3rd party statistics site [netsplit.de](http://irc.netsplit.de/networks/), which hosts comprehensive, opt-in network lists such as the [top charts](http://irc.netsplit.de/networks/list1uma.var). Another similar site is [SearchIRC](http://www.searchirc.com). Our purpose is just to get you going by providing important links and information for some selected nets, so that you can quickly compare them or get their home page, server list, etc. Some information is quoted directly "like this" from the net's own site.

The following networks are highlighted below: 
{{ site.data.catlist.popular | join: ", " }}

{% for member in site.data.catlist.popular -%}
{% assign netw=site.data.netlist[member] -%}
{% if netw.image -%}
{% capture img %} ![{{ netw.image }}]({{ netw.image }}) {% endcapture %}
{%- else -%}
{% assign img="" %}
{%- endif -%} 
{%- if netw.homepage -%}
### {{ img }} [ {{ member }} ]( {{ netw.homepage }} )
{%- else -%}
### {{ img }} {{ member }}
{%- endif %} 
{% if netw.webchat -%}
<b>Webchat:</b> <{{ netw.webchat }}> <br>
{%- endif -%} 
{% if netw.slocation -%}
<b>Server Locations:</b> {{ netw.slocation }} <br>
{%- endif -%} 
<b>Services:</b> {{ netw.services }} <br>
{% if netw.support_channels -%}
<b>Support Channels:</b> {{ netw.support_channels }} <br>
{%- endif -%} 
{% if netw.webserverlist -%}
<b>Servers:</b> <{{ netw.webserverlist }}> <br>
{%- endif -%} 
{% if netw.servers -%}
<b>Servers:</b>  {{ netw.servers | join: ", " }} <br>
{%- endif -%} 
{% if netw.webstatistic -%}
<b>Statistic:</b> <{{ netw.webstatistic }}> <br>
{%- endif -%} 
<b>Information:</b><br>
{{ netw.information }}
{% endfor %}



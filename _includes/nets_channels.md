
{% for member in site.data.catlist[include.category] -%}
{% assign netw=site.data.netlist[member] -%}
{% if netw.status=="down" %}
{% continue %}
{% endif %}
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
{% if netw.services -%}
<b>Services:</b> {{ netw.services }} <br>
{%- endif -%} 
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

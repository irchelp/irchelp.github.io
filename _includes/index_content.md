{% assign thisdir = site.pages | where: "dir", page.dir %} 
{% for tp in thisdir %}
{%  if tp.name != "index.md" %}
<p><b><a href="{{ tp.url }}">&hookrightarrow; {{ tp.title }}</a></b></p>
{{ tp.summary }} 
{%  endif %}
{% endfor %}

{% assign indexs = site.pages | where: "name", "index.md" %} 
{% assign pagedirs = page.dir | split: "/" %}
{% for tp in indexs %}
{%  if tp.dir contains page.dir and tp.dir != page.dir %}
{%   assign tpdirs = tp.dir | split: "/" %}
{%   assign ok = "ok"  %}
{%   for pd in pagedirs %}
{%    assign td = tpdirs | first %}
{%    assign tpdirs = tpdirs | shift %}
{%    if td != pd %}
{%     assign ok = "not ok"  %}
{%    endif %}
{%   endfor %}
{%   assign tpdirs = tpdirs | shift |first %}
{%   if tpdirs  %}
{%    assign ok = "not ok"  %}
{%   endif %}
{%   if ok == "ok" %}
<p><b> <a href="{{ tp.url }}">&hookrightarrow; {{ tp.title }}/</a></b></p>
{{ tp.summary }} 
{%   endif %}
{%  endif %}
{% endfor %}

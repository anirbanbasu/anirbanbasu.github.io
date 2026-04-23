+++
title = "{{ title }}"
date = {% if fields.date is defined and fields.date %}{{ fields.date }}{% else %}{{ year | default(value="Unknown") }}-{{ fields.month | default(value="01") }}-{{ fields.day | default(value="01") }}{% endif %}
description = "{{year}}: {{ fields.journal | default(value=fields.booktitle | default(value=fields.institution | default(value=fields.school | default(value="")))) }}"

[taxonomies]
tags = [{% for kw in slugified_keywords %}"{{ kw }}"{% if not loop.last %}, {% endif %}{% endfor %}]
categories = ["publications"]
+++

<!-- citation: {{ key }} -->

_{{ authors | join(sep="; ") | replace(from="\myname", to="Anirban Basu") | replace(from="\ ", to=" ") }}_

{% if fields %}
{% if fields.abstract is defined and fields.abstract %}
<div>{{ fields.abstract }}</div>
{% endif %}
<h2>Publication metadata</h2>
<table>
<thead>
<tr>
<th>Field</th>
<th>Value</th>
</tr>
</thead>
<tbody>
{% for key, value in fields %}
{% if key != "abstract" %}
<tr>
<th scope="col">{{ key }}</th>
{% if key | lower == "doi" %}
{% set doi_path = value | trim | replace(from="https://doi.org/", to="") | replace(from="http://doi.org/", to="") %}
{% set doi_url = "https://doi.org/" ~ doi_path %}
<td><a href="{{ doi_url }}" target="_blank">{{ doi_url }}</a></td>
{% else %}
<td>{{ value | trim }}</td>
{% endif %}
</tr>
{% endif %}
{% endfor %}
</tbody>
</table>
{% endif %}

<h3>Raw BibTeX entry</h3>
{% if raw_bibtex is defined and raw_bibtex %}
```bibtex
{{ raw_bibtex | trim | replace(from="\myname", to="Basu, Anirban") }}
```
{% endif %}

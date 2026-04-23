+++
title = "{{ title }}"
date = {% if fields.date is defined and fields.date %}{{ fields.date }}{% else %}{{ year | default(value="Unknown") }}-{{ fields.month | default(value="01") }}-{{ fields.day | default(value="01") }}{% endif %}
updated = "{{ now() | date(format="%Y-%m-%d") }}"
description = "{{year}}: {{ fields.journal | default(value=fields.booktitle | default(value=fields.institution | default(value=fields.school | default(value="")))) }}"

[taxonomies]
tags = [{% for kw in slugified_keywords %}"{{ kw }}"{% if not loop.last %}, {% endif %}{% endfor %}]
categories = ["publications"]
+++

<!-- citation: {{ key }} -->

{% set author_count = authors | length %}
<h3><i>{% for author in authors %}{% set display_author = author | replace(from="\myname", to="Anirban Basu") | replace(from="\ ", to=" ") %}{% if author_count == 1 %}{{ display_author }}{% elif loop.last %}and {{ display_author }}{% elif loop.index == author_count - 1 %}{{ display_author }} {% else %}{{ display_author }}, {% endif %}{% endfor %}</i></h3>

{% if fields %}
{% if fields.abstract is defined and fields.abstract %}
<div><b>Abstract:</b> {{ fields.abstract }}</div>
{% endif %}
<table class="table-publication-metadata">
<tbody>
{% for key, value in fields %}
{% if key != "abstract" %}
<tr>
<th scope="col">{{ key }}</th>
{% if key | lower == "doi" %}
{% set doi_path = value | trim | replace(from="https://doi.org/", to="") | replace(from="http://doi.org/", to="") %}
{% set doi_url = "https://doi.org/" ~ doi_path %}
<td><a href="{{ doi_url }}" target="_blank">{{ doi_path }}</a></td>
{% else %}
<td>{{ value | trim }}</td>
{% endif %}
</tr>
{% endif %}
{% endfor %}
</tbody>
</table>
{% endif %}

{% if raw_bibtex is defined and raw_bibtex %}
<details>
<summary>Cite this publication, using BibTeX</summary>

```bibtex
{{ raw_bibtex | trim | replace(from="\myname", to="Basu, Anirban") }}
```

</details>
{% endif %}

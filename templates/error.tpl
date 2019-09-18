{% extends "default.html" %}

{% block header %}
    <h1>{% include "header.tpl" %}</h1>
{% endblock %}

{% block content %}
    <section class="grid1">
        <img src="/static/sadface.png" width="485px" height="485px">
    </section>
    <section class="grid2">
        <h1>Fyrirgefðu en þessi síða er ekki til</h1>
        <a href="/">Forsíða</a>
    </section>
        
{% endblock %}

{% block footer %}
    <p>{% include "footer.tpl" %}</p>
{% endblock %}
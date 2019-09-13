{% extends "default.html" %}

{% block header %}
    <h1>{% include "header.tpl" %}</h1>
    <h2>{{ list[0][0] }}
{% endblock %}

{% block content %}
    <section class="grid1">
        <img src="/static/Mynd0.jpg" height="303px" width="485px">
    </section>
    <section class="grid2">
        <ol>
            {% for index in range(len) %}
                <ul><a href="/frettir/{{ index }}">{{ list[index][0] }}</a></ul>
            {% endfor %}
        </ol>
    </section>
{% endblock %}

{% block footer %}
    <p>{% include "footer.tpl" %}</p>
{% endblock %}

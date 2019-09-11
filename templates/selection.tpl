{% extends "default.html" %}

{% block header %}
    <h1>{% include "header.tpl" %}</h1>
    <h2>{{ list[0][0] }}
{% endblock %}

{% block content %}
    <section>
        <img src="/static/Mynd0.jpg">
    </section>
    <section>
        <ol>
            {% for index in range(len) %}
                <li><a href="/frettir/{{ index }}">{{ list[index][0] }}</a></li>
            {% endfor %}
        </ol>
    </section>
{% endblock %}

{% block footer %}
    <p>{% include "footer.tpl" %}</p>
{% endblock %}

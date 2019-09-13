{% extends "default.html" %}
<header>
    {% block header %}
        <h1>{% include "header.tpl" %}</h1>
        <h2>{{ headline }}<h2>
    {% endblock %}
</header>

<div>
    {% block content %}
        <section>
            <img src="/static/Mynd{{index}}.jpg" width="485px" height={{height}}>
        </section>
        <section>
            <p>{{ greinin }}<p>
        </section>
    {% endblock %}
</div>

<footer>
    {% block footer %}
        <p>{% include "footer.tpl" %}</p>
    {% endblock %}
</footer>
{% macro table(columns) %}
    select {% for column_name in columns %}
            {{column_name}}{% if not loop.last %},{%endif%}
        {%endfor%}
{%endmacro%}


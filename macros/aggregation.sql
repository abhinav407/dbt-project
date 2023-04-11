{% macro aggregation_column(columns) %}
    SELECT AVG({{ columns }}) as avg_{{columns}}, COUNT({{ columns }}) as count_{{columns}},sum({{ columns }}) as sum_{{columns}}
{% endmacro %}
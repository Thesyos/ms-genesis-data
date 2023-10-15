{% macro get_user_parameter(input) %}

    {%- if input -%}
        {{input}}
    {%- else -%}
        NULL
    {%- endif -%}

{% endmacro %}
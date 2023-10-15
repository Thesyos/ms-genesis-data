{% macro generate_schema_name_for_env(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if target.name[-4:] == 'live' and custom_schema_name is not none -%}

        {{ custom_schema_name | trim }}

    {%- else -%}

        _{{  default_schema }}_{{  custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}
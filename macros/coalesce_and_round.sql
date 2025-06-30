{%- macro coalesce_and_round(column_name, descimal_places = 2) -%}
    ROUND(
        COALESCE( {{ column_name }}, 0 ),
        {{ descimal_places }}
    )
{%- endmacro -%}
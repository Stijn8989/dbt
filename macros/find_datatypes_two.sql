{% macro find_datatypes_two(model) %}
    {% set cols=adapter.get_columns_in_relation(model) %}
    {%- for col in cols %}
      - name: {{ col.name | lower }}
        data_type: {{ col.dtype | lower }}
    {%- endfor %}
{% endmacro %}
{% macro find_datatypes(model) %}

select column_name
    , data_type
from information_schema.columns
where lower(table_name) = '{{ model }}'

{% endmacro %}
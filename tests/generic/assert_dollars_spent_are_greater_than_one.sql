{% test assert_dollars_spent_are_greater_than_threshold( model, column_name, group_by_column, threshold) %}

select 
    {{ group_by_column }},
    avg( {{ column_name }} ) as average_amount

from {{ model }}
group by 1
having average_amount < {{ threshold }}


{% endtest %}
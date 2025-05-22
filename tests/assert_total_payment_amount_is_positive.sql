select
    customer_id, 
    order_total
from {{ ref('fct_orders') }}
where order_total < 0
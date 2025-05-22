select customer_id
    , count(customer_id) as freq
from {{ ref('dim_customers') }}
group by customer_id
having count(customer_id) > 1
order by freq desc
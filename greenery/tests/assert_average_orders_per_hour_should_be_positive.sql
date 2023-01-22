select * 
from {{ ref('avg_orders_per_hour')}}
where average_order_count < 0
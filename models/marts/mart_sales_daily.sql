select
    date_trunc('day', order_purchase_timestamp) as order_date,
    count(distinct order_id) as orders_count,
    sum(price) as total_revenue,
    sum(freight_value) as total_freight
from {{ ref('fct_orders') }}
group by 1
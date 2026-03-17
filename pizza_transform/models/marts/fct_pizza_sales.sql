with order_details as (
    select * from {{ ref('stg_order_details') }}
),
pizzas as (
    select * from {{ ref('stg_pizzas') }}
),
pizza_types as (
    select * from {{ ref('stg_pizza_types') }}
),
orders as (
    select * from {{ ref('stg_orders') }}
)

select
    od.order_detail_id,
    od.order_id,
    o.order_date,
    o.order_time,
    pt.pizza_name,
    pt.category,
    p.size,
    p.price,
    od.quantity,
    -- Calculate total price per line item
    (od.quantity * p.price) as total_price
from order_details od
left join pizzas p on od.pizza_id = p.pizza_id
left join pizza_types pt on p.pizza_type_id = pt.pizza_type_id
left join orders o on od.order_id = o.order_id
select
    cast(order_id as int) as order_id,
    cast(date as date) as order_date,
    time as order_time
from {{ source('pizza_raw_data', 'orders') }}
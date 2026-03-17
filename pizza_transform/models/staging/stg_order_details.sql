select
    cast(order_details_id as int) as order_detail_id,
    cast(order_id as int) as order_id,
    pizza_id,
    cast(quantity as int) as quantity
from {{ source('pizza_raw_data', 'order_details') }}
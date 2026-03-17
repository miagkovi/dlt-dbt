select
    pizza_id,
    pizza_type_id,
    size,
    cast(price as float) as price
from {{ source('pizza_raw_data', 'pizzas') }}
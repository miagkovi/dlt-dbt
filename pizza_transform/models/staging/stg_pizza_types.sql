select
    pizza_type_id,
    name as pizza_name,
    category,
    ingredients
from {{ source('pizza_raw_data', 'pizza_types') }}
-- dbt tests fail if the query returns any rows.
-- So, we look for "bad" data.
select
    order_detail_id,
    quantity
from {{ ref('fct_pizza_sales') }}
where quantity <= 0
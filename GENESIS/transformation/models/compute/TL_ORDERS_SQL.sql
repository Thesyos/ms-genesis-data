{{ config(
  enabled=false
) }} -- This is a quick way how to prevent execution of the model.

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from {{ref('SL_ORDERS')}}

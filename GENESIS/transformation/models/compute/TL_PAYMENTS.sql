select
    id as payment_id,
    order_id,
    payment_method,

    -- `amount` is currently stored in cents, so we convert it to euros
    cast(amount / 100 as decimal(36,2)) as amount

from {{ref('SL_PAYMENTS')}}

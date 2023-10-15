select 
    payment_id
    ,order_id
    ,payment_method
    -- `amount` is currently stored in cents, so we convert it to dollars
    ,(amount / 100)::decimal(36,2) as amount
    -- audit columns
    ,CURRENT_TIMESTAMP as INSERT_TIMESTAMP
    ,TRUE              as RECORD_VALID
from {{ref('TL_PAYMENTS')}}
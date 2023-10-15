
  create or replace   view GENESIS_UAT.CMP_GENESIS.TL_PAYMENTS
  
   as (
    select
    id as payment_id,
    order_id,
    payment_method,

    -- `amount` is currently stored in cents, so we convert it to euros
    cast(amount / 100 as decimal(36,2)) as amount

from GENESIS_UAT.STG_GENESIS.SL_PAYMENTS
  );


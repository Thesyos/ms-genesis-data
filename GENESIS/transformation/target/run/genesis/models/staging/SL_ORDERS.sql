
  
    

        create or replace transient table GENESIS_UAT.STG_GENESIS.SL_ORDERS
         as
        (select 
    id          as order_id,
    user_id     as customer_id,
    order_date,
    status
from GENESIS_UAT.STG_GENESIS.VW_RAW_ORDERS
        );
      
  
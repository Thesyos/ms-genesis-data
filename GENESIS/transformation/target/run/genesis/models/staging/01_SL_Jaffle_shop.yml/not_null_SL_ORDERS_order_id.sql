select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select order_id
from GENESIS_UAT.STG_GENESIS.SL_ORDERS
where order_id is null



      
    ) dbt_internal_test
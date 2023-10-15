select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from GENESIS_UAT.STG_GENESIS.SL_PAYMENTS
where id is null



      
    ) dbt_internal_test
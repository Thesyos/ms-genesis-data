select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select last_name
from GENESIS_UAT.STG_GENESIS.SL_CUSTOMERS
where last_name is null



      
    ) dbt_internal_test
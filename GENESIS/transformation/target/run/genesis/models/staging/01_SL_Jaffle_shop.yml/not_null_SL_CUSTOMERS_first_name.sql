select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select first_name
from GENESIS_UAT.STG_GENESIS.SL_CUSTOMERS
where first_name is null



      
    ) dbt_internal_test
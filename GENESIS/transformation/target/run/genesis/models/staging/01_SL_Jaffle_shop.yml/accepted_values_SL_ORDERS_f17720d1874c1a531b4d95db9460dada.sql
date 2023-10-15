select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from GENESIS_UAT.STG_GENESIS.SL_ORDERS
    group by status

)

select *
from all_values
where value_field not in (
    'completed','returned','return_pending','placed','shipped'
)



      
    ) dbt_internal_test
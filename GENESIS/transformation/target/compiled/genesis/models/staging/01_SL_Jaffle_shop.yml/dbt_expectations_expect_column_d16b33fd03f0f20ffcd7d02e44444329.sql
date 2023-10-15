






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and amount >= 0
)
 as expression


    from GENESIS_UAT.STG_GENESIS.SL_PAYMENTS
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors









    
    

with child as (
    select customer_id as from_field
    from GENESIS_UAT.CMP_GENESIS.TL_ORDERS
    where customer_id is not null
),

parent as (
    select customer_id as to_field
    from GENESIS_UAT.CMP_GENESIS.TL_CUSTOMERS
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



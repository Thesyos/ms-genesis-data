
    
    

with child as (
    select order_id as from_field
    from GENESIS_UAT.CMP_GENESIS.TL_PAYMENTS
    where order_id is not null
),

parent as (
    select order_id as to_field
    from GENESIS_UAT.CMP_GENESIS.TL_ORDERS
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



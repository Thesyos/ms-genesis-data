
    
    

select
    order_id as unique_field,
    count(*) as n_records

from GENESIS_UAT.STG_GENESIS.SL_ORDERS
where order_id is not null
group by order_id
having count(*) > 1



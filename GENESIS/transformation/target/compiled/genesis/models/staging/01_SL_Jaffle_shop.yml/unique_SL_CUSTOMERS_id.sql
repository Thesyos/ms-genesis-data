
    
    

select
    id as unique_field,
    count(*) as n_records

from GENESIS_UAT.STG_GENESIS.SL_CUSTOMERS
where id is not null
group by id
having count(*) > 1



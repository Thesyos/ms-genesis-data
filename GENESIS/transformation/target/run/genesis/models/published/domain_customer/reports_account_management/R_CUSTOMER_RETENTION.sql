
  
    

        create or replace  table GENESIS_UAT.PBL_GENESIS.R_CUSTOMER_RETENTION
         as
        (select 
    customer_id
    ,first_name
    ,last_name
    ,customer_lifetime_value
    ,datediff(day, most_recent_order::timestamp, CURRENT_TIMESTAMP) AS days_since_last_order
    ,iff(customer_lifetime_value > 2000 AND days_since_last_order > 365, 'high', 'low') AS urgency
from GENESIS_UAT.PBL_GENESIS.DIM_CUSTOMERS
where customer_lifetime_value > 1000
and number_of_orders > 1
and days_since_last_order > 50
        );
      
  
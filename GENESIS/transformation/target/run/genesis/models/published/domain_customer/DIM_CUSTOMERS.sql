
  
    

        create or replace  table GENESIS_UAT.PBL_GENESIS.DIM_CUSTOMERS
         as
        (select *
-- audit columns
, CURRENT_TIMESTAMP as INSERT_TIMESTAMP
, TRUE              as RECORD_VALID
from GENESIS_UAT.CMP_GENESIS.TL_CUSTOMERS
        );
      
  
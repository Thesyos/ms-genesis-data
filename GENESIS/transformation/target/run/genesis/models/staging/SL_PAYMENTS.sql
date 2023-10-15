
  
    

        create or replace transient table GENESIS_UAT.STG_GENESIS.SL_PAYMENTS
         as
        (select *
from GENESIS_UAT.STG_GENESIS.VW_RAW_PAYMENTS


        );
      
  
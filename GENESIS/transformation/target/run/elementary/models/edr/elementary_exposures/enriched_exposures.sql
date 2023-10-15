
  create or replace   view GENESIS_UAT.TEC_MONITORING.enriched_exposures
  
   as (
    

with dbt_exposures as (
  select * from GENESIS_UAT.TEC_MONITORING.dbt_exposures
),

elementary_exposures as (
  select * from GENESIS_UAT.TEC_MONITORING.elementary_exposures
)


select * from dbt_exposures where not exists (select 1 from elementary_exposures where dbt_exposures.unique_id = elementary_exposures.unique_id)

union 
 select * from elementary_exposures
  );


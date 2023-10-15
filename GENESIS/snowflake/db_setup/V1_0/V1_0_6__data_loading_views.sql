--use role GENESIS_{{env}}_sysadmin;
--use database GENESIS_{{env}};


/*******************************************************************************************************************/
/**************************************************  SAMPLE_DATA  **************************************************/
/*******************************************************************************************************************/

/*** Creation of the views reading from the stages @STG_SAMPLE.SAMPLE_DATA ***/
-- V_SAMPLE_DATA view for SAMPLE_DATA 
/*create or replace view STG_SAMPLE.V_SAMPLE_DATA as 
select
1 as sample_column
from @STG_SAMPLE.SAMPLE_DATA/sample_data/ 
(pattern => '.*parquet.*');*/
SELECT 'no-sql';
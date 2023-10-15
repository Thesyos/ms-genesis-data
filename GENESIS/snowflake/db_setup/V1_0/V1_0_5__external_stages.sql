--use role GENESIS_{{env}}_sysadmin;
--use database GENESIS_{{env}};


-- SAMPLE_DATA
/*create or replace stage STG_SAMPLE.SAMPLE_DATA
url = 's3://some-location/sample-data/'
storage_integration = GENESIS_{{env}}_s3_int
file_format = (type = parquet);*/
SELECT 'no-sql';


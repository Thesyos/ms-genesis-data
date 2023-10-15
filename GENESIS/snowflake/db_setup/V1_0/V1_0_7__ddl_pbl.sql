/*Context information*/
--use role GENESIS_{{env}}_sysadmin;
--use database GENESIS_{{env}};
--use warehouse GENESIS_{{env}}_WH_ADHOC;
--use schema PBL_SAMPLE;

/*******************************************************************************/
/*   DDL Scripts for the pubilished layer PBL : Creation of permanent tables   */
/*******************************************************************************/
-- 2022/05/20 : init SQL script


/*** Creation of permanent final published tables ***/
 -- SAMPLE_PBL_TABLE table
/*CREATE TABLE IF NOT EXISTS SAMPLE_PBL_TABLE
(
 production_order_id         string
);*/
SELECT 'no-sql';
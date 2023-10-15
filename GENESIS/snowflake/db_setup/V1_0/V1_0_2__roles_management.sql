/* Context information */
/****************************** OBJECTS ROLES ******************************/
/*** ------- STAGING ------- ***/

--- STG
-- roles
create role if not exists _GENESIS_{{env}}_STG_sr;
create role if not exists _GENESIS_{{env}}_STG_sw;
create role if not exists _GENESIS_{{env}}_STG_sfull;
-- hierarchy
grant role _GENESIS_{{env}}_STG_sr to role _GENESIS_{{env}}_STG_sw;    
grant role _GENESIS_{{env}}_STG_sw to role _GENESIS_{{env}}_STG_sfull; 

/*** ------- COMPUTE ------- ***/
--- CMP
-- roles
create role if not exists _GENESIS_{{env}}_CMP_sr;
create role if not exists _GENESIS_{{env}}_CMP_sw;
create role if not exists _GENESIS_{{env}}_CMP_sfull;
-- hierarchy
grant role _GENESIS_{{env}}_CMP_sr to role _GENESIS_{{env}}_CMP_sw;
grant role _GENESIS_{{env}}_CMP_sw to role _GENESIS_{{env}}_CMP_sfull;

/*** ------- PUBLISHED ------- ***/
--- PBL
-- roles
create role if not exists _GENESIS_{{env}}_PBL_sr;
create role if not exists _GENESIS_{{env}}_PBL_sw;
create role if not exists _GENESIS_{{env}}_PBL_sfull;
-- hierarchy
grant role _GENESIS_{{env}}_PBL_sr to role _GENESIS_{{env}}_PBL_sw;
grant role _GENESIS_{{env}}_PBL_sw to role _GENESIS_{{env}}_PBL_sfull;

/*** ------- TEC ------- ***/
--- TEC_MONITORING
-- roles
create role if not exists _GENESIS_{{env}}_TECMON_sr;
create role if not exists _GENESIS_{{env}}_TECMON_sw;
create role if not exists _GENESIS_{{env}}_TECMON_sfull;
-- hierarchy
grant role _GENESIS_{{env}}_TECMON_sr to role _GENESIS_{{env}}_TECMON_sw;
grant role _GENESIS_{{env}}_TECMON_sw to role _GENESIS_{{env}}_TECMON_sfull;

grant role _GENESIS_{{env}}_STG_sfull to role R_DBT_TEST;
grant role _GENESIS_{{env}}_CMP_sfull to role R_DBT_TEST;
grant role _GENESIS_{{env}}_PBL_sfull to role R_DBT_TEST;
grant role _GENESIS_{{env}}_TECMON_sfull to role R_DBT_TEST;
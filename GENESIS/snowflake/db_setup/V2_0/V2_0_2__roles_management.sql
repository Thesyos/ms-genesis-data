/* Context information */
/****************************** OBJECTS ROLES ******************************/
/*** ------- STAGING ------- ***/

--- PSA
-- roles
create role if not exists _GENESIS_{{env}}_PSA_sr;
create role if not exists _GENESIS_{{env}}_PSA_sw;
create role if not exists _GENESIS_{{env}}_PSA_sfull;
-- hierarchy
grant role _GENESIS_{{env}}_PSA_sr to role _GENESIS_{{env}}_PSA_sw;    
grant role _GENESIS_{{env}}_PSA_sw to role _GENESIS_{{env}}_PSA_sfull; 


grant role _GENESIS_{{env}}_PSA_sfull to role R_DBT_TEST;
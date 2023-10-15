/* Context information */
use database GENESIS_{{env}};


// STAGING

--- STG_GENESIS
-- _GENESIS_{{env}}_STG_sr
grant usage on database GENESIS_{{env}} to role _GENESIS_{{env}}_STG_sr;
grant usage on schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant select on future tables in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant select on future views in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant select on future streams in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant usage, read on future stages in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant usage on future file formats in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant usage on future procedures in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant usage on future functions in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;
grant usage on future sequences in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sr;

-- _GENESIS_{{env}}_STG_sw
grant insert, update, truncate, references, delete on future tables in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sw;
grant read, write on future stages in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sw;
grant monitor, operate on future tasks in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sw;

-- _GENESIS_{{env}}_STG_sfull
revoke ownership on future tables in schema GENESIS_{{env}}.STG_GENESIS from role _GENESIS_{{env}}_STG_sfull;
grant ownership on future tables in schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sfull;
revoke ownership on future views in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future views in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future stages in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future stages in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future file formats in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future file formats in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future streams in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future streams in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future procedures in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future procedures in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future functions in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future functions in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future sequences in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future sequences in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;
revoke ownership on future tasks in schema GENESIS_{{env}}.STG_GENESIS from role  _GENESIS_{{env}}_STG_sfull;
grant ownership on future tasks in schema GENESIS_{{env}}.STG_GENESIS to role  _GENESIS_{{env}}_STG_sfull;

--- additional privileges
grant create table, create view, create stage, create file format, create function, create procedure, create sequence, create task on schema GENESIS_{{env}}.STG_GENESIS to role _GENESIS_{{env}}_STG_sfull;

// COMPUTE
--- CMP_GENESIS
-- _GENESIS_{{env}}_CMP_sr
grant usage on database GENESIS_{{env}} to role _GENESIS_{{env}}_CMP_sr;
grant usage on schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant select on future tables in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant select on future views in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant select on future streams in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant usage, read on future stages in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant usage on future file formats in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant usage on future procedures in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant usage on future functions in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;
grant usage on future sequences in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sr;

-- _GENESIS_{{env}}_CMP_sw
grant insert, update, truncate, references, delete on future tables in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sw;
grant read, write on future stages in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sw;
grant monitor, operate on future tasks in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sw;

-- _GENESIS_{{env}}_CMP_sfull
revoke ownership on future tables in schema GENESIS_{{env}}.CMP_GENESIS from role _GENESIS_{{env}}_CMP_sfull;
grant ownership on future tables in schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future views in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future views in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future stages in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future stages in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future file formats in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future file formats in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future streams in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future streams in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future procedures in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future procedures in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future functions in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future functions in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future sequences in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future sequences in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;
revoke ownership on future tasks in schema GENESIS_{{env}}.CMP_GENESIS from role  _GENESIS_{{env}}_CMP_sfull;
grant ownership on future tasks in schema GENESIS_{{env}}.CMP_GENESIS to role  _GENESIS_{{env}}_CMP_sfull;

--- additional privileges
grant create table, create view, create stage, create file format, create function, create procedure, create sequence, create task on schema GENESIS_{{env}}.CMP_GENESIS to role _GENESIS_{{env}}_CMP_sfull;

// PUBLISHED
--- PBL_GENESIS
-- _GENESIS_{{env}}_PBL_sr
grant usage on database GENESIS_{{env}} to role _GENESIS_{{env}}_PBL_sr;
grant usage on schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant select on future tables in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant select on future views in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant select on future streams in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant usage, read on future stages in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant usage on future file formats in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant usage on future procedures in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant usage on future functions in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;
grant usage on future sequences in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sr;

-- _GENESIS_{{env}}_PBL_sw
grant insert, update, truncate, references, delete on future tables in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sw;
grant read, write on future stages in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sw;
grant monitor, operate on future tasks in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sw;

-- _GENESIS_{{env}}_PBL_sfull
revoke ownership on future tables in schema GENESIS_{{env}}.PBL_GENESIS from role _GENESIS_{{env}}_PBL_sfull;
grant ownership on future tables in schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future views in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future views in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future stages in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future stages in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future file formats in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future file formats in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future streams in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future streams in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future procedures in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future procedures in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future functions in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future functions in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future sequences in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future sequences in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;
revoke ownership on future tasks in schema GENESIS_{{env}}.PBL_GENESIS from role  _GENESIS_{{env}}_PBL_sfull;
grant ownership on future tasks in schema GENESIS_{{env}}.PBL_GENESIS to role  _GENESIS_{{env}}_PBL_sfull;

--- additional privileges
grant create table, create view, create stage, create file format, create function, create procedure, create sequence, create task on schema GENESIS_{{env}}.PBL_GENESIS to role _GENESIS_{{env}}_PBL_sfull;

// TECNHICAL
--- TEC_MONITORING
-- _GENESIS_{{env}}_TECMON_sr
grant usage on database GENESIS_{{env}} to role _GENESIS_{{env}}_TECMON_sr;
grant usage on schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant select on future tables in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant select on future views in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant select on future streams in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant usage, read on future stages in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant usage on future file formats in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant usage on future procedures in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant usage on future functions in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;
grant usage on future sequences in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sr;

-- _GENESIS_{{env}}_TECMON_sw
grant insert, update, truncate, references, delete on future tables in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sw;
grant read, write on future stages in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sw;
grant monitor, operate on future tasks in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sw;

-- _GENESIS_{{env}}_TECMON_sfull
revoke ownership on future tables in schema GENESIS_{{env}}.TEC_MONITORING from role _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future tables in schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future views in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future views in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future stages in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future stages in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future file formats in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future file formats in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future streams in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future streams in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future procedures in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future procedures in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future functions in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future functions in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future sequences in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future sequences in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;
revoke ownership on future tasks in schema GENESIS_{{env}}.TEC_MONITORING from role  _GENESIS_{{env}}_TECMON_sfull;
grant ownership on future tasks in schema GENESIS_{{env}}.TEC_MONITORING to role  _GENESIS_{{env}}_TECMON_sfull;

--- additional privileges
grant create table, create view, create stage, create file format, create function, create procedure, create sequence, create task on schema GENESIS_{{env}}.TEC_MONITORING to role _GENESIS_{{env}}_TECMON_sfull;


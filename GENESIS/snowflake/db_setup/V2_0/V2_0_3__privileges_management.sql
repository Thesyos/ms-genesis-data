/* Context information */
use database GENESIS_{{env}};


// STAGING

--- PSA_GENESIS
-- _GENESIS_{{env}}_PSA_sr
grant usage on database GENESIS_{{env}} to role _GENESIS_{{env}}_PSA_sr;
grant usage on schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant select on future tables in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant select on future views in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant select on future streams in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant usage, read on future stages in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant usage on future file formats in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant usage on future procedures in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant usage on future functions in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;
grant usage on future sequences in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sr;

-- _GENESIS_{{env}}_PSA_sw
grant insert, update, truncate, references, delete on future tables in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sw;
grant read, write on future stages in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sw;
grant monitor, operate on future tasks in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sw;

-- _GENESIS_{{env}}_PSA_sfull
revoke ownership on future tables in schema GENESIS_{{env}}.PSA_GENESIS from role _GENESIS_{{env}}_PSA_sfull;
grant ownership on future tables in schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future views in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future views in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future stages in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future stages in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future file formats in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future file formats in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future streams in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future streams in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future procedures in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future procedures in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future functions in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future functions in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future sequences in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future sequences in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;
revoke ownership on future tasks in schema GENESIS_{{env}}.PSA_GENESIS from role  _GENESIS_{{env}}_PSA_sfull;
grant ownership on future tasks in schema GENESIS_{{env}}.PSA_GENESIS to role  _GENESIS_{{env}}_PSA_sfull;

--- additional privileges
grant create table, create view, create stage, create file format, create function, create procedure, create sequence, create task on schema GENESIS_{{env}}.PSA_GENESIS to role _GENESIS_{{env}}_PSA_sfull;


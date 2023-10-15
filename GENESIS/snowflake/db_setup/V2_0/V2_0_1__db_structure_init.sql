use database GENESIS_{{env}};


// STAGING (STG)
--- stg_sample
create schema if not exists PSA_GENESIS with managed access comment = 'Staging layer for sample';      


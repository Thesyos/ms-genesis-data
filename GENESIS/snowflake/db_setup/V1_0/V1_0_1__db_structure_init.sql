use database GENESIS_{{env}};


// STAGING (STG)
--- stg_sample
create schema if not exists STG_GENESIS with managed access comment = 'Staging layer for sample';      

// COMPUTE (CMP)
--- cmp_sample
create schema if not exists CMP_GENESIS with managed access comment = 'Compute layer for sample';

// PUBLISHED (PBL)
--- pbl_sample
create schema if not exists PBL_GENESIS with managed access comment = 'Published layer for sample';

//TECHNICAL (TEC)
--- tec_sample
create schema if not exists TEC_MONITORING with managed access comment = 'Monitoring technical layer for sample (elementary)';

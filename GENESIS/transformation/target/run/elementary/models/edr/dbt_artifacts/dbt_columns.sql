
  create or replace   view GENESIS_UAT.TEC_MONITORING.dbt_columns
  
   as (
    

    
  
    
  

  with dbt_models_data as (
      select
          database_name,
          schema_name,
          alias as table_name
      from GENESIS_UAT.TEC_MONITORING.dbt_models
  ),

  dbt_snapshots_data as (
      select
          database_name,
          schema_name,
          alias as table_name
      from GENESIS_UAT.TEC_MONITORING.dbt_snapshots
  ),

  dbt_sources_data as (
      select
          database_name,
          schema_name,
          name as table_name
      from GENESIS_UAT.TEC_MONITORING.dbt_sources
  ),

  dbt_seeds_data as (
      select
          database_name,
          schema_name,
          name as table_name
      from GENESIS_UAT.TEC_MONITORING.dbt_seeds
  ),

  tables_information as (
      select * from dbt_models_data
      union all
      select * from dbt_sources_data
      union all
      select * from dbt_snapshots_data
      union all
      select * from dbt_seeds_data
  ),

  columns_information as (
      
    
    
    
        (
    
    select
        upper(table_catalog || '.' || table_schema || '.' || table_name) as full_table_name,
        upper(table_catalog) as database_name,
        upper(table_schema) as schema_name,
        upper(table_name) as table_name,
        upper(column_name) as column_name,
        data_type
    from GENESIS_UAT.INFORMATION_SCHEMA.COLUMNS
    where upper(table_schema) = upper('STG_GENESIS')
)
        
            union all
        
    
        (
    
    select
        upper(table_catalog || '.' || table_schema || '.' || table_name) as full_table_name,
        upper(table_catalog) as database_name,
        upper(table_schema) as schema_name,
        upper(table_name) as table_name,
        upper(column_name) as column_name,
        data_type
    from GENESIS_UAT.INFORMATION_SCHEMA.COLUMNS
    where upper(table_schema) = upper('CMP_GENESIS')
)
        
            union all
        
    
        (
    
    select
        upper(table_catalog || '.' || table_schema || '.' || table_name) as full_table_name,
        upper(table_catalog) as database_name,
        upper(table_schema) as schema_name,
        upper(table_name) as table_name,
        upper(column_name) as column_name,
        data_type
    from GENESIS_UAT.INFORMATION_SCHEMA.COLUMNS
    where upper(table_schema) = upper('PBL_GENESIS')
)
        
    



  ),

  dbt_columns as (
      select col_info.*
      from tables_information tbl_info
      join columns_information col_info
          on (lower(tbl_info.database_name) = lower(col_info.database_name) and
              lower(tbl_info.schema_name) = lower(col_info.schema_name) and
              lower(tbl_info.table_name) = lower(col_info.table_name)
          )
  )

  select *
  from dbt_columns


  );


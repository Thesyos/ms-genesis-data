-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into GENESIS_UAT.TEC_MONITORING.dbt_run_results as DBT_INTERNAL_DEST
        using GENESIS_UAT.TEC_MONITORING.dbt_run_results__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.model_execution_id = DBT_INTERNAL_DEST.model_execution_id
            )

    
    when matched then update set
        "MODEL_EXECUTION_ID" = DBT_INTERNAL_SOURCE."MODEL_EXECUTION_ID","UNIQUE_ID" = DBT_INTERNAL_SOURCE."UNIQUE_ID","INVOCATION_ID" = DBT_INTERNAL_SOURCE."INVOCATION_ID","GENERATED_AT" = DBT_INTERNAL_SOURCE."GENERATED_AT","CREATED_AT" = DBT_INTERNAL_SOURCE."CREATED_AT","NAME" = DBT_INTERNAL_SOURCE."NAME","MESSAGE" = DBT_INTERNAL_SOURCE."MESSAGE","STATUS" = DBT_INTERNAL_SOURCE."STATUS","RESOURCE_TYPE" = DBT_INTERNAL_SOURCE."RESOURCE_TYPE","EXECUTION_TIME" = DBT_INTERNAL_SOURCE."EXECUTION_TIME","EXECUTE_STARTED_AT" = DBT_INTERNAL_SOURCE."EXECUTE_STARTED_AT","EXECUTE_COMPLETED_AT" = DBT_INTERNAL_SOURCE."EXECUTE_COMPLETED_AT","COMPILE_STARTED_AT" = DBT_INTERNAL_SOURCE."COMPILE_STARTED_AT","COMPILE_COMPLETED_AT" = DBT_INTERNAL_SOURCE."COMPILE_COMPLETED_AT","ROWS_AFFECTED" = DBT_INTERNAL_SOURCE."ROWS_AFFECTED","FULL_REFRESH" = DBT_INTERNAL_SOURCE."FULL_REFRESH","COMPILED_CODE" = DBT_INTERNAL_SOURCE."COMPILED_CODE","FAILURES" = DBT_INTERNAL_SOURCE."FAILURES","QUERY_ID" = DBT_INTERNAL_SOURCE."QUERY_ID","THREAD_ID" = DBT_INTERNAL_SOURCE."THREAD_ID","MATERIALIZATION" = DBT_INTERNAL_SOURCE."MATERIALIZATION","ADAPTER_RESPONSE" = DBT_INTERNAL_SOURCE."ADAPTER_RESPONSE"
    

    when not matched then insert
        ("MODEL_EXECUTION_ID", "UNIQUE_ID", "INVOCATION_ID", "GENERATED_AT", "CREATED_AT", "NAME", "MESSAGE", "STATUS", "RESOURCE_TYPE", "EXECUTION_TIME", "EXECUTE_STARTED_AT", "EXECUTE_COMPLETED_AT", "COMPILE_STARTED_AT", "COMPILE_COMPLETED_AT", "ROWS_AFFECTED", "FULL_REFRESH", "COMPILED_CODE", "FAILURES", "QUERY_ID", "THREAD_ID", "MATERIALIZATION", "ADAPTER_RESPONSE")
    values
        ("MODEL_EXECUTION_ID", "UNIQUE_ID", "INVOCATION_ID", "GENERATED_AT", "CREATED_AT", "NAME", "MESSAGE", "STATUS", "RESOURCE_TYPE", "EXECUTION_TIME", "EXECUTE_STARTED_AT", "EXECUTE_COMPLETED_AT", "COMPILE_STARTED_AT", "COMPILE_COMPLETED_AT", "ROWS_AFFECTED", "FULL_REFRESH", "COMPILED_CODE", "FAILURES", "QUERY_ID", "THREAD_ID", "MATERIALIZATION", "ADAPTER_RESPONSE")

;
    commit;
with relation_columns as (

        
        select cast('CUSTOMER_ID' as TEXT) as relation_column
        union all
        
        select cast('FIRST_NAME' as TEXT) as relation_column
        union all
        
        select cast('LAST_NAME' as TEXT) as relation_column
        union all
        
        select cast('CUSTOMER_LIFETIME_VALUE' as TEXT) as relation_column
        union all
        
        select cast('DAYS_SINCE_LAST_ORDER' as TEXT) as relation_column
        union all
        
        select cast('URGENCY' as TEXT) as relation_column
        
        
    ),
    input_columns as (

        
        select cast('CUSTOMER_ID' as TEXT) as input_column
        union all
        
        select cast('FIRST_NAME' as TEXT) as input_column
        union all
        
        select cast('LAST_NAME' as TEXT) as input_column
        union all
        
        select cast('CUSTOMER_LIFETIME_VALUE' as TEXT) as input_column
        union all
        
        select cast('DAYS_SINCE_LAST_ORDER' as TEXT) as input_column
        union all
        
        select cast('URGENCY' as TEXT) as input_column
        
        
    )
    select *
    from
        input_columns i
        left join
        relation_columns r on r.relation_column = i.input_column
    where
        -- catch any column in input list that is not in the list of table columns
        r.relation_column is null
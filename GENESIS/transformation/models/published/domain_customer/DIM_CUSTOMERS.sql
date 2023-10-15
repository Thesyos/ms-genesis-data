select *
-- audit columns
, CURRENT_TIMESTAMP as INSERT_TIMESTAMP
, TRUE              as RECORD_VALID
from {{ref('TL_CUSTOMERS')}}
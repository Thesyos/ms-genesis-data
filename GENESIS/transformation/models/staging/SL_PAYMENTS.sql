select *
from {{source('Jaffle_shop','VW_RAW_PAYMENTS')}}

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  -- (uses >= to include only new records - * just a demo, in reality, some better increment identification is needed!)
  where id::bigint > (select max(id::bigint) from {{ this }})
{% endif %}
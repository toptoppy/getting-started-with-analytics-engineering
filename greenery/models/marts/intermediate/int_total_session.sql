select 
    count (distinct session_guid) as total_sessions_count
from {{ ref('stg_greenery__events') }}
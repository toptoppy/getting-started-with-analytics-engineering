with add_to_cart_event as (

    select 
      count (distinct session_guid) as add_to_cart_event_count
    
    from {{ref('stg_greenery__events')}}
      
    where 
      event_type='add_to_cart'
)

, total_sessions as (
    
    select * from {{ref('int_total_session')}}
      
)

select add_to_cart_event_count::float / total_sessions_count::float 
from add_to_cart_event, total_sessions

with source as (

    select * from {{source('greenery', 'orders')}}
)

, renamed_recasted as (

    select
       order_id as order_guid
       , user_id as user_guid
       , promo_id as promo_guid
       , address_id as address_guid
       , created_at as created_at_utc
       , order_cost 
       , shipping_cost
       , order_total
       , tracking_id as tracking_guid
       , shipping_service 
       , estimated_delivery_at as estimated_delivery_at_utc
       , delivered_at as delivered_at_utc
       , status

    from source
)

, final as (

    select 
        order_guid
       , user_guid
       , promo_guid
       , address_guid
       , created_at_utc
       , order_cost 
       , shipping_cost
       , order_total
       , tracking_guid
       , shipping_service 
       , estimated_delivery_at_utc
       , delivered_at_utc
       , status
        

    from renamed_recasted
)

select * from final
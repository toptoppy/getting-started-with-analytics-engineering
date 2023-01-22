with source as (

    select * from {{source('greenery', 'promos')}}
)

, renamed_recasted as (

    select
        promo_id as promo_guid
        , discount
        , status


    from source
)

, final as (

    select 
        promo_guid
        , discount
        , status


    from renamed_recasted
)

select * from final
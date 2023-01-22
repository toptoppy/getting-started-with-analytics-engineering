with source as (

    select * from {{source('greenery', 'products')}}
)

, renamed_recasted as (

    select
        product_id as product_guid
        , name
        , price
        , inventory


    from source
)

, final as (

    select 
        product_guid
        , name
        , price
        , inventory


    from renamed_recasted
)

select * from final
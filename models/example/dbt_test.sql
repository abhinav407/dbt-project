with airport as (
    select 
        AIRPORT_ID,
        CITY_ID,
        COUNTRY_ID
    from `{{targert.name}}`.MIDT_CURATED.AIRPORT_DIM
),

airport_pair as (
    select 
        AIRPORT_ID,
        CITY_ID,
        COUNTRY_ID
    from `{{targert.name}}`.MIDT_CURATED.CLIENT_AIRPORT_DIM
),

final as (
    select 
        airport.AIRPORT_ID as AIRID,
        airport.CITY_ID as CT_ID,
        airport_pair.AIRPORT_ID,
        airport_pair.CITY_ID,
        airport.COUNTRY_ID
    from airport
    left join airport_pair using (AIRPORT_ID)
)

{{ config(materialized='table') }}

select * from final
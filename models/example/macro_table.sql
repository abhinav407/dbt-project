{{
    config(
        materialized='view'
    )
}}


{{ table(['AIRPORT_ID','CITY_ID','COUNTRY_ID'])}} from `sab-dev-proj-dev-dw-4905`.MIDT_CURATED.CLIENT_AIRPORT_DIM
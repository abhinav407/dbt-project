{{
    config(
        materialized='table'
    )
}}

{{ aggregation_column('BOOKINGS_PASSENGER_COUNT') }} from MIDT_CURATED.DAILY_TRANSACTION_AGG
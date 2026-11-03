{{ config(materialized='ephemeral') }}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL
FROM {{ source('raw', 'customers') }}
WHERE IS_ACTIVE = TRUE
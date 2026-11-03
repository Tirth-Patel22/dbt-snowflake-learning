SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    IS_ACTIVE
FROM {{ source('raw', 'customers') }}

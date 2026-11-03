SELECT
    ORDER_ID,
    CUSTOMER_ID,
    CUSTOMER_NAME,
    AMOUNT,
    ORDER_DATE
FROM {{ source('raw', 'orders') }}
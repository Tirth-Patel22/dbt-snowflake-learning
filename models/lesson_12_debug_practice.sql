SELECT
    ORDER_ID,
    CUSTOMER_NAME,
    AMOUNT
FROM {{ ref('lesson_11_incremental_merge') }}
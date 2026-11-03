SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL
FROM {{ ref('lesson_05_ephemeral_customers') }}
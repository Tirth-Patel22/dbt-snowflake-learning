SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    IS_ACTIVE
FROM {{ ref('lesson_06_customers') }}
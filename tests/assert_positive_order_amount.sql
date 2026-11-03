SELECT *
FROM {{ ref('lesson_06_orders') }}
WHERE AMOUNT <= 0
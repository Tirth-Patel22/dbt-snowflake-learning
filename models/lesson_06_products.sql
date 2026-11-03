SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    PRICE
FROM {{ ref('products') }}
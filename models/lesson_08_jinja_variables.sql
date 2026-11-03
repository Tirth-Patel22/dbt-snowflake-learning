{% set min_price = 5000 %}

SELECT PRODUCT_ID,PRODUCT_NAME,CATEGORY,PRICE FROM {{ref('products')}} WHERE PRICE >{{min_price}}
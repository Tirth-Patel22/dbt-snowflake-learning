{{config(materialized='table')}}

select PRODUCT_ID,PRODUCT_NAME,CATEGORY,PRICE FROM {{ref('products')}} WHERE PRICE>5000
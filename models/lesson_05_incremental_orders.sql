{{config(materialized='incremental',unique_key='ORDER_ID')}}

select ORDER_ID,CUSTOMER_NAME,AMOUNT,ORDER_DATE FROM {{source('raw','orders')}}

{% if is_incremental() %}

WHERE ORDER_DATE > (SELECT MAX(ORDER_DATE) FROM {{this}})

{% endif %}
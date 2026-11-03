{{config(materialized='incremental',unique_key='ORDER_ID',incremental_strategy='merge')}}

SELECT ORDER_ID,CUSTOMER_ID,CUSTOMER_NAME,AMOUNT,ORDER_DATE FROM {{source('raw','orders')}}

{% if is_incremental() %}

WHERE ORDER_DATE >= (SELECT DATEADD(DAY,-3,MAX(ORDER_DATE)) FROM {{this}})

{% endif %}
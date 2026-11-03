{% set category = ['Sport', 'Casual', 'Formal'] %}

{% for i in category %}

SELECT PRODUCT_ID,PRODUCT_NAME,PRICE,CATEGORY,{{price_category('PRICE')}} AS PRICE_CATEGORY FROM {{ref('products')}} WHERE CATEGORY = '{{i}}'

{% if not loop.last %}
UNION ALL
{% endif %}

{% endfor %}
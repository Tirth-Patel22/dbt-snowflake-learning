{% set category='Sport' %}

SELECT * FROM {{ref('products')}}

{% if category == 'Sport' %}

    WHERE CATEGORY = '{{category}}'

{% else %}

    WHERE PRICE > 5000

{% endif %}
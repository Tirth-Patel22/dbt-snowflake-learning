{% set category = ['Sport', 'Casual', 'Formal'] %}

{% for i in category %}

SELECT * FROM {{ref('products')}} WHERE CATEGORY = '{{i}}'

{% if not loop.last %}
UNION ALL
{% endif %}

{% endfor %}
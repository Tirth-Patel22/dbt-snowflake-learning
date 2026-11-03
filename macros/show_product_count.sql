{% macro show_product_count() %}

    {% if execute %}

        {% set query %}
            SELECT COUNT(*) AS product_count
            FROM {{ ref('products') }}
        {% endset %}

        {% set result = run_query(query) %}

        {% do log(
            "Product count: " ~ result.columns[0].values()[0],
            info=true
        ) %}

    {% endif %}

{% endmacro %}
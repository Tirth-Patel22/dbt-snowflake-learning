{% macro price_category(price_column, expensive_limit=7000, medium_limit=5000) %}

    CASE
        WHEN {{ price_column }} > {{ expensive_limit }}
            THEN 'expensive'

        WHEN {{ price_column }} > {{ medium_limit }}
            THEN 'medium'

        ELSE 'cheap'
    END

{% endmacro %}
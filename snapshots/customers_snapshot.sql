{% snapshot customers_snapshot %}

{{
    config(
        target_schema='LEARNING',
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=[
            'CUSTOMER_NAME',
            'EMAIL',
            'IS_ACTIVE'
        ]
    )
}}

SELECT
    CUSTOMER_ID,
    CUSTOMER_NAME,
    EMAIL,
    IS_ACTIVE
FROM {{ source('raw', 'customers') }}

{% endsnapshot %}
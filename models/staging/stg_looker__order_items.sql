SELECT *
FROM {{ source('LookerEcommerce', 'order_items') }}


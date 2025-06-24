SELECT *
FROM {{ source('LookerEcommerce', 'inventory_items') }}


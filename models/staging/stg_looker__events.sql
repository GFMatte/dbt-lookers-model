SELECT *
FROM {{ source('LookerEcommerce', 'events') }}


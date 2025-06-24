-- Use REF when referencing data from seeds, not SOURCE
SELECT *
FROM {{ ref('distribution_centers') }}




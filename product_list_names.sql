SELECT DISTINCT ProductName,
FROM {{ ref('starter') }}
SORT BY ProductName ASC

{{ config(
    materialized='view',
    location_root='/mnt/data_lake'
)  }}

SELECT *
FROM {{ ref('first_model.sql') }}
where ProductID = 100

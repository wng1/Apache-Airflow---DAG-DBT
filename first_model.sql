{{ config(
    materialized='table',
    location_root ='/mnt/data_lake'

)}}

/*
Version Control: 1.0
Audit: 1.0
Logging: 1.0
*/
  
with raw_data as (
  select * 
  FROM Products
  WHERE ProductName = "ABC"
)

SELECT *
FROM source_data




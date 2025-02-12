'Common Table Expresssion - CTE (Temporary Alias)'

with audioplayers as (
  select * from products
),
'Summarise Taxi Rides'
  
final as (
  SELECT
    vendorID,
    CAST(SoldDateTimme AS DATE) AS purchase_date,
    COUNT(*) AS purchase_count
  FROM
    [company-data-warehouse].[dbo].[products]
  GROUP BY
    vendorID,
    CAST(SoldDateTime AS DATE)
  ORDER BY
    vendorID,
    purchase_date;
)
'Returns the Final Output'
select * from final


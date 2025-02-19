SHOW views IN default;

SELECT * FROM Products;
SELECT * FROM ProductPrice;
SELECT * FROM ProductType;

'Passing variablesi n dbt commands

dbt run --vars '{"volume_path": "__________________", "date": "19/02/2025"}'
dbt run '{"volume_path":"{{job.parameters.volume_path}}"}'
dbt run {{job.parameters.select_clause}}
dbt run {{job.parameters.dbt_refresh}}
dbt run --select "{{job.parameters.table_name}}"
dbt run '{"volume_path":"{{job.parameters.volume_path}}"}' {{job.parameters.dbt_refresh}}


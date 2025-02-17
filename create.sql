DROP TABLE IF EXISTS Products;

CREATE TABLE Products USING CSV OPTIONS (path="/databricks/dataset/csv/product.csv", header "true")

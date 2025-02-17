SELECT ProductID, ProductName, AVG(ProductPrice) As Price
FROM Products
GROUP BY ProductName
ORDER BY ProductPrice DESC


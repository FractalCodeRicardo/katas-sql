-- 05 Get the most selled Product Name based on the total quantity sold
SELECT
    Product.ProductName
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY SUM(Sales.QuantitySold) DESC
LIMIT 1;
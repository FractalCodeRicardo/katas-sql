-- 08 Get ProductID, and the total sales amount for products where the total sales amount exceeds 500
SELECT
    Product.ProductID,
    SUM(Sales.TotalAmount) AS TotalSalesAmount
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Product.ProductID, Product.ProductName
HAVING TotalSalesAmount > 500
ORDER BY TotalSalesAmount DESC;
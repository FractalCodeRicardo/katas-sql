-- 07 Get ProductName, and the date of the most recent sale 
SELECT
    Product.ProductName,
    MAX(Sales.SaleDate) AS MostRecentSale
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY MostRecentSale DESC
LIMIT 1;
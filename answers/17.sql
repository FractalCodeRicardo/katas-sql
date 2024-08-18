-- 17 Get ProductID, and the first sale date for each product order by date
SELECT
    Product.ProductID,
    MIN(Sales.SaleDate) AS FirstSaleDate
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY FirstSaleDate ASC;

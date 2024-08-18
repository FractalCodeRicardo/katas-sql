-- 02 Get ProductID that has been sold the most
SELECT

    Product.ProductID
     
FROM Product
LEFT JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY COUNT(Sales.SaleID) DESC

LIMIT 1;
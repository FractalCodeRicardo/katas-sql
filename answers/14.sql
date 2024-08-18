-- 14 Get ProductID for products sold on '2024-08-10'
SELECT
    Product.ProductID
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
WHERE Sales.SaleDate = '2024-08-10'
ORDER BY Product.ProductID;

-- 04 Get ProductName for product that have never been sold
SELECT
    Product.ProductID,
    Product.ProductName
FROM Product
LEFT JOIN Sales 
    ON Product.ProductID = Sales.ProductID
WHERE Sales.SaleID IS NULL;
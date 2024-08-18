-- 18 Get ProductID for products that have never been sold
SELECT
    Product.ProductID
FROM Product
LEFT JOIN Sales 
    ON Product.ProductID = Sales.ProductID
WHERE Sales.SaleID IS NULL

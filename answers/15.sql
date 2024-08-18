-- 15 Get ProductID, and the average quantity sold for each product, order by ProductID
SELECT
    Product.ProductID,
    AVG(Sales.QuantitySold) AS AverageQuantitySold
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Product.ProductID, Product.ProductName
ORDER BY Product.ProductID DESC;

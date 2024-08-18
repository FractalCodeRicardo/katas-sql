-- 13 Get SaleId highest sale for Jacket Product, based on TotalAmount
SELECT
    Sales.SaleID
FROM Product
JOIN Sales 
    ON Product.ProductID = Sales.ProductID

WHERE ProductName = 'Jacket'

ORDER BY Sales.TotalAmount DESC
LIMIT 1;

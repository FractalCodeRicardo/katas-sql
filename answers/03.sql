-- 03 Get CategoryName and the total amount of sales for each category
SELECT
    Category.CategoryName,
    SUM(Sales.TotalAmount) AS TotalSalesAmount
FROM Category
JOIN Product 
    ON Category.CategoryID = Product.CategoryID
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Category.CategoryID, Category.CategoryName
ORDER BY TotalSalesAmount DESC;
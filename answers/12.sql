-- 12 Get  CategoryName, and the total quantity sold for all products in each category, order by CategoryName
SELECT
    Category.CategoryName,
    SUM(Sales.QuantitySold) AS TotalQuantitySold
FROM Category
JOIN Product 
    ON Category.CategoryID = Product.CategoryID
JOIN Sales 
    ON Product.ProductID = Sales.ProductID
GROUP BY Category.CategoryID, Category.CategoryName
ORDER BY Category.CategoryName;

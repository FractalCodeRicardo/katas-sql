-- 11 Get CategoryName, and the number of products in each category order by CategoryName
SELECT
    Category.CategoryName,
    COUNT(Product.ProductID) AS NumberOfProducts
FROM Category
LEFT JOIN Product 
    ON Category.CategoryID = Product.CategoryID
GROUP BY Category.CategoryID, Category.CategoryName
ORDER BY Category.CategoryName;

-- 19 Get CategoryID, CategoryName, and the number of products in the category with the most products
SELECT
    Category.CategoryID,
    Category.CategoryName,
    COUNT(Product.ProductID) AS NumberOfProducts
FROM Category
JOIN Product 
    ON Category.CategoryID = Product.CategoryID
GROUP BY Category.CategoryID, Category.CategoryName
ORDER BY NumberOfProducts DESC
LIMIT 1;

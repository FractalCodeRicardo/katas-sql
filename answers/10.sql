-- 10 Get CategoryID's that have 4 products
SELECT
    Category.CategoryID
FROM Category
JOIN Product 
    ON Category.CategoryID = Product.CategoryID
GROUP BY Category.CategoryID
HAVING COUNT(Product.ProductID) = 4
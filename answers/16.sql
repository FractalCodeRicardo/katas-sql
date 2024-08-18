-- 16 Get Category Name with no products
SELECT
    Category.CategoryName
FROM Category
LEFT JOIN Product 
    ON Category.CategoryID = Product.CategoryID

WHERE Product.ProductID IS NULL

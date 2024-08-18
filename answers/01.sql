-- 01 Get ProductId and CategoryName of each product order by  ProductID
SELECT
Product.ProductID,
Category.CategoryName
FROM Category
JOIN Product 
    ON Category.CategoryID = Product.CategoryID
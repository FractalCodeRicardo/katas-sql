-- 09 Get ProductID and ProductName for all products in the 'Electronics' category
SELECT
    Product.ProductID,
    Product.ProductName
FROM Product
JOIN Category 
    ON Product.CategoryID = Category.CategoryID
WHERE Category.CategoryName = 'Electronics';
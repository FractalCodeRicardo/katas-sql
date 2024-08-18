CREATE TABLE IF NOT EXISTS Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT NOT NULL,         
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) 
);

CREATE TABLE IF NOT EXISTS Sales (
    SaleID INT PRIMARY KEY,             
    ProductID INT NOT NULL,                     
    SaleDate DATE NOT NULL,           
    QuantitySold INT NOT NULL,       
    TotalAmount DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)  
);


INSERT INTO Category (CategoryID, CategoryName) VALUES (1, 'Electronics');
INSERT INTO Category (CategoryID, CategoryName) VALUES (2, 'Books');
INSERT INTO Category (CategoryID, CategoryName) VALUES (3, 'Clothing');
INSERT INTO Category (CategoryID, CategoryName) VALUES (4, 'Beverages');

INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (101, 'Laptop', 1);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (102, 'Smartphone', 1);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (103, 'Fiction Novel', 2);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (104, 'T-Shirt', 3);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (105, 'Headphones', 1);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (106, 'Science Textbook', 2);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (107, 'Jacket', 3);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (108, 'Jeans', 3);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (109, 'Tablet', 1);
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (110, 'History Novel', 2); 
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (111, 'Comic Book', 2); 
INSERT INTO Product (ProductID, ProductName, CategoryID) VALUES (112, 'Pogramming Book', 2);


INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (1, 101, '2024-08-01', 2, 1999.98);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (2, 102, '2024-08-02', 5, 2499.95);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (3, 103, '2024-08-03', 10, 199.90);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (4, 104, '2024-08-04', 3, 29.97);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (5, 105, '2024-08-05', 3, 299.97);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (6, 106, '2024-08-06', 7, 489.93);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (7, 107, '2024-08-07', 2, 199.98);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (8, 108, '2024-08-08', 4, 159.96);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (9, 109, '2024-08-09', 1, 499.99);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (10, 110, '2024-08-10', 6, 119.94);

INSERT INTO Sales (SaleID, ProductID, SaleDate, QuantitySold, TotalAmount) 
VALUES (11, 110, '2024-08-11', 3, 100);
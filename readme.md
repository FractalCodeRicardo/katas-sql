# SQL Katas

1. Install SQLite
```
// MAC
brew install sqlite

// Linux Ubuntu
sudo apt install sqlite3

// Manjaro
sudo pacman -S sqlite

// Windows
//Download from 
https://www.sqlite.org/2024/sqlite-tools-win-x64-3460100.zip

// Extract it and add the location to your Path
```

2. Create Database
```
sqlite3 sales.db < sales.sql
```

3. You are provided with a database with these tables:

```
+--------------+
|  Category    |
+--------------+
| CategoryID   | PK
| CategoryName |
+--------------+
       |
       |
+--------------+
|   Product    |
+--------------+
| ProductID    | PK
| ProductName  |
| CategoryID   | FK
+--------------+
       |
       |
+--------------+
|    Sales     |
+--------------+
| SaleID       | PK
| ProductID    | FK
| SaleDate     |
| QuantitySold |
| TotalAmount  |
+--------------+

```

4. Every sql file has a problem that you need to solve.
5. Check your answers
```
//Linux Mac
sh test.sh

//Windows (powershell)
.\test.ps1
```
![image](https://github.com/user-attachments/assets/dd7e3d83-941e-42ff-8a09-2de4b666cc21)


Here is a list of the problems

01 Get ProductId and CategoryName of each product order by Product ID

02 Get ProductID that has been sold the most

03 Get CategoryName and the total amount of sales for each category

04 Get ProductName for product that have never been sold

05 Get the most selled Product Name based on the total quantity sold

06 Get the Sum of TotalAmout in Sales table

07 Get ProductName, and the date of the most recent sale

08 Get ProductID, and the total sales amount for products where the total sales amount exceeds 500

09 Get ProductID and ProductName for all products in the 'Electronics' category

10 Get CategoryID's that have 4 products

11 Get CategoryName, and the number of products in each category order by CategoryName

12 Get CategoryName, and the total quantity sold for all products in each category, order by CategoryName

13 Get SaleId highest sale for Jacket Product, based on TotalAmount

14 Get ProductID for products sold on '2024-08-10'

15 Get ProductID, and the average quantity sold for each product, order by ProductID

16 Get Category Name with no products

17 Get ProductID, and the first sale date for each product order by date

18 Get ProductID for products that have never been sold

19 Get CategoryID, CategoryName, and the number of products in the category with the most products

20 Get ProductID, ProductName, and the total revenue generated by each product

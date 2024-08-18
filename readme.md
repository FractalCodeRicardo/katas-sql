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

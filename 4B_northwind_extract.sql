# DROPS database if northwind exists, removes pre-existing
# CREATE database if northwind does not exists, creates database
# The table that holds intems is Product
# The table that the categories of items sold is in Categories
SELECT FirstName, LastName
FROM Employees;

SELECT * FROM Products;

# records returns were 77

SELECT * FROM products
LIMIT 10;

SELECT * FROM categories;

# CategoryID for seafood

SELECT CategoryID 
FROM categories
WHERE CategoryName = 'Seafood';

# Only returned 1 row

SELECT OrderID, OrderDate, ShippedDate, ShipCountry
FROM Orders
LIMIT 50;

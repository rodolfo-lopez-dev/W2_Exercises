CREATE DATABASE restaurant;
CREATE TABLE Customer (
	CustomerID INT AUTO_INCREMENT PRIMARY key,
    CustomerName VARCHAR(25) NOT NULL,
    CustomerEmail VARCHAR(25),
    CustomerPhone VARCHAR(15)
);
CREATE TABLE CustomerOrder (
	CustomerOrderID	INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);
CREATE TABLE Product (
	ProductID INT AUTO_INCREMENT PRIMARY KEY,
	ProductName VARCHAR(25) NOT NULL,
    ProductPrice DECIMAL(10, 2) NOT NULL CHECK (ProductPrice >=0) 
);
CREATE TABLE OrderDetails (
	OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES CustomerOrder(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
);
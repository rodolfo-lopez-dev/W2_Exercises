CREATE DATABASE in_class_restaurant;

CREATE TABLE Customer (
	CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR (25) NOT NULL,
    CustomerEmail VARCHAR (25),
    CustomerPhone VARCHAR (15)
);
CREATE TABLE CustomerOrder (
	CustomerOrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    CustomerID INT,
    CONSTRAINT fk_customer FOREIGN KEY (customerID) REFERENCES Customer(CustomerID)
);
CREATE TABLE Product ( 
	ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR (25) NOT NULL,
    ProductPrice DECIMAL (10, 2) NOT NULL CHECK (ProductPrice >=0)
);
CREATE TABLE OrderDetails (
	OrderDetailsID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerOrderID INT,
    ProductID INT,
    Quantity INT NOT NULL CHECK (Quantity > 0),
    CONSTRAINT fk_customerorder FOREIGN KEY (CustomerOrderID) REFERENCES CustomerOrder(CustomerOrderID),
    CONSTRAINT fk_product FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);
    
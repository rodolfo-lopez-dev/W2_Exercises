INSERT INTO customer (CustomerName, CustomerEmail, CustomerPhone)
VALUES 
	('Lucas Reed', 'luc.reed@example.com', '555-123-4567'),
    ('Olivia Cooper', 'oli.cooper@example.com', '555-234-5678'),
    ('Ethan Martinez', 'eth.martinez@example.com', '555-345=6789'),
    ('Ava Brooks', 'ava.brooks@example.com', '555-456-7890'),
    ('joe books', 'joe.books@example.com', '555-124-5891');
    SELECT * FROM Customer;
INSERT INTO customerorder (CustomerID,OrderDate)
VALUES
	(5, '2024-10-01 8:00:00'), 
    (6, '2024-10-01 8:30:00'),
    (7,'2020-10-02 10:20:00'),
    (8, '2024-10-04 11:30:00'); 
SELECT * FROM customerorder;
INSERT INTO product (ProductName, ProductPrice)
VALUES 
	('Fries', 3.49),
    ('Burger', 8.99),
    ('Beverage', 1.99),
    ('Sandwich', 5.29);
    SELECT * FROM product;
INSERT INTO orderdetails (CustomerOrderID, ProductID, Quantity)
VALUES
	(25, 1, 2),
    (26, 2, 3),
    (27, 3, 1),
    (28, 4, 4);
SELECT * FROM orderdetails;
SELECT * FROM customerorder;
SELECT * FROM product;
    
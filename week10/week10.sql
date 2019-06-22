SELECT 
    *
FROM
    Customers;


SELECT 
    *
FROM
    Orders
WHERE
    CustomerID = 20;


SELECT 
    *
FROM
    OrderDetails
WHERE
    OrderID IN (SELECT 
            OrderID
        FROM
            Orders
        WHERE
            CustomerID = 20);


DELETE FROM OrderDetails 
WHERE
    OrderID IN (SELECT 
        OrderID
    FROM
        Orders
    
    WHERE
        CustomerID = 20);


DELETE FROM Orders 
WHERE
    CustomerID = 20;


DELETE FROM Customers 
WHERE
    CustomerID = 20;
    

SELECT 
    *
FROM
    Products;


DELETE FROM OrderDetails 
WHERE
    ProductID = 10;


DELETE FROM Products 
WHERE
    ProductID = 10;
    

SELECT 
    *
FROM
    Shippers;

SELECT 
    *
FROM
    OrderDetails
WHERE
    OrderID IN (SELECT 
            OrderID
        FROM
            Orders
        WHERE
            ShipperID = 2);


DELETE FROM OrderDetails 
WHERE
    OrderID IN (SELECT 
        OrderID
    FROM
        Orders
    
    WHERE
        ShipperID = 2);


DELETE FROM Orders 
WHERE
    ShipperID = 2;


DELETE FROM Shippers 
WHERE
    ShipperID = 2;
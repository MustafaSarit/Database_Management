CREATE VIEW usa_customers AS
    SELECT 
        CustomerID, CustomerName, ContactName
    FROM
        Customers
    WHERE
        Country = 'USA';

SELECT 
    *
FROM
    usa_customers;
    

SELECT 
    *
FROM
    usa_customers
        JOIN
    Orders ON usa_customers.CustomerID = Orders.CustomerID;



CREATE OR REPLACE VIEW products_below_avg AS
    SELECT 
        ProductID, ProductName, Price
    FROM
        Products
    WHERE
        Price < (SELECT 
                AVG(Price)
            FROM
                Products);
                
                
SELECT 
    *
FROM
    usa_customers
        JOIN
    Orders ON usa_customers.CustomerID = Orders.CustomerID
WHERE
    OrderID IN (SELECT 
            OrderID
        FROM
            OrderDetails
                JOIN
            products_below_avg ON OrderDetails.ProductID = products_below_avg.ProductID);
            
            
DROP VIEW usa_customers;
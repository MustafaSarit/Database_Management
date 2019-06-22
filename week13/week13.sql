SELECT 
    Country, COUNT(CustomerID)
FROM
    Customers
GROUP BY Country
ORDER BY COUNT(CustomerID);


select ShipperName, count(Orders.OrderID) as a from Shippers join Orders on Shippers.ShipperID = Orders.ShipperID group by Shippers.ShipperID order by a desc;

select * from Shippers;
select * from Orders;
select * from Shippers, Orders where Shippers.ShipperID = Orders.ShipperID;
select * from Shippers inner join Orders using (ShipperID);
select * from Shippers natural join Orders;
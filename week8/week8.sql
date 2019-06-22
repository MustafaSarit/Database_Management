UPDATE Customers 
SET 
    CustomerName = 'Juan'
WHERE
    Country = 'Mexico';
    

SELECT 
    *
FROM
    Customers
WHERE
    Country = 'Mexico';

SELECT 
    *
FROM
    Employees;

INSERT INTO Employees
	(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
	(11, "SARITEMUR", "Mustafa", "1996-11-18", "EmpID11.pic", "Student");
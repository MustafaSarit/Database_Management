CALL selectAllCustomers();

CALL getCustomersByCity("Barcelona");

SELECT 
    *
FROM
    Employees;

SET @maxSalary = 0;

CALL highestSalary(@maxSalary);

SELECT @maxSalary;

CALL countGender(@cntF, "F");
CALL countGender(@cntM, "M");

SELECT @cntF;
SELECT @cntM;
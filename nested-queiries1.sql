-- Q1
Select ProductName, UnitPrice
From products
Where UnitPrice in (select Max(UnitPrice)
from products);
-- Q2
SELECT OrderID, ShipName, ShipAddress
FROM orders
WHERE ShipVia = (
    SELECT ShipperID
    FROM shippers
    WHERE CompanyName = 'Federal Shipping'
);
-- Q3
Select OrderID
from `order details`
Where ProductID in (Select ProductID
from products
where ProductName ="Sasquatch Ale"
);
-- Q4
select FirstName, LastName
from employees
where EmployeeID in ( select EmployeeID
from orders
where OrderID = 10266);
-- Q5
select ContactName
from customers
where CustomerID in(select CustomerID
from orders
where OrderID = 10266);



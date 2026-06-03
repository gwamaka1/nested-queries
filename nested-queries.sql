-- Question 1
 SELECT COUNT(*) FROM Suppliers;
 -- Question 2
 SELECT SUM(Salary) FROM Employees;
 -- Q3
 SELECT MIN(UnitPrice) FROM Products;
 -- Q4
 SELECT AVG(UnitPrice) FROM Products;
 -- Q5
 SELECT MAX(UnitPrice) FROM Products;
 -- Q6
 SELECT SupplierID, COUNT(*) AS NumberOfItems
FROM Products
GROUP BY SupplierID;
-- Q7
SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM Products
GROUP BY CategoryID;
-- Q8
SELECT SupplierID, COUNT(*) AS NumberOfItems
FROM Products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;
-- Q9
SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;
/*SELECT customers.Name as 'Customers' FROM Customers
WHERE Customers.Id NOT IN (SELECT CustomerId FROM Orders);
*/



SELECT name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.Id = o.CustomerId
WHERE o.customerId IS NULL;
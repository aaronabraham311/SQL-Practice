/* Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything. */

SELECT Customers.Name AS Customers FROM Customers
LEFT JOIN Orders ON (Customers.Id = Orders.CustomerId)
WHERE Orders.Id IS NULL


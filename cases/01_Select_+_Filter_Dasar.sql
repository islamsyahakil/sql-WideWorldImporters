--SELECT + Filter Dasar
SELECT c.CustomerID, c.CustomerName, ci.CityName
FROM Sales.Customers c
JOIN Application.Cities ci ON c.DeliveryCityID = ci.CityID
WHERE ci.CityName = 'Sylvanite';

-- Select with Limit
SELECT TOP 5 CustomerID, CustomerName, PhoneNumber
FROM Sales.Customers;

-- Select with Like
SELECT CustomerID, CustomerName, WebsiteURL
FROM Sales.Customers
WHERE WebsiteURL LIKE '%http%';

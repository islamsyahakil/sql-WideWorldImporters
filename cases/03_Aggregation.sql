--Aggregation
SELECT TOP 10
  c.CustomerID,
  c.CustomerName,
  SUM(il.ExtendedPrice) AS TotalSales
FROM Sales.Invoices i
JOIN Sales.InvoiceLines il ON il.InvoiceID = i.InvoiceID
JOIN Sales.Customers c ON c.CustomerID = i.CustomerID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalSales DESC;
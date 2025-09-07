--JOIN (Left Anti-Join) — Orders tanpa Invoice
SELECT o.OrderID, o.CustomerID, o.OrderDate
FROM Sales.Orders o
LEFT JOIN Sales.Invoices i ON i.OrderID = o.OrderID
WHERE i.OrderID IS NULL;
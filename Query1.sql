SELECT DISTINCT c.LastName, c.Email
FROM customers c, invoices i
WHERE c.CustomerId = i.CustomerId
AND c.LastName IS NOT NULL
AND c.Email IS NOT NULL;

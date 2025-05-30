SELECT CONCAT(FirstName, ' ', LastName) AS Customer,
       ROUND(SUM(Total), 2) AS Revenue
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId
ORDER BY Revenue DESC
LIMIT 5;

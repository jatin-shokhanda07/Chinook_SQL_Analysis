SELECT CONCAT(e.FirstName, ' ', e.LastName) AS Employee,
       ROUND(SUM(i.Total), 2) AS Revenue_Generated
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
ORDER BY Revenue_Generated DESC;

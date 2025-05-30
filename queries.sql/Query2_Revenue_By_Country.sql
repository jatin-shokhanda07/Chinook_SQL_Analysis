SELECT Country,
       COUNT(*) AS Total_Customers,
       ROUND(SUM(Total), 2) AS Total_Revenue
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY Country
ORDER BY Total_Revenue DESC;

SELECT g.Name AS Genre,
       COUNT(t.TrackId) AS Track_Count
FROM Genre g
JOIN Track t ON g.GenreId = t.GenreId
GROUP BY g.GenreId
ORDER BY Track_Count DESC
LIMIT 5;

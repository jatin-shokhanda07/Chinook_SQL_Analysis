SELECT a.Name AS Artist,
       COUNT(il.TrackId) AS Tracks_Sold
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist a ON al.ArtistId = a.ArtistId
GROUP BY a.ArtistId
ORDER BY Tracks_Sold DESC
LIMIT 5;

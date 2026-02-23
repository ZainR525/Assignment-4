SELECT DISTINCT ar.Name
FROM artists ar, albums al
WHERE ar.ArtistId = al.ArtistId
AND al.Title LIKE '%symphony%';

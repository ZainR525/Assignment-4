SELECT DISTINCT artists.Name
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
WHERE LOWER(albums.Title) LIKE '%symphony%';

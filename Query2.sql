SELECT albums.Title, artists.Name
FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE albums.Title IS NOT NULL AND artists.Name IS NOT NULL;

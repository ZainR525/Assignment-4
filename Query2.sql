SELECT al.Title, ar.Name
FROM albums al, artists ar
WHERE al.ArtistId = ar.ArtistId
AND al.Title IS NOT NULL
AND ar.Name IS NOT NULL;

SELECT ar.Name, COUNT(t.TrackId) AS TotalTracks,
    ROW_NUMBER() OVER (ORDER BY COUNT(t.TrackId) DESC) AS ArtistRank
FROM artists ar, albums al, tracks t
WHERE ar.ArtistId = al.ArtistId
AND al.AlbumId = t.AlbumId
GROUP BY ar.ArtistId;

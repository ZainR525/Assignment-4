SELECT COUNT(*) AS ArtistsWith10OrMoreMPEGTracks
FROM (
    SELECT ar.ArtistId
    FROM artists ar, albums al, tracks t, media_types mt
    WHERE ar.ArtistId = al.ArtistId
    AND al.AlbumId = t.AlbumId
    AND t.MediaTypeId = mt.MediaTypeId
    AND mt.Name LIKE '%MPEG%'
    GROUP BY ar.ArtistId
    HAVING COUNT(t.TrackId) >= 10
);

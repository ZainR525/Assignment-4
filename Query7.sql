SELECT COUNT(*) AS ArtistsWith10OrMoreMPEGTracks
FROM (
    SELECT artists.ArtistId
    FROM artists
    JOIN albums ON artists.ArtistId = albums.ArtistId
    JOIN tracks ON albums.AlbumId = tracks.AlbumId
    JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
    WHERE media_types.Name LIKE '%MPEG%'
    GROUP BY artists.ArtistId
    HAVING COUNT(tracks.TrackId) >= 10
);

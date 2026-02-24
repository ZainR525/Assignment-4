WITH ArtistGenreCount AS (
    SELECT ar.Name AS Artist, g.Name AS Genre, COUNT(t.TrackId) AS TrackCount
    FROM artists ar, albums al, tracks t, genres g
    WHERE ar.ArtistId = al.ArtistId
    AND al.AlbumId = t.AlbumId
    AND t.GenreId = g.GenreId
    GROUP BY ar.Name, g.Name
),
Ranking AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY Genre ORDER BY TrackCount DESC) AS row
    FROM ArtistGenreCount
)
SELECT * FROM Ranking
WHERE row <= 3;

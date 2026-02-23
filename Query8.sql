SELECT p.PlaylistId, p.Name, ROUND(SUM(t.Milliseconds) / 3600000.0, 2) AS LengthInHours
FROM playlists p, playlist_track pt, tracks t
WHERE p.PlaylistId = pt.PlaylistId
AND pt.TrackId = t.TrackId
GROUP BY p.PlaylistId, p.Name
HAVING LengthInHours > 2;

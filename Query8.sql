SELECT 
    playlists.PlaylistId,
    playlists.Name,
    ROUND(SUM(tracks.Milliseconds) / 3600000.0, 2) AS LengthInHours
FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlists.PlaylistId, playlists.Name
HAVING LengthInHours > 2;


SELECT DISTINCT ar.Name
FROM artists ar, albums al, tracks t, media_types mt, playlist_track pt, playlists p
WHERE ar.ArtistId = al.ArtistId
AND al.AlbumId = t.AlbumId
AND t.MediaTypeId = mt.MediaTypeId
AND t.TrackId = pt.TrackId
AND pt.PlaylistId = p.PlaylistId
AND mt.Name LIKE '%MPEG%'
AND p.Name IN ('Brazilian Music', 'Grunge');

SELECT Count(*), Playlist.Name From PlaylistTrack 
Inner JOIN Playlist
Where PlaylistTrack.PlaylistId = Playlist.PlaylistId
group by playlist.PlaylistId

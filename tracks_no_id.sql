Select Track.name, mediatype.name as mediatype, genre.name as genre, album.title from Track
Join MediaType on track.MediaTypeId = MediaType.MediaTypeId
join Genre on Genre.GenreId = Track.GenreId
join Album on Album.AlbumId = Track.AlbumId
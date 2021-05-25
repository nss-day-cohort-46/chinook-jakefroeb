
SELECT SUM(Quantity) as TracksPurchased, Artist.Name
FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
Join Track on InvoiceLine.TrackId = Track.TrackId
Join Album on Track.AlbumId = Album.AlbumId
Join Artist on Album.ArtistId = Artist.ArtistId
Group By Artist.ArtistId
Order By TracksPurchased DESC LIMIT 3


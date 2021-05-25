 SELECT SUM(Quantity) as TracksPurchased, MediaType.Name
FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
Join Track on InvoiceLine.TrackId = Track.TrackId
Join MediaType on MediaType.MediaTypeId = Track.MediaTypeId
Group By Track.MediaTypeId
Order By TracksPurchased DESC LIMIT 1


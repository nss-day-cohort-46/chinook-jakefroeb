
SELECT SUM(Quantity) as TracksPurchased, TrackId
FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
Group By InvoiceLine.InvoiceId
Order By TracksPurchased DESC LIMIT 5


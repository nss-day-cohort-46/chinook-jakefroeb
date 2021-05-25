SELECT MAX(TracksPurchased), TrackId From(
SELECT SUM(Quantity) as TracksPurchased, TrackId
FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
Where Invoice.InvoiceDate LIKE '2013%'
Group By Invoice.InvoiceId
)

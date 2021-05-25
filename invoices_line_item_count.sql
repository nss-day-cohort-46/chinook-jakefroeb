select *, COUNT(*) FROM InvoiceLine
JOIN Invoice on Invoice.InvoiceId = InvoiceLine.InvoiceId
Group by Invoice.InvoiceId

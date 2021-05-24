SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry 
FROM Customer 
Left JOIN Invoice On Customer.CustomerId = Invoice.CustomerId
WHERE Customer.Country = 'Brazil'
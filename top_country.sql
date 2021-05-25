SELECT MAX(TotalSales), BillingCountry
From(
SELECT SUM(Total) as TotalSales, BillingCountry
From Invoice
JOIN Customer on Invoice.CustomerId = Customer.CustomerId
Join Employee on Employee.EmployeeId = Customer.SupportRepId
Group By BillingCountry
)
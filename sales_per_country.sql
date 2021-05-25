SELECT SUM(Total), BillingCountry
From Invoice
JOIN Customer on Invoice.CustomerId = Customer.CustomerId
Join Employee on Employee.EmployeeId = Customer.SupportRepId
Group By BillingCountry
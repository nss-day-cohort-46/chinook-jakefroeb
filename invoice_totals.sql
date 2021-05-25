Select Total, Customer.FirstName, Customer.LastName, BillingCountry, Employee.FirstName || ' ' || Employee.LastName as EmployeeName from Invoice
Join Customer on Customer.CustomerId = Invoice.CustomerId
Join Employee on Employee.EmployeeId = Customer.SupportRepId

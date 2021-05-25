Select Sum(Total), Employee.FirstName From Invoice
Join Customer on Customer.CustomerId = Invoice.CustomerId
Join Employee on Customer.SupportRepId = Employee.EmployeeId
Group By Employee.EmployeeId
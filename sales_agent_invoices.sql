SELECT *, Employee.FirstName || ' ' || Employee.LastName as EmployeeName FROM Invoice
INNER JOIN Customer on Customer.CustomerId = Invoice.CustomerId
INNER Join Employee on Employee.EmployeeId = Customer.SupportRepId
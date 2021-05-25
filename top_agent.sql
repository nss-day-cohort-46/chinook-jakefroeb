SELECT Max(TotalSales), FirstName
From
(SELECT Sum(Total) as TotalSales, Employee.FirstName
from Invoice
Join Customer on Customer.CustomerId = Invoice.CustomerId
Join Employee on Customer.SupportRepId = Employee.EmployeeId
Group By EmployeeId)
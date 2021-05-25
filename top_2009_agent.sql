SELECT Max(TotalSales)
From
(SELECT Sum(Total) as TotalSales, STRFTIME('%Y', InvoiceDate) as InvoiceYear
from Invoice
Join Customer on Customer.CustomerId = Invoice.CustomerId
Join Employee on Customer.SupportRepId = Employee.EmployeeId
Where InvoiceDate LIKE '2009%'
Group By EmployeeId)
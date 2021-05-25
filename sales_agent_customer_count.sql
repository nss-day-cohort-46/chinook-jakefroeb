SELECT COUNT(*), *
FROM Customer
JOIN Employee on Employee.EmployeeId = Customer.SupportRepId
Group by EmployeeId
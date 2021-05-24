SELECT * FROM Employee
Inner JOIN Customer
ON SupportRepId = EmployeeId
Group by EmployeeId
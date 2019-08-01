select top(1) EmployeeID
from Employees
where HireDate <> (select MAX(HireDate) 
				   from Employees)
order by HireDate DESC


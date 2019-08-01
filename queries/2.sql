select EmployeeID 
from Employees 
where HireDate = (select MAX(HireDate) 
				  from Employees);
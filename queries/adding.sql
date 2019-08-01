select o.EmployeeId, 
	   LastName, 
	   FirstName, 
	   HireDate, 
	   count(*) as OrderCount 
from Orders as o
join Employees as e
on e.EmployeeID = o.EmployeeID
group by o.EmployeeId, FirstName, LastName, HireDate
order by OrderCount DESC

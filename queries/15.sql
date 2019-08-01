select distinct companyName as Customer,
				(e.firstName+' '+e.LastName) as Employee
from orders as o 
join 
Customers as c 
on c.CustomerID = o.CustomerID
join 
(select * 
 from employees 
 where city = 'London') as e 
on o.EmployeeID = e.EmployeeID
where ShipVia in (select shipperID 
				  from Shippers 
				  where CompanyName = 'Speedy Express')
and c.City = 'London' 

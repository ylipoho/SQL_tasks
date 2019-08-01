select p.ProductName as ProductName, 
	   p.UnitsInStock as UnitsInStock, 
	   s.ContactName as ContactName,
	   s.Phone as Phone 
from Products as p
join 
Suppliers as s 
on s.SupplierID = p.SupplierID
where CategoryID in (select CategoryID 
					 from Categories 
					 where CategoryName in ('Beverages', 'Seafood'))
and UnitsInStock <= 20
order by UnitsInStock

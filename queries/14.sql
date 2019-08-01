select CompanyName, 
	   min(UnitPrice) as MinPrice, 
	   max(UnitPrice) as MaxPrice 
from Products
join Suppliers 
on Products.SupplierID = Suppliers.SupplierID
group by CompanyName
order by CompanyName

select CustomerID as CustomerID,
	   ShipCountry as ShipCountry,
	   (UnitPrice * (1-Discount)) as OrderPrice
from Orders
join [Order Details] 
on orders.OrderID = [Order Details].OrderID
where orders.ShipCountry in ('Brazil', 'Argentina', 'Venezuela') 
and (orders.RequiredDate >= '1997-09-01')
order by OrderPrice DESC

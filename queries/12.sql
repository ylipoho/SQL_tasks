select CustomerID, 
	   SUM(Freight) as FreightSum
from Orders
where Freight >= (select AVG(Freight) 
				  from orders)
and ShippedDate >= '1996-07-16' 
and ShippedDate <= '1996-07-31'
group by CustomerID
order by FreightSum DESC

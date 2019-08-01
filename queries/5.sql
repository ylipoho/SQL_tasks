select CustomerID 
from orders 
where ShippedDate >= '1996-09-01' 
and ShippedDate <= '1996-09-30' 
order by CustomerID;
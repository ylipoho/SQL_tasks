select Country, COUNT(CustomerID) as CustomerCount 
from customers
group by Country
having COUNT(*) >=10 
order by CustomerCount DESC

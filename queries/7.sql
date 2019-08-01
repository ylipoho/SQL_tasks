select City, COUNT(City) as CustomerCount 
from customers 
where Country in ('Sweden', 'Norway', 'Denmark')
group by City;
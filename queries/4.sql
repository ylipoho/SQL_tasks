select CompanyName 
from customers 
where City in ('Berlin', 'London', 'Madrid', 'Bruxelles', 'Paris') 
order by CustomerID DESC;
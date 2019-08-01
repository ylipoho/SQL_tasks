select ContactName, Phone, Fax
from customers 
where SUBSTRING(Phone, 1, 5) = '(171)' 
and SUBSTRING(Fax, 1, 5) = '(171)' and Fax like '(171)%50';

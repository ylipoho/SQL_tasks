select employeeID
from employees 
order by hireDate DESC
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;

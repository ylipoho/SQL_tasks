select o.OrderID, o.EmployeeID from (select * from orders where DATEDIFF(day, orders.RequiredDate, orders.ShippedDate) <=1) as o
join [Order Details] as od
on o.OrderID = od.OrderID
join (select * from products where CategoryID in (select CategoryID from Categories where CategoryName = 'Dairy products')) as p
on p.ProductID = od.ProductID

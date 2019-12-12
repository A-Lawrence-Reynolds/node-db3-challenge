-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select product.ProductName , category.CategoryName from product
join category 
on product.CategoryId = Category.id
;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select id as order_id , companyName as shippers, orderDate 
FROM [Order]
join shipper on [Order].shipVia = shipper.Id
where [Order].orderDate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select Product.Productname, OrderDetail.Quantity from Orderdetail
join Product on OrderDetail.productId = product.Id
where OrderDetail.OrderId = '10251'
order by Product.ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select (e.lastName) as SoldBy
    ,o.id
    ,o.CustomerId as Customers
    
    , c.CompanyName as OrderedBy
from [order] as o 
join employee as e on o.EmployeeId = e.id
join customer as c on o.CustomerId = c.id;
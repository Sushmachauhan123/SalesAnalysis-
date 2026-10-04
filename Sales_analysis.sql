Drop database data;
Create database Data;
Select * from customers;
select * from `order`;
Select *

From `order` as o
inner join Customers as c
on o.`Customer id` = c.`Customer ID`;

Select 
c.region,
sum(o.sales) as total_sales
from `order` as o
Inner join customers as c
on o.`customer id` = c.`customer id` 
Group by c.region
Order By total_sales Desc;

Select 
Category,
sum(profit) as total_profit,
Sum(sales) as total_sales,
Round((sum(profit) / sum(sales)) *
100,2) as profit_margin_percentage
From `order`
Group By category
order by profit_margin_percentage Desc;

Select 
month(`order date`) as month_number,
monthname(`order date`) as month_name,
sum(sales) as total_sales
from `order`
group by Month(`order date`),
monthname(`order date`)
order BY month(`order date`);

Select 
c.`customer name`,
sum(o.sales) as total_revenure
from `order` as o
inner join customers as c
on o.`customer id` = c.`customer id`
group by c.`customer name`
order by total_revenure Desc
limit 5;


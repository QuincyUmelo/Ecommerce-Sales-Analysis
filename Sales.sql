SELECT * FROM sales.sales;

-- Yearly Profit and Sales
select sum(Sales) as Yearly_Sales, sum(Profit) as Yearly_Profit, Year_
from sales.sales
group by Year_
order by Year_ asc;

-- Region Sales and Profit
select sum(Sales) as Total_Sales, sum(Profit) as Total_Profit, Region
from sales.sales
group by Region
order by Region asc;

-- Regional Profit and Sales each year
select distinct Year_, sum(Profit), sum(Profit), Region
from sales.sales
group by Region, Year_
order by Year_ asc;

-- Profit by region per month, year
select sum(profit) as Profit, Region, monthname(Order_Date) as Month_, year(Order_Date) as Year_
from sales
where monthname(Order_Date)="May" and year(Order_Date)="2012"
group by Region, monthname(Order_Date), year(Order_Date)
order by sum(profit) desc
;

-- Number of Customer per category of items
select count( Customer_Name), Category
from sales
where Year_ in ("2011","2012","2013")
Group by Category;

-- Profit amd Sales per Month
select monthname(Order_Date), sum(Profit), sum(Sales)
from sales
group by monthname(Order_Date)
order by monthname(Order_Date)
;

-- State Profit and Sales
select distinct State, sum(Profit) as Profit, sum(Sales) as Sales
from sales
Group by State
order by State asc;

-- Category percentage
select count(Category) as Number_of_Category, Region
from sales
Group by Region;

select (Category) as Number_of_Category, Region
from sales
Group by Region;

-- How many items sold in each category
select distinct sub_Category, count(sub_category) as Sub_Category_Count, category
from sales
group by Category, Sub_Category
order by Category;


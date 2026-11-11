CREATE DATABASE retail_sales_analysis;

use retail_sales_analysis;

select count(*) from retail_sales;

select * from retail_sales limit 10;

select Transaction_ID, Transaction_Date, Product_Name,Total_Amount from retail_sales;

select count(Transaction_ID) from retail_sales;

select sum(Total_Amount) from retail_sales;

select avg(profit) from retail_sales;

select max(Total_Amount) as Highest,min(Total_Amount) as Lowest from retail_sales;

select * from retail_sales where Total_Amount > 500;

select * from retail_sales where City = 'Bengaluru';

select * from retail_sales where Payment_Method = 'UPI';

select * from retail_sales where quantity > 2 and profit > 50;

select * from retail_sales where Product_Category in ('Electronics','Clothing');

select * from retail_sales where Customer_ID like 'CUST00%';

select *  from retail_sales order by Total_Amount desc limit 10;

select * from retail_sales where not Payment_Method = 'Cash';

select Product_Category,sum(Total_Amount) as Total from retail_sales group by Product_Category;

select Product_Category,sum(Total_Amount) from retail_sales group by Product_Category having sum(Total_Amount) > 10000;

select City,count(Transaction_id) as Count from retail_sales group by city having count(Transaction_id) > 50;

select Product_name,sum(Quantity) from retail_sales group by Product_name order by sum(Quantity) desc limit 5;

select Product_Category,sum(Profit) from retail_sales group by product_category order by sum(profit) desc limit 1;

select sum(total_amount),monthName(transaction_date),year(transaction_date) from retail_sales group by monthName(transaction_date),year(transaction_date),month(transaction_date)
order by month(transaction_date);

select payment_method,sum(total_amount) from retail_sales group by payment_method order by sum(total_amount) desc limit 1;

select gender,sum(total_amount) from retail_sales group by gender order by sum(total_amount) desc;

select product_category,round(sum(total_amount),2) as Category_sales,round((sum(total_amount) / ( select sum(total_amount) from retail_sales)) * 100,2) as Percentage
from retail_sales group by product_category order by Percentage desc;


   

   

   
   

   
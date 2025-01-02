select count(c.CustomerKey) as CountofCustomers, p.Category as ProductCategory from Dataspark.sales s, Dataspark.Customers c, Dataspark.products p where c.CustomerKey=s.CustomerKey and p.productkey=s.productkey group by p.category;

select distinct p.category as ProductCategory,sum(s.quantity*p.unit_price_Usd) as Sales from Dataspark.sales s inner join Dataspark.Customers c on c.customerkey=s.customerkey inner join Dataspark.products p on p.productkey=s.productkey group by p.category;

SELECT s.order_date AS OrderDate, COUNT(DISTINCT s.order_number) AS OrderCount, SUM(s.quantity * p.unit_price_usd) AS Sales, SUM(s.quantity * p.unit_cost_usd) AS Cost,    SUM(s.quantity * p.unit_price_usd) - SUM(s.quantity * p.unit_cost_usd) AS Profit FROM dataspark.sales s INNER JOIN dataspark.customers c ON c.customerkey = s.customerkey INNER JOIN    dataspark.products p ON p.productkey = s.productkey GROUP BY s.order_date;

select distinct s.order_date as OrderDate,count(s.order_number) as OrderCount,sum(s.quantity*p.unit_price_Usd) as Sales ,sum(s.quantity*p.unit_cost_Usd) as Cost, sum(s.quantity*p.unit_price_Usd) - sum(s.quantity*p.unit_cost_Usd) as Profit from Dataspark.sales s inner join Dataspark.Customers c on c.customerkey=s.customerkey inner join Dataspark.products p on p.productkey=s.productkey group by s.order_date;

SELECT Category, COUNT(*) AS Product_Count FROM Products GROUP BY Category ORDER BY Product_Count DESC;

SELECT Subcategory, AVG(CAST(REPLACE(`Unit_Cost_USD`, '$', '') AS DECIMAL(10, 2))) AS Avg_Unit_Cost FROM Products GROUP BY Subcategory ORDER BY Avg_Unit_Cost DESC;

SELECT Brand, SUM(CAST(REPLACE(`Unit_Price_USD`, '$', '') AS DECIMAL(10, 2))) AS Total_Revenue FROM Products GROUP BY Brand ORDER BY Total_Revenue DESC;

select distinct st.country,sum((s.quantity*p.unit_price_Usd)/st.square_meters) as SalesBySquarefoot from Dataspark.sales s inner join Dataspark.stores st on s.storekey=st.storekey inner join Dataspark.products p on p.productkey=s.productkey group by st.country;

select country,count(storekey) from Dataspark.stores group by country;

select distinct st.country, sum(s.quantity*p.unit_price_Usd) - sum(s.quantity*p.unit_cost_Usd) as Profit  from Dataspark.sales s inner join Dataspark.products p on p.productkey=s.productkey inner join Dataspark.stores st on s.storekey=st.storekey group by st.country;





SELECT avg(sales) as avg_sales, avg(profit) as avg_profit, avg(cost) as avg_cost FROM sales;
SELECT * FROM AvgSalesProfitCost;


SELECT sum(sales) as total_sales, sum(profit) as total_profit, sum(cost) as total_cost FROM sales;
SELECT * FROM TotalSalesProfitCost;


SELECT region, count(*) as count FROM sales GROUP by region ORDER by count desc;
Select * FROM RegionCount;



Products with “Standard Class”, Profit > 850, and Quantity < 5
SELECT product_name FROM sales 
WHERE ship_mode = 'standard class' AND profit > 850 AND quantity < 5



SELECT product_id, product_name FROM sales 
where sales < (SELECT avg(sales) from sales) ORDER by sales DESC LIMIT 10;



SELECT DISTINCT s1.product_id, s1.product_name, s1.quantity 
FROM sales s1 JOIN sales s2 on s1.quantity = s2.quantity AND s1.ship_mode = 'standard class' ORDER by s1.quantity DESC LIMIT 10;



SELECT DISTINCT s1.product_id, s1.product_name, s1.quantity 
FROM sales s1 JOIN sales s2 on s1.quantity = s2.quantity AND s1.ship_mode = 'standard class' AND s1.product_id <> s2.product_id ORDER by s1.quantity DESC LIMIT 10;



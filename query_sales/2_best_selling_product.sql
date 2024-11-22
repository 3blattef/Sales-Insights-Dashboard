SELECT productline, SUM(sales) AS total_sales
FROM sales
GROUP BY productline
ORDER BY total_sales DESC;

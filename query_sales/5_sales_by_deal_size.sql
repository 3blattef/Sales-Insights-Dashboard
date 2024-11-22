SELECT dealsize, COUNT(*) AS total_deals, SUM(sales) AS total_sales
FROM sales
GROUP BY dealsize
ORDER BY total_sales DESC;

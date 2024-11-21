 

COPY sales
FROM 'D:\Sales-Insights-Dashboard\dataset\sales_data'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

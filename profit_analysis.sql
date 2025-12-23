SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM superstore_clean
GROUP BY Category
ORDER BY total_profit ASC;


SELECT
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) * 100.0) / SUM(Sales), 2) AS profit_margin_percent
FROM superstore_clean
GROUP BY Category
ORDER BY profit_margin_percent ASC;


SELECT
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND((SUM(Profit) * 100.0) / SUM(Sales), 2) AS profit_margin_percent
FROM superstore_clean
GROUP BY Category, "Sub-Category"
ORDER BY profit_margin_percent ASC;

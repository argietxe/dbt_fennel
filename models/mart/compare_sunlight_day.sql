SELECT 
	city
	,MIN(daytime) as shortest_day
	,MAX(daytime) AS longest_day
	,AVG(daytime) AS avg_daytime
FROM astro_forecast_day
GROUP BY city
ORDER BY shortest_day;



-- i want to find out how to show the date for these values
SELECT 
    date, city, daytime
FROM 
    astro_forecast_day
WHERE 
    (city = 'Reykjavik' AND daytime IN ('04:06:00', '21:09:00'))
    OR (city = 'Berlin' AND daytime IN ('07:39:00', '16:51:00'))
    OR (city = 'Vancouver' AND daytime IN ('08:11:00', '16:15:00'))
    OR (city = 'Biarritz' AND daytime IN ('08:57:00', '15:26:00'))
    OR (city = 'Auckland' AND daytime IN ('09:37:00', '14:42:00'))

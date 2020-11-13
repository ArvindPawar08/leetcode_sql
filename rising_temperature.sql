SELECT weather.id as id
FROM weather
JOIN weather w on DATEDIFF(weather.recordDate, w.recordDate) = 1
AND weather.Temperature > w.Temperature
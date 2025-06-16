use db_hotel_revenue;

WITH hotels AS (
    SELECT * FROM dbo.['2018$']
    UNION ALL
    SELECT * FROM dbo.['2019$']
    UNION ALL
    SELECT * FROM dbo.['2020$']
)
SELECT
    h.*,
	ms.Discount,
	mc.Cost
FROM
    hotels AS h
LEFT JOIN
    dbo.market_segment$ AS ms ON h.market_segment = ms.market_segment
LEFT JOIN
    dbo.meal_cost$ AS mc ON h.meal = mc.meal
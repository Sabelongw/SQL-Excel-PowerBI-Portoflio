with cte as (
SELECT * FROM bike_sales.bike_share_yr_0
	UNION all
SELECT * FROM bike_sales.bike_share_yr_1)

SELECT
dteday,
season,
a.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price - COGS as profit
FROM cte a
	left join cost_table b
  ON a.yr = b.yr  
WITH astro_forecast_day AS(
		SELECT 
				date,
				city,
				region,
				country,
				sunrise,
				sunset,
				moonrise,
				moonset,
				moon_phase,
				moon_illumination,
				CAST(sunset AS time) - CAST(sunrise AS time) AS daytime
		FROM staging_forecast_day)
SELECT * FROM astro_forecast_day


-- CHECK TABLES

SELECT * FROM make;
SELECT * FROM avg_price_2015;
SELECT * FROM avg_price_2016;
SELECT * FROM avg_price_2017;

-- CHECK AMOUNT OF ROWS IN EVERY TABLE TO MAKE SURE EVERYTHING IMPORTED RIGHT

SELECT COUNT(*) FROM make;
SELECT COUNT(*) FROM avg_price_2015;
SELECT COUNT(*) FROM avg_price_2016;
SELECT COUNT(*) FROM avg_price_2017;


-- QUERIES

-- Single showings of average price per year

SELECT make, price AS avg_price_2015 
FROM avg_price_2015;

SELECT make, price AS avg_price_2016 
FROM avg_price_2016;

SELECT make, price AS avg_price_2017 
FROM avg_price_2017;

	
-- Cheapest average price for used car manufactured in 2015 
----------------------------------------------------------

SELECT m.make,
		min(avg_price_2015.price) AS min_avg_price_2015		
FROM make m
JOIN avg_price_2015 ON
	m.make = avg_price_2015.make
GROUP BY m.make
ORDER BY min_avg_price_2015
LIMIT 1;

-- Cheapest average price for used car manufactured in 2016
----------------------------------------------------------

SELECT m.make,
		min(avg_price_2016.price) AS min_avg_price_2016		
FROM make m
JOIN avg_price_2016 ON
	m.make = avg_price_2016.make
GROUP BY m.make
ORDER BY min_avg_price_2016
LIMIT 1;

-- Cheapest average price for used car manufactured in 2017
----------------------------------------------------------

SELECT m.make,
		min(avg_price_2017.price) AS min_avg_price_2017	
FROM make m
JOIN avg_price_2017 ON
	m.make = avg_price_2017.make
GROUP BY m.make
ORDER BY min_avg_price_2017
LIMIT 1;

-- Highest average price for used car manufactured in 2015 
----------------------------------------------------------

SELECT m.make,
		max(avg_price_2015.price) AS max_avg_price_2015		
FROM make m
JOIN avg_price_2015 ON
	m.make = avg_price_2015.make
GROUP BY m.make
ORDER BY max_avg_price_2015 DESC
LIMIT 1;

-- Highest average price for used car manufactured in 2016 
----------------------------------------------------------

SELECT m.make,
		max(avg_price_2016.price) AS max_avg_price_2016		
FROM make m
JOIN avg_price_2016 ON
	m.make = avg_price_2016.make
GROUP BY m.make
ORDER BY max_avg_price_2016 DESC
LIMIT 1;

-- Highest average price for used car manufactured in 2016 
----------------------------------------------------------

SELECT m.make,
		max(avg_price_2017.price) AS max_avg_price_2017	
FROM make m
JOIN avg_price_2017 ON
	m.make = avg_price_2017.make
GROUP BY m.make
ORDER BY max_avg_price_2017 DESC
LIMIT 1;



-- FINAL JOINING
-- Side by side comparison of average price per each year together

SELECT m.make AS Make,
		avg_price_2015.price AS avg_price_2015,
		avg_price_2016.price AS avg_price_2016,
		avg_price_2017.price AS avg_price_2017
FROM make m
JOIN avg_price_2015 ON
	m.make = avg_price_2015.make
JOIN avg_price_2016 ON
	m.make = avg_price_2016.make
JOIN avg_price_2017 ON
	m.make = avg_price_2017.make;


	
	


	
	
	
	








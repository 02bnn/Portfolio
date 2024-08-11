---------------------------------------
-- Michelin Star Restaurant Analysis --
---------------------------------------

-- View table
SELECT * FROM MICHELIN.dbo.[Michelin Restaurant Data]

-- *****************
-- Location Analysis
-- *****************


-- Count and percentage of each Michelin award type --
SELECT 
	Award, 
	Count(*) as AwardCount, 
	CAST(ROUND(100.0 * Count(*) / SUM(Count(*)) OVER(), 2) AS DECIMAL(10,2)) AS PercentageOfTotal
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
GROUP BY Award
ORDER BY AwardCount DESC;


-- Top 10 locations with the most Michelin awarded restaurants --
SELECT TOP 10 Location, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
GROUP BY Location
ORDER BY restaurant_count DESC;


-- Top 10 locations with the most 3 Michelin star restaurants --
SELECT TOP 10 Location, Award, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = '3 Stars'
GROUP BY Location, Award
ORDER BY restaurant_count DESC 


-- Top 10 locations with the most 2 Michelin star restaurants --
SELECT TOP 10 Location, Award, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = '2 Stars'
GROUP BY Location, Award
ORDER BY restaurant_count DESC 


-- Top 10 locations with the most 1 Michelin star restaurants --
SELECT TOP 10 Location, Award, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = '1 Star'
GROUP BY Location, Award
ORDER BY restaurant_count DESC 


-- Top 10 locations with the most restaurants with the Bib Gourmand award --
SELECT TOP 10 Location, Award, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = 'Bib Gourmand'
GROUP BY Location, Award
ORDER BY restaurant_count DESC;  


-- Top 10 locations with the most restaurants with the Selected Restaurants award --
SELECT TOP 10 Location, Award, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = 'Selected Restaurants'
GROUP BY Location, Award
ORDER BY restaurant_count DESC;


-- Top 10 locations with the most restaurants with the Green Star award --
SELECT TOP 10 Location, COUNT(*) AS green_star_restaurant
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE GreenStar = 1
GROUP BY Location
ORDER BY green_star_restaurant DESC;


-- How many restaurants with a Michelin Star and a Green Star?
SELECT COUNT(*) AS Restaurant_Count
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE Award LIKE '%STAR%'
AND GreenStar = 1



-- ****************
-- Cuisine Analysis
-- ****************

-- Top 10 cuisine types among Michelin star restaurants --
SELECT TOP 10 Cuisine, COUNT(*) AS restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
GROUP BY Cuisine
ORDER BY restaurant_count DESC;


-- Top 10 cuisines with 3 Michelin stars --
SELECT TOP 10 Cuisine, COUNT(*) AS restaurant_count
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE Award = '3 Stars'
GROUP BY Cuisine
ORDER BY restaurant_count DESC;


-- Top 10 cuisines with 2 Michelin stars --
SELECT TOP 10 Cuisine, COUNT(*) AS restaurant_count
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE Award = '2 Stars'
GROUP BY Cuisine
ORDER BY restaurant_count DESC;


-- Top 10 cuisines with 1 Michelin star --
SELECT TOP 10 Cuisine, COUNT(*) AS restaurant_count
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE Award = '1 Star'
GROUP BY Cuisine
ORDER BY restaurant_count DESC;


-- Top 10 cuisines with the Bib Gourmand award --
SELECT TOP 10 Cuisine, COUNT(*) AS restaurant_count
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE Award = 'Bib Gourmand'
GROUP BY Cuisine
ORDER BY restaurant_count DESC;


-- Top 10 cuisines with the Selected Restaurants award --
SELECT TOP 10 Cuisine, COUNT(*) AS restaurant_count
FROM MICHELIN.dbo.[Michelin Restaurant Data]
WHERE Award = 'Selected Restaurants'
GROUP BY Cuisine
ORDER BY restaurant_count DESC;


-- **************
-- Price Analysis
-- **************


-- Top 10 Price ranges among Michelin star restaurants --
SELECT TOP 10 Price, Count(*) as restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
GROUP BY Price
ORDER BY restaurant_count DESC;


-- Top price ranges among 3 Michelin star restaurants --
SELECT TOP 10 Price, Count(*) as restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = '3 Stars'
GROUP BY Price
ORDER BY restaurant_count DESC;


-- Top 10 price ranges among 2 Michelin star restaurants --
SELECT TOP 10 Price, Count(*) as restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = '2 Stars'
GROUP BY Price
ORDER BY restaurant_count DESC;


-- Top price ranges among 1 Michelin star restaurants --
SELECT TOP 10 Price, Count(*) as restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = '1 Star'
GROUP BY Price
ORDER BY restaurant_count DESC;


-- Top 10 price ranges among Bib Gourmand awarded restaurants --
SELECT TOP 10 Price, Count(*) as restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = 'Bib Gourmand'
GROUP BY Price
ORDER BY restaurant_count DESC;


-- Top 10 price ranges among Selected Restaurants award --
SELECT TOP 10 Price, Count(*) as restaurant_count
FROM [MICHELIN].dbo.[Michelin Restaurant Data]
WHERE Award = 'Selected Restaurants'
GROUP BY Price
ORDER BY restaurant_count DESC;
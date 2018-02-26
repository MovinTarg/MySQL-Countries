SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE language = "Slovene"
ORDER BY percentage DESC;

SELECT countries.name, COUNT(cities.name) FROM countries
JOIN cities on countries.id = cities.country_id
GROUP BY cities.country_id
order by COUNT(cities.name) DESC;

SELECT cities.name, cities.population FROM cities
WHERE country_code ='MEX' and population > 500000
ORDER BY population DESC;

SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY percentage DESC;

SELECT countries.name, countries.surface_area, countries.population FROM countries
WHERE surface_area < 501 and population > 100000;

SELECT countries.name FROM countries
WHERE government_form = 'Constitutional Monarchy' and capital > 200 and life_expectancy > 75;

SELECT countries.name, cities.name, cities.district, cities.population FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE cities.district = 'Buenos Aires' and cities.population > 500000;

SELECT countries.region, COUNT(countries.name) FROM countries
GROUP BY countries.region
ORDER BY COUNT(countries.name) DESC;
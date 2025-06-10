select * from city;
select * from country;
select * from countrylanguage ;

select Count(distinct district) as 'Count of Cities in USA'
from  city
where CountryCode = 'USA';

select Name as 'Country with the besCountry with Highest Life Expectancy'
from Country
order by lifeexpectancy desc
limit 1;

SELECT *
FROM city 
WHERE name LIKE '%new%';

select *
from city
order by Population desc
limit 10;

select *
from city
where population > 2000000;

SELECT name as 'Cities with starting with Be'
FROM city 
WHERE name LIKE 'be%';

select *
from city
where Population between 500000 and 1000000;

select name as 'Cities listed Alphabetically'
from city
order by Name;

select name as 'Most Populated city'
from City
order by population desc
limit 1;



SELECT name, COUNT(*) AS occurrences
FROM city
GROUP BY name
order by name;

select name as 'City with Lowest Population'
from Country
order by population 
limit 1;

select name as 'Country with Largest Population'
from Country
order by population desc
limit 1;

SELECT City.Name as 'Captial of Spain'
from City
INNER JOIN Country
ON City.ID = Country.Capital
where country.Name = 'Spain';



SELECT Country.continent, Country.Name as Country, City.Name as City
from City
INNER JOIN Country
ON City.Countrycode = Country.code
where Country.continent = 'Europe';

SELECT City.Name as 'Capital City', City.Population
from City
INNER JOIN Country
ON City.ID = Country.Capital;

SELECT Country.Name, City.countrycode, avg(City.Population) as 'Average Population'
from City
inner join country
ON City.Countrycode = Country.code
group by City.Countrycode, Country.name
order by avg(City.Population) desc;

-- Countries with Low Population Density

select NAme, population / surfacearea as ' Population Density', population
from Country
order by population / surfacearea;

-- Cities with High GDP per Capita:
SELECT city.Name, country.GNP/ City.Population as 'GDP per Capita'
from City
inner join country
ON City.Countrycode = Country.code
order by City.Population/ country.GNP  desc;

-- Display Columns with Limit (Rows 31-40): 

select name, population
from city 
order by Population desc
LIMIT 10 OFFSET 30;
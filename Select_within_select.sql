SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia');
      

SELECT name FROM world WHERE gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom') AND continent = 'Europe';

SELECT name, continent FROM world WHERE continent IN('South America', 'Oceania') ORDER BY name;
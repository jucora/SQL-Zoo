SELECT id, title FROM movie WHERE yr=1962;

SELECT yr FROM movie WHERE title = 'Citizen Kane';

SELECT id, title, yr FROM movie WHERE title LIKE ('%Star Trek%') ORDER BY yr;

SELECT id FROM actor WHERE name = 'Glenn Close';

SELECT id FROM movie WHERE title = 'Casablanca';

SELECT name as cast_list FROM actor JOIN casting ON casting.actorid = actor.id JOIN movie ON movie.id = casting.movieid WHERE movieid = '11768';

SELECT name as cast_list FROM actor JOIN casting ON casting.actorid = actor.id JOIN movie ON movie.id = casting.movieid WHERE title= 'Alien';

SELECT title FROM movie JOIN casting ON casting.movieid= movie.id JOIN actor ON actor.id = casting.actorid WHERE name = 'Harrison Ford';

SELECT title FROM movie JOIN casting ON casting.movieid= movie.id JOIN actor ON actor.id = casting.actorid WHERE name = 'Harrison Ford' AND casting.ord != 1;

SELECT title, name FROM movie JOIN casting ON casting.movieid= movie.id JOIN actor ON actor.id = casting.actorid WHERE yr = 1962 AND ord = 1;

SELECT yr,COUNT(title) FROM movie JOIN casting ON movie.id=movieid JOIN actor   ON actorid=actor.id WHERE name='Rock Hudson' GROUP BY yr HAVING COUNT(title) > 2;

SELECT title, name FROM movie JOIN casting ON movieid = movie.id AND ord = 1 JOIN actor ON actor.id = actorid WHERE movieid IN(SELECT movieid FROM casting WHERE actorid IN (SELECT id FROM actor WHERE name='Julie Andrews'));

SELECT name FROM actor JOIN casting ON casting.actorid = actor.id WHERE casting.ord = 1 GROUP BY name HAVING COUNT(ord) >= 30 ORDER BY name ASC;


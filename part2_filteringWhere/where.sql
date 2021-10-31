SELECT name,area FROM cities WHERE area > 4000;

SELECT name,area FROM cities WHERE area BETWEEN 2000 AND 4000;

SELECT name,area FROM cities WHERE LOWER(name) IN ('delhi','shanghai');

SELECT name,area FROM cities WHERE LOWER(name) NOT IN ('delhi','shanghai');

SELECT name,area FROM cities WHERE area NOT IN (8223,3043) AND name='Delhi';

SELECT name,area FROM cities WHERE area NOT IN (8223,3043) OR name='Delhi';

SELECT name,population/area as density
FROM cities 
WHERE population/area >= 6000;
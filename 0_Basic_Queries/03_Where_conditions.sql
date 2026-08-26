USE sql_practica;


/* 

Operator    Description                 Example
=           Equal to                    year = 2018
!=          Not equal to                year != 2018
>           Greater than                playtime_hours > 50
<           Less than                   year < 2000
>=          Greater than or equal to    year >= 2010
<=          Less than or equal to       playtime_hours <= 20   

*/

-- Year equal to 2018
SELECT * FROM games WHERE year = 2018;

-- Compare using > INTEGER
SELECT title, playtime_hours FROM games WHERE playtime_hours > 50;

-- Filter by = 'TEXT'
SELECT title, year, playtime_hours FROM games WHERE developer = 'Nintendo'

-- AND: Both conditions must be true
SELECT * FROM games
WHERE year >= 2018 AND playtime_hours > 50;

-- OR: At least one condition need to be true
SELECT * FROM games
WHERE year >= 2018 OR playtime_hours > 50;

-- NOT: Negate a condition
SELECT * FROM games WHERE NOT developer = 'Nintendo'

SELECT * FROM games WHERE developer != 'Nintendo' -- Alternative using != 

-- (): Control order of execution
SELECT * FROM games
WHERE (developer = 'Nintendo' OR developer = 'Velve')
AND year > 1985;

/*
Practice:
*/

-- Select all video games released in the year 2018.

-- Select the title and year of video games with more than 50 hours of playtime.

-- Select all video games developed by 'Nintendo'.

-- Select the title of video games released before the year 2000.

-- Select video games by 'Nintendo' or 'Valve' that were also released after the year 2000. Use parentheses to group the OR.   
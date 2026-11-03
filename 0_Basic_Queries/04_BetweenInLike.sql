USE sql_practica;

/*
 	BETWEEN: Range of values (2018 - 2025)
 	IN: Inside list of values ('Nintendo', 'Velve')
 	Like: Pattern ('The%', '_alo', '_ario%)
*/

-- Range of values
SELECT * FROM games WHERE year BETWEEN 1985 AND 2005;

-- List of values
SELECT * FROM games g WHERE g.developer IN ('Nintendo', 'Velve', 'Bungie');

-- Search pattern
SELECT * FROM games g WHERE g.title LIKE '%H%';



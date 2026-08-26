IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'sql_practica')
BEGIN
    CREATE DATABASE sql_practica;
END
USE sql_practica;
IF OBJECT_ID('dbo.games', 'U') IS NULL
BEGIN
    CREATE TABLE games (
        id              INT PRIMARY KEY,
        title           NVARCHAR(100) NOT NULL,
        developer       NVARCHAR(100) NOT NULL,
        [year]          INT,
        playtime_hours  INT
    );
END
INSERT INTO games (id, title, developer, [year], playtime_hours) VALUES
(1,  N'The Legend of Zelda',    N'Nintendo',          1986, 20),
(2,  N'Super Mario Bros.',      N'Nintendo',          1985, 10),
(3,  N'Final Fantasy VII',      N'Square Enix',       1997, 40),
(4,  N'The Witcher 3',          N'CD Projekt Red',    2015, 100),
(5,  N'Minecraft',              N'Mojang Studios',    2011, 9999),
(6,  N'Grand Theft Auto V',     N'Rockstar Games',    2013, 80),
(7,  N'Dark Souls',             N'FromSoftware',      2011, 60),
(8,  N'Portal 2',               N'Velve',             2011, 8),
(9,  N'Red Dead Redemption 2',  N'Rockstar Games',    2018, 70),
(10, N'The Last of Us',         N'Naughty Dog',       2013, 15),
(11, N'Halo: Combat Evolved',   N'Bungie',            2001, 10),
(12, N'God of War',             N'Santa Monica Studio', 2018, 25);

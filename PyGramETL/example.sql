CREATE DATABASE dw;
GO

USE dw;
GO

CREATE TABLE book(bookid INTEGER PRIMARY KEY, book NVARCHAR(1000), genre NVARCHAR(1000));
CREATE TABLE time(timeid INTEGER PRIMARY KEY, day INTEGER, month INTEGER, year INTEGER);
CREATE TABLE location(locid INTEGER PRIMARY KEY IDENTITY(1,1), locationid INTEGER, city NVARCHAR(100), region NVARCHAR(100));
CREATE TABLE facttable(bookid INTEGER, locationid INTEGER, timeid INTEGER, sale INTEGER, PRIMARY KEY(bookid, locationid, timeid));

--CREATE USER dwuser WITH PASSWORD 'dwpass';
--GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO dwuser;

--SELECT * FROM book;
--SELECT * FROM facttable;
--SELECT * FROM location;
--SELECT * FROM time;

--TRUNCATE TABLE book;
--TRUNCATE TABLE facttable;
--TRUNCATE TABLE location;
--TRUNCATE TABLE time;

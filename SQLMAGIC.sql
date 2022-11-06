-- Creating database and making it use
create database sqlmagicmaster;
use sqlmagicmaster;

-- Question 1:Create User Table
CREATE TABLE Users(id int,firstName varchar(100),lastName varchar(100),age int,salary int,PRIMARY KEY(id));
-- Question 1:Inserting data into Users
INSERT INTO Users(id,firstName,lastName,age,salary)
VALUES
    (12,"sindhuja","jagarapu",22,12000),
    (13,"Navya","pagolu",21,10000),
    (14,"srilakshmi","molli",23,11000);

-- Question 2:Creating Movie Table
CREATE TABLE Movie(id int,MovieName varchar(100),Hero varchar(100),Heroine varchar(100),ticketPrice int,MovieRating int,FOREIGN KEY(id)REFERENCES Users(id));
-- Question 2:adding to the User table
INSERT INTO Movie(id,MovieName,Hero,Heroine,ticketPrice,MovieRating)
VALUES
    (12,"SitaRamam","Dulqar","Mrunal",250,10),
    (12,"Fida","Varun","Saipallavi",120,4),
    (12,"PadiPadiLecheManasu","Sarwanand","Saipallavi",130,9),
    (12,"Lovestory","Nagachaitanya","Saipallavi",180,2),
    (12,"GENTLEMAN","Nani","Nivetha",160,6),
    (12,"Premam","xyz","Nivetha",180,8);

-- Question 3:List Of Movies Watched By User ( Generic way using JOIN )
-- SELECT * FROM Users JOIN Movie ON Users.id=Movie.id;

-- Question 3:List Of Movies Watched By User with id 12
SELECT MovieName FROM Movie WHERE Movie.id=12;

-- Question 4:List Of Movies Watched By User with id 12 and ticketprice is greater than 150
SELECT MovieName FROM Movie WHERE Movie.id=12 AND Movie.ticketPrice>150;

-- Question 5:List Of Movies Watched By User with id 12 and movieRating is less than 5
SELECT MovieName FROM Movie WHERE Movie.id=12 AND Movie.MovieRating<5;

-- Question 6:List Of Movies Watched By User with id 12 and where herione repeats more than or equal to 2 times
SELECT MovieName FROM Movie WHERE Movie.id=12 AND Heroine IN(SELECT Heroine FROM Movie GROUP BY Heroine HAVING COUNT(Heroine)>=2);

-- Question 7:Total Amount Spent By User with id 12 On Movies
SELECT SUM(ticketPrice) FROM Movie WHERE Movie.id=12;
-- Question 7:Average Amount Spent By User1 On Movies
SELECT AVG(ticketPrice) FROM Movie WHERE Movie.id=12;

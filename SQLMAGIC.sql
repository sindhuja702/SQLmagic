CREATE TABLE Users(id int,firstName varchar(100),lastName varchar(100),age int,salary int,PRIMARY KEY(id));
INSERT INTO Users(id,firstName,lastName,age,salary)
VALUES
    (12,"sindhuja","jagarapu",22,12000),
    (13,"Navya","pagolu",21,10000),
    (14,"srilakshmi","molli",23,11000);
SELECT * FROM Users;
CREATE TABLE Movie(id int,MovieName varchar(100),Hero varchar(100),Heroine varchar(100),ticketPrice int,MovieRating int,FOREIGN KEY(id)REFERENCES Users(id));
INSERT INTO Movie(id,MovieName,Hero,Heroine,ticketPrice,MovieRating)
VALUES
    (12,"SitaRamam","Dulqar","Mrunal",250,10),
    (12,"Fida","Varun","Saipallavi",120,4),
    (12,"PadiPadiLecheManasu","Sarwanand","Saipallavi",130,9),
    (12,"Lovestory","Nagachaitanya","Saipallavi",180,2),
    (12,"GENTLEMAN","Nani","Nivetha",160,6),
    (12,"Premam","xyz","Nivetha",180,8);
SELECT * FROM Movie;
SELECT * FROM Users JOIN Movie ON Users.id=Movie.id;
SELECT * FROM Movie;
SELECT MovieName FROM Movie WHERE Movie.id=12;
SELECT MovieName FROM Movie WHERE Movie.id=12 AND Movie.ticketPrice<150;
SELECT MovieName FROM Movie WHERE Movie.id=12 AND Movie.MovieRating<5;
SELECT MovieName FROM Movie WHERE Movie.id=12 AND Heroine IN(SELECT Heroine FROM Movie GROUP BY Heroine HAVING COUNT(Heroine)>=2);
SELECT SUM(ticketPrice) FROM Movie WHERE Movie.id=12;
SELECT AVG(ticketPrice) FROM Movie WHERE Movie.id=12;

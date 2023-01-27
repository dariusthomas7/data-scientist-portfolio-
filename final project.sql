use sakila;
CREATE TABLE Authors(
AuthorID INTEGER PRIMARY KEY AUTO_INCREMENT, 
FullName VARCHAR(50) NOT NULL,
BirthCountry VARCHAR(50) NOT NULL
);

INSERT INTO Authors (FullName, BirthCountry)
VALUES
("Jane Austen", "England"),
("Charles Dickens", "England"),
("Mark Twain", "United States");
SELECT * FROM Authors;

CREATE TABLE Books(
BookID INTEGER PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
AuthorID INTEGER, 
FOREIGN KEY(AuthorID) REFERENCES Authors(AuthorID)
);



INSERT INTO Books (Name, AuthorID)
Values
("Pride and Prejudice", 1), 
("Sense and Sensibility", 1),
("The Pickwick Papers", 2);

Select * From Books;
SELECT * FROM Authors
Join Books USING (AuthorID);

CREATE VIEW AuthorBooks As
SELECT FullName As AuthorName, Name AS BookName
From Authors Join Books Using (AuthorID)
ORDER By FullName;

SELECT * From AuthorBooks
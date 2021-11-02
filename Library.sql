CREATE DATABASE Library
USE Library
CREATE TABLE Category(
    Id int identity primary key,
	Name nvarchar(150) NOT NULL,
)
CREATE TABLE Books(
   Id int identity primary key,
   Name nvarchar(150) NOT NULL,
   CategoryId int references Category(Id),
)
CREATE TABLE Authors(
   Id int identity primary key,
   Name nvarchar(150) NOT NULL,
   Surname nvarchar(150),
)
CREATE TABLE BookAuthor(
    Id int identity primary key,
	BookId int references Books(Id),
	Author int references Authors(Id)
)




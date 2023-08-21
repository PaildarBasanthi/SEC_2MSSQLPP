create database Assign7Db
use Assign7Db
CREATE TABLE Books (
    BookId INT PRIMARY KEY,
    Title NVARCHAR(255),
    Author NVARCHAR(255),
    Genre NVARCHAR(255),
    Quantity INT
)



insert into Books values(2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 8)
insert into Books values(3, 'Pride and Prejudice', 'Jane Austen', 'Romance', 12)

select * from Books
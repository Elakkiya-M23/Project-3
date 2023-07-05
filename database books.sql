 -- database books
create database BooksDB2;
create table BooksDB2.Books(
Books_id int primary key auto_increment,
Books_Title varchar(50),
Books_Author varchar(50),
Books_genre varchar(100),
publication_year int ,
Book_price int
);
create table BooksDB2.Author(
SI_NO int primary key auto_increment,
Author_name varchar(50),
Book_Title varchar(50),
foreign key(SI_NO) References Books(Books_id)
);
select * from BooksDB2.Books;
select * from BooksDB2.Author;
insert into BooksDB2.Books values
(1,"universe","Moon","Fiction",1300,1330),
(2,"solar system","potry","Comdey",1913,1550),
(3,"Telephone","geroge","History",1781,1251),
(4,"River","Flowes","Poetry",1689,7991),
(5,"Blowsom","Litcher","Non Friction",1990,1500);
insert into BooksDB2.Author values
(1,"Litcher","Once upon a time"),
(2,"The King","Guru"),
(3,"Finite","narrator"),
(4,"Human","Cildren"),
(5,"Sethu","The Power");
select distinct Books_Title from BooksDB2.Books;
select distinct Book_Title from BooksDB2.Author;
update BooksDB2.Books set Books_Title="Bhavathgeethai" where Books_id=5;
update BooksDB2.Books set Books_Author="vyasa" where Books_id=5;
delete from BooksDB2.Author where SI_NO=5;
use BooksDB2;
select
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
inner join Author
on Books.Books_id=Author.SI_NO;
select * from BooksDB2.Books;
select * from BooksDB2.Author;
use BooksDB2;
select
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
left join Author
on Books.Books_id=Author.SI_NO;
use BooksDB2;
select
Books.Books_id,Books.Books_Title,Books.Books_Author,Books.Books_genre,Books.publication_year,Books.Book_price
from Books
right join Author
on Books.Books_id=Author.SI_NO;


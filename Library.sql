create table Liberary_Member
(
   member_id int primary key,
   first_name varchar(100),
   last_name varchar(100),
   email varchar(100),
   phone varchar(100),
   address varchar(100),
   join_date date,
   stutas varchar(100)
)

create table loan
(
   load_id int primary key,
   member_id int,
   copy_id int,
   issue_date date,
   due_date date,
   return_date date,
   fine_amount int,
   stutas varchar(100),
   CONSTRAINT fk_borrows FOREIGN KEY (member_id) REFERENCES Liberary_Member(member_id),
   CONSTRAINT fk_for FOREIGN KEY (copy_id) REFERENCES book_copy(book_copy_id)
)

create table book_copy
(
   book_copy_id int primary key,
   book_id int,
   barcode int,
   shelf_location int,
   status varchar(50),
   CONSTRAINT fk_has FOREIGN KEY (book_id) REFERENCES book(book_id)
)

create table book
(
   book_id int primary key,
   title varchar(100),
   ISBN int,
   publish_year date,
   edition date,
   publisher_id int,
   catogry_id int,
   CONSTRAINT fk_published_by FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
   CONSTRAINT fk_belongs_to FOREIGN KEY (catogry_id) REFERENCES category(category_id)
)

create table publisher
(
   publisher_id int primary key,
   publisher_name varchar(100),
   address varchar(100),
   phone varchar(100),
   email varchar(100)
)

create table category
(
   category_id int primary key,
   category_name varchar(100),
   description varchar(200)
)

create table author
(
   author_id int primary key,
   first_name varchar(100),
   last_name varchar(100),
   nationalty varchar(100)
)

create table book_author
( 
   book_id int,
   author_id int,
   PRIMARY KEY (book_id, author_id),
   CONSTRAINT fk_writes FOREIGN KEY (author_id) REFERENCES author(author_id),
   CONSTRAINT fk_writed_book FOREIGN KEY (book_id) REFERENCES book(book_id)
)

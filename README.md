 📚 Library Management System Database

 Overview

The Library Management System Database is a relational database designed to manage library operations efficiently. 
It stores and organizes information about books, members, authors, publishers, categories, book copies, 
and borrowing transactions while maintaining data integrity through normalized tables and relationships.

 Features

 👥 Manage library members and their information.
 📚 Store book details, editions, ISBNs, and publication years.
 ✍️ Support multiple authors per book.
 🏢 Manage publishers and book categories.
 📖 Track individual book copies and their availability.
 🔄 Record book loans, due dates, returns, and fines.
 🔒 Ensure data consistency using primary and foreign key constraints.

 Database Entities

. Library_Member – Stores member information.
. Book – Contains book details.
. Author – Stores author information.
. Book_Author – Junction table for many-to-many relationship between books and authors.
. Publisher – Stores publisher details.
. Category – Organizes books into categories.
. Book_Copy – Tracks physical copies of books.
. Loan – Records borrowing and return transactions.

 Relationships

. One Member can have many Loans.
. One Book can have multiple Book Copies.
. One Book belongs to one Category.
. One Book is published by one Publisher.
. A Book can have multiple Authors, and an Author can write multiple Books.
. One Book Copy can be borrowed multiple times through Loans.

 Technologies

. Database: PostgreSQL
. Modeling: Entity Relationship Diagram (ERD)
. Concepts: Relational Database Design, Normalization, Primary Keys, Foreign Keys, Constraints

 Learning Outcomes

. Designed a normalized relational database schema.
. Implemented one-to-many and many-to-many relationships.
. Applied database constraints to maintain data integrity.
. Modeled real-world library operations using SQL database design principles.


The project includes an Entity Relationship Diagram (ERD) illustrating the database structure, entities, attributes, and relationships.

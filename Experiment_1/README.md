# Experiment 1.1 – Library Management System Database

## Student Information

| Field    | Details        |
|---------|----------------|
| Name    | Aryan Dahiya   |
| UID     | 24BAI70697     |
| Branch  | AIT-CSE (AIML) |
| Section | 24AIT-KRG2     |
| Semester| 4              |



## Experiment
**Experiment 1.1:** Design and implementation of a Library Management System using PostgreSQL with DDL, DML and DCL commands.

## Aim
The aim of this experiment is to design and implement a Library Management System database using PostgreSQL. The database is created using proper tables, primary keys, foreign keys and constraints. DML operations are performed and database security is implemented using roles and privileges.

## Objective
The objective of this experiment is to gain practical knowledge of DDL, DML and DCL commands in PostgreSQL. It also helps in understanding how to create roles, grant permissions and revoke permissions to secure the database using role based access control.

## Practical / Experiment Steps
1. Design the database structure for the Library Management System.
2. Create tables for books, members and issue records using DDL commands.
3. Apply primary keys, foreign keys and constraints to maintain data integrity.
4. Insert sample records into the tables using DML commands.
5. Update and delete records as required.
6. Create a database role named Librarian.
7. Grant required permissions like SELECT, INSERT and DELETE to the Librarian role.
8. Revoke permissions when needed to ensure database security.

## Procedure of the Experiment
1. Start the system and log in to the computer.
2. Open pgAdmin and connect to PostgreSQL server.
3. Create a new database for the Library Management System.
4. Create tables such as Books, Members and Issue_Records using CREATE TABLE command.
5. Define primary keys and foreign keys while creating the tables.
6. Insert records into tables using INSERT command.
7. Update existing data using UPDATE command.
8. Delete unwanted records using DELETE command.
9. Create a role named Librarian with password using CREATE ROLE command.
10. Grant SELECT, INSERT and DELETE permissions to the Librarian role.
11. Revoke permissions using REVOKE command when required.
12. Execute all queries and verify the output.
13. Save the work and take screenshots of execution and results.

## Code 
## 1. ADMIN
```
CREATE TABLE BOOKS(
	ID INT PRIMARY KEY,
	NAME VARCHAR(20) NOT NULL,
	AUTHOR VARCHAR(20) NOT NULL
)

INSERT INTO BOOKS VALUES(1,'HARRY POTTER','JK ROWLING');

ALTER TABLE BOOKS
ADD COUNT INT CHECK(COUNT>=1)

SELECT * FROM BOOKS

UPDATE BOOKS 
SET COUNT=3
WHERE ID = 1

INSERT INTO BOOKS VALUES(2,'GAME OF THRONS','I DONT KNOW ',12);


CREATE TABLE LIBRARY_VISITOR_USER(
	USER_ID INT PRIMARY KEY,
	USER_NAME VARCHAR(20) NOT NULL,
	AGE INT CHECK(AGE>=17) NOT NULL,
	EMAIL_ID VARCHAR(20) UNIQUE NOT NULL
)

INSERT INTO LIBRARY_VISITOR_USER
VALUES(101,'ARYAN',18,'ARD@GMAIL.COM')

INSERT INTO LIBRARY_VISITOR_USER
VALUES(102,'RAMESH',19,'RMD@GMAIL.COM')

SELECT * FROM LIBRARY_VISITOR_USER

INSERT INTO LIBRARY_VISITOR_USER
VALUES(1,'RAM',19,'RAM@GMAIL.COM')

UPDATE LIBRARY_VISITOR_USER
SET USER_ID = 103
WHERE USER_ID =1

ALTER TABLE LIBRARY_VISITOR_USER
ALTER COLUMN EMAIL_ID TYPE VARCHAR(15);

CREATE TABLE BOOK_ISSUE(
	ISSUE_ID INT PRIMARY KEY ,
	BOOK_ID INT REFERENCES BOOKS(ID) NOT NULL,
	USER_ID INT REFERENCES LIBRARY_VISITOR_USER(USER_ID),
	ISSUE_DATE DATE NOT NULL DEFAULT CURRENT_DATE
)

INSERT INTO BOOK_ISSUE
VALUES(121,1,101,'2026-01-09')

SELECT * FROM BOOK_ISSUE


CREATE ROLE LIBRARIAN
WITH LOGIN PASSWORD 'RAKESH101'


GRANT SELECT, INSERT, DELETE, UPDATE ON BOOKS TO LIBRARIAN




REVOKE  SELECT,INSERT,DELETE,UPDATE ON BOOKS FROM LIBRARIAN

```
## 2. LIBRARIAN
```
SELECT * FROM books;
select * from book_issue;
select * from LIBRARY_VISITOR_USER;

INSERT INTO books VALUES(110,'ABCD','CLANS',2);
INSERT INTO books VALUES(150,'THE LORD','HRM',7);

DELETE FROM books
WHERE ID=150;

SELECT * FROM book_issue;
SELECT * FROM LIBRARY_VISITOR_USER;
```
## SCREENSHOTS


<img width="997" height="287" alt="Screenshot 2026-01-24 142227" src="https://github.com/user-attachments/assets/d1c5ad3e-b5c1-4f58-b598-736237bb1240" />
<img width="693" height="261" alt="Screenshot 2026-01-24 142216" src="https://github.com/user-attachments/assets/31b36758-c046-4b91-8d97-272f5bd4f004" />
<img width="1110" height="231" alt="Screenshot 2026-01-24 141057" src="https://github.com/user-attachments/assets/bb677b91-d6e6-4961-b656-625ff80f71b1" />
<img width="1085" height="199" alt="Screenshot 2026-01-24 141046" src="https://github.com/user-attachments/assets/3741f317-c71c-4900-b3e6-f98730ea33a7" />
<img width="988" height="257" alt="Screenshot 2026-01-24 140946" src="https://github.com/user-attachments/assets/e94778c2-6745-4cc7-b34f-8fad99acb648" />
<img width="699" height="329" alt="Screenshot 2026-01-24 140931" src="https://github.com/user-attachments/assets/a924f95f-5e17-439e-8ca1-226304030ee2" />
<img width="896" height="318" alt="Screenshot 2026-01-24 140922" src="https://github.com/user-attachments/assets/a01cdc55-9fb5-4a6d-ab48-e466829fca2a" />
<img width="1043" height="476" alt="Screenshot 2026-01-24 140847" src="https://github.com/user-attachments/assets/537b99d8-ce70-4cb8-9cd4-39eb3d6e78e9" />
<img width="685" height="316" alt="Screenshot 2026-01-24 140842" src="https://github.com/user-attachments/assets/50de7852-5636-4786-aee1-0f530b17d66d" />


##Learning Outcomes
-Understood the basics of relational database design using tables, keys, and relationships.
-Learned to apply primary and foreign key constraints to maintain data integrity.
-Gained hands-on experience with INSERT, UPDATE, and DELETE operations.
-Understood role-based access control using GRANT and REVOKE.
-Learned how to create read-only users for secure data access.
-Practiced ALTER TABLE and DROP TABLE commands for schema management.



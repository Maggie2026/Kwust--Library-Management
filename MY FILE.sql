CREATE DATABASE Kwustlibrarymanagement;
USE librarymanagement;
CREATE TABLE MembersTable
(
Members_ID INT PRIMARY KEY NOT NULL,
First_Name VARCHAR(30),
Last_Name VARCHAR(30),
Email VARCHAR(20) UNIQUE,
Phone VARCHAR(30),
MembershipDate DATE,
MembershipType ENUM('Student', 'Faculty', 'Public')
);

CREATE TABLE PublisherTable
(
Publisher_ID INT PRIMARY KEY NOT NULL,
Publisher_Name VARCHAR(30),
ContactEmail VARCHAR(50),
Phone_Number VARCHAR(20),
Address VARCHAR(100)
);

CREATE TABLE BooksTable
(
Book_ID INT PRIMARY KEY NULL
ISBN VARCHAR(20) UNIQUE,
Title VARCHAR(50) NOT NULL,
Author VARCHAR(50),
Public_ID INT,
PublicationDate DATE, 
Genre VARCHAR(50),
TotalCopies INT DEFAULT 1,
AvailableCopies INT DEFAULT 1,
FOREIGN KEY (Publisher_ID) REFENCES PublisherTable(Publisher_ID)
);


CREATE TABLE BorrowTable
(
Book_ID INT PRIMARY KEY NOT NULL,
Member_ID INT,
Book_ID INT,
BorrowDate DATE NOT NULL,
DueDate DATE NOT NULL,
ReurDate DATE NULL,
FineAmount DECIMAL(8,2) DEFAULT 0.00,
FOREIGN KEY (Members_ID) REFERENCES MembersTable(Members_ID),
FOREIGN KEY (Book_ID) REFERENCES BooksTable(Book_ID)
);

INSERT INTO MembersTable(Members_ID, First_Name, Last_Name, Email, Phone, MembershipDate, MembershipType)
VALUES
('1004', 'Mercy', 'Nyakio', 'mercynyakio@gmail.com', '0742890234', '12/09/2023', 'student'),
('1004', 'Mercy', 'Nyakio', 'mercynyakio@gmail.com', '0742890234', '12/09/2023', 'student'),
('1004', 'Mercy', 'Nyakio', 'mercynyakio@gmail.com', '0742890234', '12/09/2023', 'student'),
('1004', 'Mercy', 'Nyakio', 'mercynyakio@gmail.com', '0742890234', '12/09/2023', 'student');
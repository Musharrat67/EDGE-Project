-- Creating table "Members"
CREATE TABLE `members` (
  `Member_Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Book_Id` int DEFAULT NULL,
  `Issue_Date` date DEFAULT NULL,
  PRIMARY KEY (`Member_Id`),
  KEY `Book_Id` (`Book_Id`),
  CONSTRAINT `members_ibfk_1` FOREIGN KEY (`Book_Id`) REFERENCES `books` (`Book_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Creating table "Books"  
CREATE TABLE `books` (
  `Book_Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(150) DEFAULT NULL,
  `Published_Year` year DEFAULT NULL,
  PRIMARY KEY (`Book_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Inserting values in table "Books"
INSERT INTO edgeict.books (book_id, Title, published_year) VALUES ('1', 'It ends with us', 2015),
('2','It starts with us', 2017),
('3','Nemesis', 2018),
('4','November Nine', 2013),
('5','Opekkha', 1999),
('6','Lilaboti', 1995),
('7','Kobi', 1993),
('8','Jaal', 2021),
('9','Ikigai',1990); 

-- Inserting values into table "Members"
INSERT INTO `edge`.`members` (`Member_Id`, `Name`, `Email`, `Phone`, `Book_Id`, `Issue_Date`) 
VALUES ('1', 'Ashraful', 'ashraful@gmail.com', '01724725203', '5', '2024-12-08'),
('2','Musharrat', 'musharrat@gmail.com', '01626401606', '2', '2024-11-09'),
('3','Israt', 'israt@gmail.com', '01791313508', '1', '2024-12-04'),
('4','Habibir', 'habibur@gmail.com', '01789362514', '8', '2024-10-30'),
('5','Shariful', 'shariful@gmail.com', '01987142536', '6', '2024-11-15'),
('6','Tawhid', 'tawhid@gmail.com', '01321459687', '7', '2024-12-28'),
('7','Nanjiba', 'nanjiba@gmail.com', '01757707933', '5', '2024-10-23'),
('8','Ismat', 'ismat@gmail.com', '01654962547', '3', '2024-09-12'),
('9','Rafika', 'rafika@gmail.com', '01987426135', '2', '2024-11-22'),
('10','Sultana', 'sultana@gmail.com', '01789264135', '4', '2024-12-16'),
('11','Mushrifa', 'mushrifa@gmail.com', '01654789253', '7', '2024-10-29');

-- Joining tables 
SELECT m.Member_Id, m.Email, m.Book_Id
FROM members m
INNER JOIN Books b ON m.Book_Id = b.Book_Id
WHERE b.Book_Id = 5;

-- Add a new value to the table "Members"
INSERT INTO `edge`.`members` (`Member_Id`, `Name`, `Email`, `Phone`, `Book_Id`, `Issue_Date`) 
VALUES('12', 'Piyash', 'piyash@gmail.com', '01654789645', '4', '2024-11-24');

-- Deleting an information from the "Books"
DELETE FROM books WHERE book_id = 8; 

-- Updating a member information in the table "Members"
UPDATE Members
set Name= "Jahan", Email="jahan@gmail.com"
WHERE Member_Id= 3;
 
 
 
 
create database ssc;
use ssc;

CREATE TABLE Enquiry (
  Eid INT AUTO_INCREMENT PRIMARY KEY,
  Ename VARCHAR(50) NOT NULL,
  Econtact VARCHAR(50) NOT NULL,
  Eemail VARCHAR(50) NOT NULL,
  Eaddress VARCHAR(100),
  Ecourses VARCHAR(75),
  Eother VARCHAR(75),
  Ecompleted VARCHAR(50)
);

CREATE TABLE Review (
	Rid INT AUTO_INCREMENT PRIMARY KEY,
    Rname VARCHAR(50) NOT NULL,
    Rcontact VARCHAR(50) NOT NULL,
    Remail VARCHAR(50) NOT NULL,
    Rmessage VARCHAR(256) NOT NULL,
    Rrating INT
);

CREATE TABLE Login (
  LUsername VARCHAR(25) NOT NULL,
  LPassword  VARCHAR(25) NOT NULL,
  Authority VARCHAR(25) CHECK (Authority IN ('STAFF','ADMIN'))
);

-- INSERT INTO Enquiry (Ename,Econtact,Eemail,Eaddress,Ecourses,Eother,Ecompleted)
-- VALUES
-- ('Abhi', '8879072265', 'Abhi@gmail.com', 'Awesome!', 'MS-Office,EnglishSpeaking','KLiC Web Designing','NO'),
-- ('Jagjit', '7045000807', 'Jagjit@gmail.com', 'Best :)', 'MS-Office,EnglishSpeaking','KLiC Web Designing','NO'),
-- ('Prasad', '9998887777', 'Prasad@gmail.com', 'Could be better', 'MS-Office,EnglishSpeaking','KLiC Web Designing','NO'),
-- ('Reeta', '9821149098', 'Reeta@gmail.com', 'Awesome!', 'MS-Office,EnglishSpeaking','KLiC Web Designing','NO'),
-- ('Niraj', '7798799334', 'Niraj@gmail.com', 'Best :)', 'MS-Office,EnglishSpeaking','KLiC Web Designing','NO');
INSERT INTO Review (Rname, Rcontact, Remail, Rmessage, Rrating)
VALUES 
('Abhi', '8879072265', 'Abhi@gmail.com', 'Awesome!', 5),
('Jagjit', '7045000807', 'Jagjit@gmail.com', 'Best :)', 4),
('Prasad', '9998887777', 'Prasad@gmail.com', 'Could be better', 3),
('Reeta', '9821149098', 'Reeta@gmail.com', 'Awesome!', 5),
('Niraj', '7798799334', 'Niraj@gmail.com', 'Best :)', 4);
INSERT INTO Login (LUsername,LPassword,Authority) VALUES
('Reeta','Simrankaur','ADMIN'),('Jagjit','JagjitSR','STAFF');

desc Enquiry;
desc Review;
desc Login;

select * from Enquiry;
select * from Review;
select * from Login;

drop table Enquiry;
drop table Review;
drop table Login;
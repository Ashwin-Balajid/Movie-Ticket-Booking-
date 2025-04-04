
-- CREATE DATABASE MOVIE
create database movie;

-- USE DATABASE MOVIE
use movie;

-- CREATE TABLE WEB_USER
create table Web_user(Web_User_ID varchar(5) Primary Key,
First_Name varchar(15) not null,
Last_Name varchar(20) not null,
Email_ID varchar(30) not null,
Age int not null,
Phone_Number varchar(10) not null);

-- CREATE TABLE THEATRE
create table Theatre(Theatre_ID varchar(5) Primary key,
Name_of_Theatre varchar(30) not null,
No_of_Screens int not null,
Area varchar(30) not null);

-- CREATE TABLE SCREEN
create table Screen(Screen_ID varchar(5) primary key,
No_of_Seats_Gold int not null,
No_of_Seats_Silver int not null,
Theatre_ID varchar(5) not null,
Constraint fk_Theatre foreign key (Theatre_ID)
references Theatre(Theatre_ID)
ON DELETE CASCADE
ON UPDATE CASCADE);

-- CREATE TABLE MOVIE
create table Movie(Movie_ID varchar(5) primary key,
Name varchar(30) not null,
Language varchar(10) not null,
Genre varchar(20) not null,
Target_Audience varchar(5) not null);

-- CREATE TABLE SHOWS
create table Shows(Show_ID varchar(10) primary key,
Show_Time time not null,
Show_Date date not null,
Seats_Remaining_Gold int not null check (Seats_Remaining_Gold >= 0),
Seats_Remaining_Silver int NOT NULL CHECK (Seats_Remaining_Silver >= 0),
Class_Cost_Gold int NOT NULL,
Class_Cost_Silver int NOT NULL,
Screen_ID varchar(5) NOT NULL,
Movie_ID varchar(5) NOT NULL,
constraint fk_screen Foreign Key (Screen_ID) 
REFERENCES Screen(Screen_ID) 
ON DELETE CASCADE 
ON UPDATE CASCADE,
constraint fk_movie Foreign Key (Movie_ID) 
REFERENCES Movie(Movie_ID) 
ON DELETE CASCADE 
ON UPDATE CASCADE);

-- CREATE TABLE BOOKING
CREATE Table Booking(Booking_ID varchar(10) primary key,
No_of_Tickets int NOT NULL,
Total_Cost int NOT NULL,                                           
Card_Number varchar(19) not null,
Name_on_card varchar(21) not null,
User_ID varchar(5) not null,
Show_ID varchar(10) not null,
constraint fk_web_user Foreign Key (User_ID) 
REFERENCES Web_User (Web_User_ID) 
ON DELETE CASCADE 
ON UPDATE CASCADE,
constraint fk_shows Foreign Key (Show_ID) 
REFERENCES Shows(Show_ID) 
ON DELETE CASCADE 
ON UPDATE CASCADE);

-- CREATE TABLE TICKET
create table Ticket(Ticket_ID varchar(20) primary key,
Booking_ID varchar(10) not null,
Class varchar(3) not null,
Price int not null,
constraint fk_Booking foreign key (Booking_ID)
References Booking(Booking_ID)
ON Delete Cascade);

-- INSERT VALUES WEB_USER
insert into Web_user(Web_User_ID, First_Name, Last_Name, Email_ID, Age, Phone_Number)
values
('100', 'Amit', 'Sinha', 'amitsinhT04@gmail.com', 35, '9846273634'),
('101', 'Raghav', 'Seth', 'seth.raghav987@gmail.com', 26, '7845279834'),
('102', 'Anjali', 'Gupta', 'anjali23g@gmail.com', 30, '8849273345'),
('103', 'Joy', 'Mathew', 'jmathew.123@gmail.com', 27, '9000567890'),
('104', 'Sudha', 'Sunil', 'sudha_sunil07@gmail.com', 47, '8874323461'),
('105', 'Ajay', 'Kumar', 'kumarajayv56@gmail.com', 19, '9078985643'),
('106', 'Vikram', 'Joshi', 'jvikram.89@gmail.com', 23, '7750912345'),
('107', 'Komal', 'Agarwal', 'komal.agarwal87@gmail.com', 15, '9345687654'),
('108', 'Maitri', 'Shah', 'maitrishahj1@gmail.com', 32, '9922345016'),
('109', 'Bhavya', 'Shastri', 'bhavyashastri@gmail.com', 25, '8567409098'),
('110', 'Preeti', 'Jain', 'preeti.jain@gmail.com', 18, '7765433211'),
('111',	'Shreya', 'Rathod','rathod_shreya@gmail.com',38,'9800215673'),
('112',	'Aditya', 'Rajesh','adityarajesh2902@gmail.com',21,'9108996762'),
('113',	'Keerti', 'Srivatsan','keertisri@gmail.com',25,'7707378654'),
('114',	'Rahul', 'Raghav','rahulrag@gmail.com',23,'9591990037'),
('115',	'Shrushti', 'Singh','shrushtikaul@gmail.com',19,'9900554017'),
('116',	'Mona', 'Mohammed','monaraisa@gmail.com',23,'9591670037'),
('117',	'Anushka', 'Sharma','sharmaanushka@gmail.com',40,'9902432497'),
('118',	'Yohanan', 'Veerappan','yohanv@gmail.com',44,'8231239804'),
('119',	'Kamala', 'Raghavendran','kamalag@gmail.com',32,'9594390037'),
('120',	'Janice', 'Fernandes','janicefernandes@gmail.com',38,'9325880785'),
('121',	'Sachin', 'Suresh','sachin1995@gmail.com',23,'9325880785'),
('122',	'Utham', 'Aiyappa','utham10@gmail.com',21,'8581654798'),
('123',	'Pranav', 'Gowda','pranavgowda06@gmail.com',37,'8846085689'),
('124',	'Krita', 'Prabhu','prabhukrita@gmail.com',20,'9098107054'),
('125',	'Aadrika', 'Bhandarkar','aadrikabhandarkar@gmail.com',28,'9895287453'),
('126',	'Sulohit', 'Avvaru','avvarusulohit1996@gmail.com',22,'7180867407'),
('127',	'Shriya', 'Bhimanadula','shriyab@gmail.com',35,'9055932134'),
('128',	'Ashmita', 'Rao','ashmitarao@gmail.com',27,'7191088921'),
('129',	'Nusaiba', 'Mehrunisa','nusaibafatima@gmail.com',24,'8731990037');

-- INSERT VALUES THEATRE
insert into Theatre(Theatre_ID, Name_of_Theatre, No_of_Screens, Area)
values
('T01', 'PVR Cinemas', 4, 'Koramangala, Bangalore'),
('T02', 'INOX Movies', 4, 'Katpadi, Vellore'),
('T03', 'Cinepolis', 3, 'Meera Marg, Gurgaon');

-- INSERT VALUES SCREEN
insert into Screen(Screen_ID, No_of_Seats_Gold, No_of_Seats_Silver, Theatre_ID)
values
('T011', 20, 60, 'T01'), 
('T012', 20, 60, 'T01'), 
('T013', 20, 60, 'T01'), 
('T014', 20, 60, 'T01'), 
('T021', 22, 64, 'T02'), 
('T022', 22, 64, 'T02'), 
('T023', 22, 64, 'T02'), 
('T024', 22, 64, 'T02'), 
('T031', 20, 50, 'T03'), 
('T032', 20, 50, 'T03'), 
('T033', 20, 50, 'T03');

-- INSERT VALUES MOVIE
insert into Movie(Movie_ID, Name, Language, Genre, Target_Audience)
 values
('001', 'Hichki', 'Hindi','Drama/Comedy', 'U/A'),
('002', 'Pacific Rim Uprising',  'English','Fantasy/SciFi', 'U/A'),
('003', 'Strangers : Prey at night','English', 'Horror', 'U/A'),
('004', 'Tomb Raider', 'English','Fantasy/Action', 'A'),
('005', 'Midnight Sun', 'English','Romance','R'),
('006', 'Peter Rabbit','English', 'Fantasy/Adventure','U/A'),
('007', 'Black Panther','English', 'Fantasy/SciFi','U/A'),
('008', 'Maze Runner: The Death Cure','English', 'Fantasy/SciFi','U/A'),
('009', 'Insidious: The Last Key','English', 'Horror','U/A'),
('010', 'Blackmail','Hindi', 'Comedy','U/A'),
('011', 'Parmanu: The Story of Pokhran','Hindi', 'Drama/Thriller','U/A'),
('012', '3 Storeys','Hindi', 'Drama','U/A'),
('013', 'Rajaratha','Tamil', 'Comedy','U/A'),
('014', 'Yogi Duniya','Tamil', 'Drama/Thriller','U/A'),
('015', 'Kurukshetra','Tamil', 'Fantasy/History','U/A'),
('016', 'Mersal','Tamil', 'Romance/Comedy','U/A');

-- INSERT VALUES SHOWS
insert into Shows(Show_ID, Show_Time, Show_Date, Seats_Remaining_Gold, Seats_Remaining_Silver, Class_Cost_Gold, Class_Cost_Silver, Screen_ID, Movie_ID)
values
('SHT0110001', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T011', '001'),
('SHT0120001', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T012', '002'),
('SHT0130001', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T013', '003'),
('SHT0140001', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T014', '004'),
('SHT0210001', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T021', '005'),
('SHT0220001', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T022', '006'),
('SHT0230001', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T023', '007'),
('SHT0240001', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T024', '008'),
('SHT0310001', '09:00:00', '2018/4/4', 20, 50, 425, 350, 'T031', '009'),
('SHT0320001', '09:00:00', '2018/4/4', 20, 50, 425, 350, 'T032', '010'),
('SHT0330001', '09:00:00', '2018/4/4', 20, 50, 425, 350, 'T033', '011'),
('SHT0110002', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T011', '012'),
('SHT0120002', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T012', '013'),
('SHT0130002', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T013', '014'),
('SHT0140002', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T014', '015'),
('SHT0210002', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T021', '016'),
('SHT0220002', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T022', '001'),
('SHT0230002', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T023', '002'),
('SHT0240002', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T024', '003'),
('SHT0310002', '16:20:00', '2018/4/4', 20, 50, 425, 350, 'T031', '004'),
('SHT0320002', '16:20:00', '2018/4/4', 20, 50, 425, 350, 'T032', '005'),
('SHT0330002', '16:20:00', '2018/4/4', 20, 50, 425, 350, 'T033', '006'),
('SHT0110003', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T011', '007'),
('SHT0120003', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T012', '008'),
('SHT0130003', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T013', '009'),
('SHT0140003', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T014', '010'),
('SHT0210003', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T021', '011'),
('SHT0220003', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T022', '012'),
('SHT0230003', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T023', '013'),
('SHT0240003', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T024', '014'),
('SHT0310003', '19:30:00', '2018/4/4', 20, 50, 425, 350, 'T031', '015'),
('SHT0320003', '19:30:00', '2018/4/4', 20, 50, 425, 350, 'T032', '016'),
('SHT0330003', '19:30:00', '2018/4/4', 20, 50, 425, 350, 'T033', '001'),
('SHT0110004', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T011', '002'),
('SHT0120004', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T012', '003'),
('SHT0130004', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T013', '004'),
('SHT0140004', '09:00:00', '2018/4/4', 20, 60, 400, 350, 'T014', '005'),
('SHT0210004', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T021', '006'),
('SHT0220004', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T022', '007'),
('SHT0230004', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T023', '008'),
('SHT0240004', '09:00:00', '2018/4/4', 22, 64, 395, 325, 'T024', '009'),
('SHT0310004', '09:00:00', '2018/4/4', 20, 50, 425, 350, 'T031', '010'),
('SHT0320004', '09:00:00', '2018/4/4', 20, 50, 425, 350, 'T032', '011'),
('SHT0330004', '09:00:00', '2018/4/4', 20, 50, 425, 350, 'T033', '012'),
('SHT0110005', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T011', '013'),
('SHT0120005', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T012', '014'),
('SHT0130005', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T013', '015'),
('SHT0140005', '16:20:00', '2018/4/4', 20, 60, 400, 350, 'T014', '016'),
('SHT0210005', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T021', '001'),
('SHT0220005', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T022', '002'),
('SHT0230005', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T023', '003'),
('SHT0240005', '16:20:00', '2018/4/4', 22, 64, 395, 325, 'T024', '004'),
('SHT0310005', '16:20:00', '2018/4/4', 20, 50, 425, 350, 'T031', '005'),
('SHT0320005', '16:20:00', '2018/4/4', 20, 50, 425, 350, 'T032', '006'),
('SHT0330005', '16:20:00', '2018/4/4', 20, 50, 425, 350, 'T033', '007'),
('SHT0110006', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T011', '008'),
('SHT0120006', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T012', '009'),
('SHT0130006', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T013', '010'),
('SHT0140006', '19:30:00', '2018/4/4', 20, 60, 400, 350, 'T014', '011'),
('SHT0210006', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T021', '012'),
('SHT0220006', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T022', '013'),
('SHT0230006', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T023', '014'),
('SHT0240006', '19:30:00', '2018/4/4', 22, 64, 395, 325, 'T024', '015'),
('SHT0310006', '19:30:00', '2018/4/4', 20, 50, 425, 350, 'T031', '016'),
('SHT0320006', '19:30:00', '2018/4/4', 20, 50, 425, 350, 'T032', '001'),
('SHT0330006', '19:30:00', '2018/4/4', 20, 50, 425, 350, 'T033', '002'),
('SHT0110007', '09:00:00', '2018/4/5', 20, 60, 400, 350, 'T011', '003'),
('SHT0120007', '09:00:00', '2018/4/5', 20, 60, 400, 350, 'T012', '004'),
('SHT0130007', '09:00:00', '2018/4/5', 20, 60, 400, 350, 'T013', '005'),
('SHT0140007', '09:00:00', '2018/4/5', 20, 60, 400, 350, 'T014', '006'),
('SHT0210007', '09:00:00', '2018/4/5', 22, 64, 395, 325, 'T021', '007'),
('SHT0220007', '09:00:00', '2018/4/5', 22, 64, 395, 325, 'T022', '008'),
('SHT0230007', '09:00:00', '2018/4/5', 22, 64, 395, 325, 'T023', '009'),
('SHT0240007', '09:00:00', '2018/4/5', 22, 64, 395, 325, 'T024', '010'),
('SHT0310007', '09:00:00', '2018/4/5', 20, 50, 425, 350, 'T031', '011'),
('SHT0320007', '09:00:00', '2018/4/5', 20, 50, 425, 350, 'T032', '012'),
('SHT0330007', '09:00:00', '2018/4/5', 20, 50, 425, 350, 'T033', '013'),
('SHT0110008', '16:20:00', '2018/4/6', 20, 60, 400, 350, 'T011', '014'),
('SHT0120008', '16:20:00', '2018/4/6', 20, 60, 400, 350, 'T012', '015'),
('SHT0130008', '16:20:00', '2018/4/6', 20, 60, 400, 350, 'T013', '016'),
('SHT0140008', '16:20:00', '2018/4/6', 20, 60, 400, 350, 'T014', '001'),
('SHT0210008', '16:20:00', '2018/4/6', 22, 64, 395, 325, 'T021', '002'),
('SHT0220008', '16:20:00', '2018/4/6', 22, 64, 395, 325, 'T022', '003'),
('SHT0230008', '16:20:00', '2018/4/6', 22, 64, 395, 325, 'T023', '004'),
('SHT0240008', '16:20:00', '2018/4/6', 22, 64, 395, 325, 'T024', '005'),
('SHT0310008', '16:20:00', '2018/4/6', 20, 50, 425, 350, 'T031', '006'),
('SHT0320008', '16:20:00', '2018/4/6', 20, 50, 425, 350, 'T032', '007'),
('SHT0330008', '16:20:00', '2018/4/6', 20, 50, 425, 350, 'T033', '008'),
('SHT0110009', '19:30:00', '2018/4/6', 20, 60, 400, 350, 'T011', '009'),
('SHT0120009', '19:30:00', '2018/4/6', 20, 60, 400, 350, 'T012', '010'),
('SHT0130009', '19:30:00', '2018/4/6', 20, 60, 400, 350, 'T013', '011'),
('SHT0140009', '19:30:00', '2018/4/6', 20, 60, 400, 350, 'T014', '012'),
('SHT0210009', '19:30:00', '2018/4/6', 22, 64, 395, 325, 'T021', '013'),
('SHT0220009', '19:30:00', '2018/4/6', 22, 64, 395, 325, 'T022', '014'),
('SHT0230009', '19:30:00', '2018/4/6', 22, 64, 395, 325, 'T023', '015'),
('SHT0240009', '19:30:00', '2018/4/6', 22, 64, 395, 325, 'T024', '016'),
('SHT0310009', '19:30:00', '2018/4/6', 20, 50, 425, 350, 'T031', '001'),
('SHT0320009', '19:30:00', '2018/4/6', 20, 50, 425, 350, 'T032', '002'),
('SHT0330009', '19:30:00', '2018/4/6', 20, 50, 425, 350, 'T033', '003');

-- INSERT VALUES BOOKING
INSERT into Booking(Booking_ID, No_of_Tickets, Total_Cost, Card_Number, Name_on_card, User_ID, Show_ID)
values
('BK12000000', 6, 2100, '3594888552401348', 'Janice Fernandes', 120, 'SHT0110001'),
('BK10100001', 5, 1750, '4600867746277489', 'Raghav Seth', 101, 'SHT0110001'),
('BK10700002', 6, 2100, '5558062060974207', 'Komal Agarwal', 107, 'SHT0110001'),
('BK10500003', 3, 1050, '1715568540234971', 'Ajay Kumar', 105, 'SHT0110001'),
('BK11600004', 1, 350, '5396417845824659', 'Mona Mohammed', 116, 'SHT0110001'),
('BK10600005', 5, 1800, '6700075718329514', 'Vikram Joshi', 106, 'SHT0110001');

-- INSERT VALUES TICKET
INSERT into Ticket(Ticket_ID, Booking_ID, Class, Price)
values
('S0060SHT0110001', 'BK12000000', 'SLV',  350),
('S0059SHT0110001', 'BK12000000', 'SLV',  350),
('S0058SHT0110001', 'BK12000000', 'SLV',  350),
('S0057SHT0110001', 'BK12000000', 'SLV',  350),
('S0056SHT0110001', 'BK12000000', 'SLV',  350),
('S0055SHT0110001', 'BK12000000', 'SLV',  350),
('S0054SHT0110001', 'BK10100001', 'SLV',  350),
('S0053SHT0110001', 'BK10100001', 'SLV',  350),
('S0052SHT0110001', 'BK10100001', 'SLV',  350),
('S0051SHT0110001', 'BK10100001', 'SLV',  350),
('S0050SHT0110001', 'BK10100001', 'SLV',  350),
('S0049SHT0110001', 'BK10700002', 'SLV',  350),
('S0048SHT0110001', 'BK10700002', 'SLV',  350),
('S0047SHT0110001', 'BK10700002', 'SLV',  350),
('S0046SHT0110001', 'BK10700002', 'SLV',  350),
('S0045SHT0110001', 'BK10700002', 'SLV',  350),
('S0044SHT0110001', 'BK10700002', 'SLV',  350),
('S0043SHT0110001', 'BK10500003', 'SLV',  350),
('S0042SHT0110001', 'BK10500003', 'SLV',  350),
('S0041SHT0110001', 'BK10500003', 'SLV',  350),
('S0040SHT0110001', 'BK11600004', 'SLV',  350),
('G0020SHT0110001', 'BK10600005', 'GLD',  400),
('S0039SHT0110001', 'BK10600005', 'SLV',  350),
('S0038SHT0110001', 'BK10600005', 'SLV',  350),
('S0037SHT0110001', 'BK10600005', 'SLV',  350),
('S0036SHT0110001', 'BK10600005', 'SLV',  350);

-- Query #1 = CREATE A STORED PROCEDURE TO DISPLAY ALL MOVIES AVAILABLE IN THE SYSTEM
DELIMITER //
CREATE PROCEDURE get_all_movies()
BEGIN
    SELECT * FROM movie;
END //
DELIMITER ;
call get_all_movies();

-- Query #2 = CREATE A STORED PROCEDURE TO LIST ALL THEATRES AND THEIR LOCATIONS
DELIMITER //
CREATE PROCEDURE get_all_theatres()
BEGIN
    SELECT Name_of_Theatre, Area FROM Theatre;
END //
DELIMITER ;
call get_all_theatres();

-- Query #3 = CREATE A STORED PROCEDURE TO DISPLAY ALL UPCOMING SHOWS WITH DATE AND TIME
DELIMITER //
CREATE PROCEDURE get_all_upcoming_shows()
BEGIN
    SELECT Show_Time, Show_Date from shows;
END //
DELIMITER ;
call get_all_upcoming_shows();

-- Query #4 = CREATE A STORED PROCEDURE TO SHOW ALL BOOKED TICKETS
DELIMITER //
CREATE PROCEDURE get_all_bookings()
BEGIN
    SELECT * FROM Booking;
END //
DELIMITER ;
call get_all_bookings();

-- Query #5 = CREATE A STORED PROCEDURE TO SHOW TOTAL NUMBER OF USERS REGISTERED
DELIMITER //
CREATE PROCEDURE get_total_users()
BEGIN
    SELECT COUNT(*) AS total_users FROM Web_user;
END //
DELIMITER ;
call get_total_users();

-- Query #6 = CREATE A STORED PROCEDURE TO GET DETAILS OF A MOVIE BY MOVIE ID
DELIMITER //
CREATE PROCEDURE get_movie_by_id(IN m_id INT)
BEGIN
    SELECT * FROM Movie WHERE Movie_ID = m_id;
END //
DELIMITER ;
call get_movie_by_id(001);

-- Query #7 = CREATE A STORED PROCEDURE TO FETCH ALL SCREEN IN A SPECIFIC THEATRE
DELIMITER //
CREATE PROCEDURE get_screen_by_theatre(IN t_id varchar(5))
BEGIN
    SELECT * FROM Screen WHERE Theatre_ID = t_id;
END //
DELIMITER ;
call get_screen_by_theatre('T01');

-- Query #8 = CREATE A STORED PROCEDURE TO FETCH BOOKING DETAILS FOR A PARTICULAR USER
DELIMITER //
CREATE PROCEDURE get_bookings_by_user(IN u_id varchar(5))
BEGIN
    SELECT * FROM Booking WHERE User_ID = u_id;
END //
DELIMITER ;
call get_bookings_by_user(120);

-- Query #9 = CREATE A STORED PROCEDURE TO PROCEDURE TO INSERT A NEW MOVIE
DELIMITER //
CREATE PROCEDURE insert_new_movie(
    IN m_id VARCHAR(5),
    IN m_name VARCHAR(30),
    IN m_lang VARCHAR(30),
    IN m_genre VARCHAR(20),
    IN m_target VARCHAR(5)
)
BEGIN
    INSERT INTO Movie (Movie_ID, Name, Language, Genre, Target_Audience)
    VALUES (m_id,m_name,m_lang,m_genre,m_target);
END //
DELIMITER ;
Call insert_new_movie('017','Leo','Tamil','Action/Thriller','U/A');
select * from movie;

-- Query #10 = CREATE A STORED PROCEDURE TO DELETE A USER BY ID
DELIMITER //
CREATE PROCEDURE delete_user(IN u_id VARCHAR(5))
BEGIN
    DELETE FROM web_user WHERE Web_User_ID = u_id;
END //
DELIMITER ;
call delete_user('100');
select * from web_user;



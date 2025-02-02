USE Dekanat
GO

CREATE TABLE Groups
(
	GroupName nchar(10) NOT NULL, --PK--
	Faculty nchar(30) NULL, --TABLE OR ENUM???--
	StartDate date NULL,
	StudentsQuantity int NULL, --COMPUTED???--
	CONSTRAINT PK_Groups PRIMARY KEY (GroupName)
)  
GO

CREATE TABLE Students
(
	RecordBookNumber bigint NOT NULL, --PK--
	FirstName nchar(20) NULL,
	SecondName nchar(30) NULL,
	DateOfBirth datetime NOT NULL,
	PhoneNumber bigint NULL,
	GroupName nchar(10) NULL, --FK--
	CONSTRAINT PK_Students PRIMARY KEY (RecordBookNumber)
)
GO

--CREATE TABLE Subjects
--(
--	SubjectNumber tinyint NOT NULL, --PK
--	SubjectName nchar(20) NOT NULL,
--)
--GO

CREATE TABLE Topics
(
	TopicNumber smallint NOT NULL,
	TopicName nchar(50) NOT NULL,
	Comment varchar(150) NULL,
	LessonsQuantity tinyint NOT NULL 
	CONSTRAINT PK_Topics PRIMARY KEY (TopicNumber)
)
GO

CREATE TABLE Teachers
(
	TeacherId smallint NOT NULL IDENTITY (10000,1), --PK
	FirstName nchar(20) NULL,
	SecondName nchar(30) NULL,
	DateOfBirth datetime NOT NULL,
	TeacherTitle tinyint,
	-- 1 - Assistant
	-- 2 - Teacher
	-- 3 - Senior Teacher
	-- 4 - Docent
	-- 5 - Professor
	CONSTRAINT PK_Teachers PRIMARY KEY (TeacherId),
)
GO

CREATE TABLE Schedule
(
	RecordId smallint IDENTITY (1,1), 
    DayNumber tinyint NOT NULL,
	WeekNumber tinyint NOT NULL,
	WeekType bit NOT NULL,
	--0 - Числитель
	--1 - Знаменатель
	TimeSlot tinyint NOT NULL,
	--1 - 8.00 - 9.20
	--2 - 9.30 - 11.00
	--3 - 11.20 - 12.40
	--4 - 12.50 - 14.10
	--5 - 14.20 - 15.40
	--6 - 15.50 - 17.10
	Subjects tinyint NOT NULL,
	-- 1 - Higher Maths
	-- 2 - Mashine Details
	-- 3 - Materials Theory
	-- 4 - Automobile Engines
	-- 5 - Special Transport
	-- 6 - English 
	-- ------ 
	TeacherId smallint NOT NULL,
	--------- Lesson Type ---------
	Lection bit NOT NULL DEFAULT 1,
	Practice bit NOT NULL DEFAULT 0,
	Test bit NOT NULL DEFAULT 0,
	Сolloquium bit NOT NULL DEFAULT 0,
	-------------------------------
	ClassRoomNumber smallint NOT NULL

	CONSTRAINT PK_Schedule PRIMARY KEY (RecordId),
	CONSTRAINT FK_Schedule FOREIGN KEY (TeacherId) REFERENCES Teachers (TeacherId)
		ON UPDATE CASCADE
		ON DELETE NO ACTION
)
GO

CREATE TABLE Journal
(
	Dates date NOT NULL,
	RecordBookNumber bigint NOT NULL,
	RecordId smallint NOT NULL,
	Presence bit NOT NULL,
	Mark tinyint NULL,
	TopicNumber smallint NOT NULL,
	Comment varchar(100) NULL,

	CONSTRAINT PK_Journal PRIMARY KEY (Dates, RecordBookNumber, RecordId),
	CONSTRAINT FK_Journal FOREIGN KEY (RecordBookNumber) REFERENCES Students(RecordBookNumber)
		ON UPDATE CASCADE
		ON DELETE NO ACTION, --DON'T DELETE STUDENT, IF HE/SHE HAS MARKS
	CONSTRAINT FK_TimeSlot_RecordId FOREIGN KEY (RecordId) REFERENCES Schedule (RecordId),
	CONSTRAINT FK_TopicNumber FOREIGN KEY (TopicNumber) REFERENCES Topics (TopicNumber)
)  
GO

--CREATE TABLE Days
--(
--DayNumber smallint NOT NULL, 
--1 - 365
--WeekNumber tinyint NOT NULL, 
--1 - 52
--WeekType bit NOT NULL, 
--0 - 1
--WorkDay bit NOT NULL, 
--0 - NO, 1- YES
--)
--GO



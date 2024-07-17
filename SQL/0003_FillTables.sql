USE Dekanat
GO

INSERT INTO [dbo].[Groups]
           ([GroupName]
           ,[Faculty]
           ,[StartDate]
           ,[StudentsQuantity])
     VALUES
           ('AMG08-1',
           'Mashinebuilding',
           '2008-09-01',
           25),

		   ('AMG08-2',
           'Mashinebuilding',
           '2008-09-01',
           25)
GO

INSERT INTO [dbo].[Students]
           ([RecordBookNumber]
           ,[FirstName]
           ,[SecondName]
           ,[DateOfBirth]
           ,[PhoneNumber]
           ,[GroupName])
     VALUES
           (2022078,
           N'Magnus',
           N'Walker',
		   '1956-06-07',
			80991234560,
           'AMG08-1'),

		   (2022100,
           N'Akira',
           N'Nakai',
		   '1970-01-07',
			80991234560,
           'AMG08-1'),

		   (2022000,
           N'John',
           N'Chevrolet',
		   '1955-02-11',
			80991234560,
           'AMG08-2')
GO

--INSERT INTO [dbo].[Subjects]
--           ([SubjectNumber]
--           ,[SubjectName])
--     VALUES
--           (123, 
--           'Higher Math'),

--		   (125,
--		   'Mashine Details')
--GO

INSERT INTO [dbo].[Teachers]
           ([FirstName]
           ,[SecondName]
           ,[DateOfBirth]
           ,[TeacherTitle])
     VALUES
           ('Albert',
           'Einstein',
           '1880-01-25',
           5),
		   ('John',
           'Cena',
           '1970-02-01',
           3),
		   ('Master',
           'Yoda',
           '2200-12-12',
           5)
GO

INSERT INTO [dbo].[Schedule]
           ([DayNumber]
           ,[WeekNumber]
           ,[WeekType]
           ,[TimeSlot]
           ,[Subjects]
           ,[TeacherId]
           ,[Lection]
           ,[Practice]
           ,[Test]
           ,[Ñolloquium]
           ,[ClassRoomNumber])
     VALUES
           (3,
           12,
           1,
           1,
           3,
           10000,
           0,
           1,
           0,
           0,
           101),

		  (3,
           12,
           1,
           2,
           1,
           10002,
           1,
           0,
           0,
           0,
           206)
GO

INSERT INTO [dbo].[Topics]
           ([TopicNumber]
           ,[TopicName]
           ,[Comment]
           ,[LessonsQuantity])
     VALUES
           (12,
           'Otto combustion cycle',
           NULL,
           2),

		   (110,
           'Present Perfect',
           'Grammar',
           3),

		   (201,
           'Gears and gears types',
           NULL,
           1)
GO

INSERT INTO [dbo].[Journal]
           ([Dates]
           ,[RecordBookNumber]
           ,[RecordId]
           ,[Presence]
           ,[Mark]
           ,[TopicNumber]
           ,[Comment])
     VALUES
           ('2008-09-01',
           2022078,
           1,
           1,
           5,
           12,
           'Good job'),

		   ('2008-09-01',
           2022100,
           2,
           0,
           NULL,
           12,
           NULL),

		   ('2008-09-01',
           2022000,
           1,
           1,
           NULL,
           12,
           NULL)
GO

USE Dekanat
GO

 -- DELETE --
  DELETE FROM Students;

  DELETE FROM Groups
  --WHERE GroupName = 'AMG08-1';

  DELETE FROM Journal

  DELETE FROM Subjects

  DELETE FROM Schedule
  
  -- DROP --
  DROP TABLE Groups;
  GO

  DROP TABLE Students;
  GO

  DROP TABLE Journal;
  GO

  DROP TABLE Subjects
  GO

  DROP TABLE Schedule
  GO

  DROP TABLE Teachers
  GO

  DROP TABLE Topics
  GO

  -- DROP DB --
  DROP DATABASE Dekanat
  GO
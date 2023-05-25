USE "Yor are Table Name"
GO
CREATE TABLE Teacher (
  Teacher_ID int PRIMARY KEY,
  Name varchar(255) UNIQUE,
  Created_at datetime
);
GO
CREATE TABLE Student (
  Student_ID int PRIMARY KEY,
  Name varchar(255)  UNIQUE,
  Created_at datetime
);
GO
CREATE TABLE Classroom (
  Classroom_ID int PRIMARY KEY,
  Capacity int
);
GO

CREATE TABLE Course (
  Course_ID int PRIMARY KEY,
  Name varchar(255) UNIQUE,
  Teacher varchar(255),
  Classroom int,
  Enrolled_Capacity int,
  FOREIGN KEY (Teacher) REFERENCES Teacher(Name),
  FOREIGN KEY (Classroom) REFERENCES Classroom(Classroom_ID)
);

CREATE TABLE Student_Course (
  Student varchar(255),
  Course varchar(255),
  FOREIGN KEY (Student) REFERENCES Student(Name),
  FOREIGN KEY (Course) REFERENCES Course(Name)
);


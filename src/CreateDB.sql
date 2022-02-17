use TeacherWorkloadControl;
go

create table Subjects
(
Id int identity primary key,
Name nvarchar(20) not null,
);

create table Groups
(
Id int identity primary key,
Name nvarchar(10) not null
);

create table Teachers
(
Id int identity primary key,
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
MiddleName nvarchar(30)
);

create table Teacher_Subject
(
Id int identity primary key,
TeacherID int foreign key references Teachers(Id),
GroupID int foreign key references Groups(Id),
SubjectID int foreign key references Subjects(Id)
);

create table DayOfTheWeek
(
Id int identity primary key,
Name nvarchar(12) not null
);

create table Schedule
(
ID_Teacher_Subject int foreign key references Teacher_Subject(Id) not null,
ID_Day int foreign key references DayOfTheWeek(Id) not null,
Lesson_number int,
)
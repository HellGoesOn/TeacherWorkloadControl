use TeacherWorkloadControl;
go

create table Subjects
(
Id int identity primary key,
Name nvarchar(30) not null,
);

create table Groups
(
Id int identity primary key,
Name nvarchar(10) not null
);

create table Teachers
(
Id int identity primary key,
FullName nvarchar(60) not null,
);

create table Teacher_Subject
(
Id int identity primary key,
TeacherID int foreign key references Teachers(Id),
GroupID int foreign key references Groups(Id),
SubjectID int foreign key references Subjects(Id)
);

create table Schedule
(
Id int identity primary key,
ID_Teacher_Subject int foreign key references Teacher_Subject(Id) not null,
[Day] DateTime not null
)
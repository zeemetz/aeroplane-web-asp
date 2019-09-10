/*
create database projectCUPU1
go
use projectCUPU1
*/

create table plane
(
	PlaneID			int primary key identity,
	PlaneName		varchar(50),
	PlaneType		varchar(20),
	EngineType		varchar(20),
	NumberOfEngine	int,
	PlaneImage		varchar(20)
)

create table comment
(
	CommentID int primary key identity,
	PlaneID int references plane,
	Username varchar(100),
	CommentBody varchar(1000)
)

--data dummy
insert into plane values('Aircraft001','Passenger Aircraft', 'Turbofan', 3, 'assets/1.jpg')
insert into comment values(1,'testong','Good and Perfect')

select * from comment
create database aaa
use AAa
create table studd(id int primary key identity, sname varchar(30), 
email varchar(max),mobile bigint)

create table sdaa(id int primary key identity,
city varchar (20), address varchar(max),
Student_id int constraint SK_ foreign key references STUDD(id))

select * from studd
select * from sdaa

create Proc SP_Sttudent

(@action varchar(30),
@id int =0,
@sname varchar (20)=null,
@email varchar (max)=null,
@mobile bigint = 0)
as 
begin
if(@action = 'CREATE')
BEGIN
	INSERT INTO studd(sname,email,mobile) values
	(@sname,@email,@mobile)
	select 1 as result
end
else if(@action =  'UPDATE')
begin
	update studd set sname=@sname,email=@email,mobile=@mobile
	select 1 as result
end
else if(@action = 'DELETE')
BEGIN
	DELETE FROM studd WHERE ID=@id
	select 1 as result
end
ELSE IF(@action = 'INNER JOIN')
begin
	select *from studd as student inner join sdaa as student_data on student.id=student_data.Student_id
	select 1 as result
end
end
select * from studd
select * from sdaa

exec SP_Sttudent 'create',0,'SHikha','shikha@gmail.com',676845
exec SP_Sttudent 'create',0,'ankit','ankit@gmail.com',6845
exec SP_Sttudent 'create',0,'anchal','anchal@gmail.com',45
exec SP_Sttudent 'create',0,'subham','subham@gmail.com',46845
exec SP_Sttudent 'create',0,'shashi','shashi@gmail.com',16845


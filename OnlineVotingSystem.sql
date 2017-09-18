use Ravi

create table tbl_UserLogin_Group2 
(Id int identity(1,1) primary key, Name varchar(30), UserName varchar(20), Passsword varchar(20), Typee varchar(20), Vote varchar(20));
--insert into tbl_UserLogin_Group2 values('ranjan ojha', 'ranjan' ,'1234', 'admin', 'false')
---------------------------------------------------
create table tbl_CandidateRegistration_Group2(
ID int identity(1,1) not null,
Name varchar (200)not null,
Age varchar(max),
Employment varchar(max),
AnnualIncome varchar(max),
Party varchar(max)not null,
Area varchar(max)
CONSTRAINT pk_PersonID Primary key(ID,Name));
----------------------------------------------------
create table tbl_VotingCount_Group2
(
ID int identity (1,1),
CandidateName varchar(max),
Votes int
)
-----------------------------------------------------
go
alter procedure proc_Voting(@CandidateName varchar(max),@result int out)
as
begin
 set @result =0
 declare @VoteCount int
 set @VoteCount = (select Votes from tbl_VotingCount_Group2 where CandidateName=@CandidateName)
 print '@VoteCount first'+CAST(@VoteCount AS VARCHAR)
 set @VoteCount = @VoteCount+1
 print '@VoteCount after adding' + CAST(@VoteCount AS VARCHAR)
 update tbl_VotingCount_Group2 set Votes = @VoteCount where CandidateName=@CandidateName
 set @result = 1
end
---------------------------------------------------------
go
create procedure proc_login(@UserName varchar(max),@Password varchar(max),@Typee varchar(max) out)
as
begin
declare @count int 
select @count= count(*) from tbl_UserLogin_Group2 where UserName=@UserName and Passsword=@Password
if(@count >= 1)
begin
select @Typee=Typee from tbl_UserLogin_Group2 where UserName=@UserName and Passsword=@Password
end 
else
Set @Typee='Not Found'
print @count
end
----------------------------------------------------------
go
create procedure proc_CandRegister(@CandidateName varchar(max))
as 
begin
insert into tbl_VotingCount_Group2 values (@CandidateName,0) ;
end
---------------------------------------------------------
--drop table tbl_UserLogin_Group2
--drop table tbl_CandidateRegistration_Group2
--drop table tbl_VotingCount_Group2
--truncate table tbl_UserLogin_Group2
--truncate table tbl_CandidateRegistration_Group2
--truncate table tbl_VotingCount_Group2
---------------------------------------------------------
select * from tbl_UserLogin_Group2
select * from tbl_CandidateRegistration_Group2
select * from tbl_VotingCount_Group2
---------------------------------------------------------
update tbl_UserLogin_Group2 set Vote = 'false' where Id = 2

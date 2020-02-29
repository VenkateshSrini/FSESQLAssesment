--1
CREATE View AllEmpD1
As
Select * from employee where deptid ='d1'

select * from AllEmpD1

--2

Create View ProjectView
As
Select projectid, projectname from Project

--3
Create View EmpployeProject
As
Select empid, firstname, lastname from employee
where empid in (select empno from workson where extract(year from enterdate)=1998 and extract(month from enterdate)>=6)

select * from EmpployeProject

--1
select empno from workson where projectid = 'p2' and empno<10000
--2
Select empno from workson where extract(year from enterdate)<>1998
--3
select empno from workson where (Lower(job) = 'analyst' or lower(job)='manager') and (projectid='p1')
--4
select empno from workson where (job is null) and (projectid='p2')
--5
select empid, firstname from employee where firstname similar to '%t{1,}%'
--6
select empid, firstname from employee where (firstname similar to '_(a|o)%') and (lastname similar to '%es')
--7
select empid from employee where deptid in (select deptid from department where locations='Seattle' )
--8
select firstname, lastname from employee where empid in (select empno from workson where enterdate ='1998.1.4')
--9
select deptid, deptname, locations from department group by locations, deptname, deptid
--10
select max(empid) from employee
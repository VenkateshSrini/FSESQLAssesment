INSERT INTO public.department(
	deptid, deptname, locations)
	VALUES ('d1', 'Res', 'Dallas');

	INSERT INTO public.department(
	deptid, deptname, locations)
	VALUES ('d2', 'Acc', 'Seattle');

	INSERT INTO public.department(
	deptid, deptname, locations)
	VALUES ('d3', 'Mar', 'Dallas');

    INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (25348, 'Mathew', 'Smith', 'd3');
	INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (10102, 'Ann', 'Jones', 'd3');
	INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (18316, 'John', 'Barrinor', 'd1');
	INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (29346, 'James', 'James', 'd2');
    INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (2581, 'Joe', 'Joe', 'd2');
      INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (9031, 'Joe1', 'Joe1', 'd1');
       INSERT INTO public.employee(
	empid, firstname, lastname, deptid)
	VALUES (28559, 'Joe2', 'Joe2', 'd3');

    INSERT INTO public.project(
	projectid, projectname, budget)
	VALUES ('p1', 'Apollo', 12000);
	INSERT INTO public.project(
	projectid, projectname, budget)
	VALUES ('p2', 'Gemini', 95000);
	INSERT INTO public.project(
	projectid, projectname, budget)
	VALUES ('p3', 'Mercury', 18560);

    INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (10102, 'p1', 'Analyst', '1997-10-1');
    INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (10102, 'p3', 'manager', '1997-1-1');
	INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (25348, 'p2', 'Clerk', '1998-2-15');
    INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (18316, 'p2', NULL, '1998-2-15');
    INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (29346, 'p2', NULL, '1997-12-15');
    INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (2581, 'p3', 'Analyst', '1998-10-15');
    	
	INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (9031, 'p1', 'Manager', '1998-4-15');
    
	INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (28559, 'p1', NULL, '1998-8-1');
    INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (28559, 'p2', 'Clerk', '1992-2-1');
	INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (9031, 'p3', 'Clerk', '1997-11-15');
	INSERT INTO public.workson(
	empno, projectid, job, enterdate)
	VALUES (29346, 'p1', 'Clerk', '1998-1-4');

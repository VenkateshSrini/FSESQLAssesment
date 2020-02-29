CREATE TABLE public.department
(
    deptid character(3) COLLATE pg_catalog."default" NOT NULL,
    deptname character varying(10) COLLATE pg_catalog."default" NOT NULL,
    locations character varying(30) COLLATE pg_catalog."default",
    CONSTRAINT department_pkey PRIMARY KEY (deptid)
)
CREATE TABLE public.employee
(
    empid integer NOT NULL,
    firstname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    lastname character varying(20) COLLATE pg_catalog."default" NOT NULL,
    deptid character(3) COLLATE pg_catalog."default",
    CONSTRAINT employee_pkey PRIMARY KEY (empid),
    CONSTRAINT employee_deptid_fkey FOREIGN KEY (deptid)
        REFERENCES public.department (deptid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE TABLE public.project
(
    projectid character varying(10) COLLATE pg_catalog."default" NOT NULL,
    projectname character varying(20) COLLATE pg_catalog."default",
    budget integer,
    CONSTRAINT project_pkey PRIMARY KEY (projectid)
)
CREATE TABLE public.workson
(
    empno integer NOT NULL,
    projectid character varying(10) COLLATE pg_catalog."default",
    job character varying(10) COLLATE pg_catalog."default",
    enterdate date
    
)
Alter table workson Add constraint empno_fkey Foreign key (empno)
References employee(empid)

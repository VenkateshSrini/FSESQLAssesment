--1
Create OR Replace function MyAgecal(bithdate timestamp) 
RETURNS int AS $ages$
DECLARE 
	ages INT;
BEGIN
Select extract (year from age(bithdate)) into ages;
RETURN ages;
END;
$ages$ LANGUAGE plpgsql;  
select MyAgecal('1978-04-03')
--2

CREATE SEQUENCE "Person_Id_seq"
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
drop table person
CREATE TABLE person
(
  P_Id integer NOT NULL DEFAULT nextval('public."Person_Id_seq"'::regclass),
  pname varchar(30),
  birthdate timestamp,
  currentAge int
)
select * from person

insert into person (pname,birthdate,currentAge) values ('venkat','1978-04-03',MyAgecal('1978-04-03'))

CREATE OR REPLACE PROCEDURE InsertPerson(paramname varchar(30), birthdate timestamp)
LANGUAGE plpgsql 
AS $$
insert into person (pname,birthdate,currentAge) values (paramname,birthdate,MyAgecal(birthdate));
$$;
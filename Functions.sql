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

--2.1
Alter table customers Add Primary key (customerid)
--2.2
ALter table orders add foreign key (customerid) references customers(customerid)
--2.3
Alter table orders add constraint quantity_check check (quantity>=1 and quantity <=30)
--3
Create Type WesternCountries as ENUM (
'CA',
'WA',
'OR',
'NM'
)
Create Table Region (
Country Varchar(30) not null,
City WesternCountries default 'CA')
--4
--Primary and foreign key
SELECT con.*
       FROM pg_catalog.pg_constraint con
            INNER JOIN pg_catalog.pg_class rel
                       ON rel.oid = con.conrelid
            INNER JOIN pg_catalog.pg_namespace nsp
                       ON nsp.oid = connamespace
       WHERE nsp.nspname = 'public'
             AND rel.relname in ('orders','customers');
           
-- 5. Ans) Becuase this is added as a foreign key in another table.
--6.1
Alter table orders drop constraint orders_customerid_fkey
Alter table orders drop constraint quantity_check
Alter table customers drop constraint customers_pkey


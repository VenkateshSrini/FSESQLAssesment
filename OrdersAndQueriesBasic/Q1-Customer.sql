-- Table: public.customers

-- DROP TABLE public.customers;

CREATE TABLE public.customers
(
  customerid character(5) NOT NULL,
  companyname character varying(40) NOT NULL,
  contactname character(30),
  address character varying(60),
  city character(15),
  phone character(24),
  fax character(24)
)
WITH (
  OIDS=FALSE
);

CREATE TABLE public.orders
(
  orderid integer NOT NULL,
  customerid character(5) NOT NULL,
  orderdate timestamp without time zone,
  shippeddate timestamp without time zone,
  freight money,
  shipname character varying(40),
  shipaddress character varying(60),
  quantity integer
)
WITH (
  OIDS=FALSE
);
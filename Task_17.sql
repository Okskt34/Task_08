CREATE TABLE public.employee
(
    id integer NOT NULL,
    name text NOT NULL,
    second_name text NOT NULL,
    salary integer NOT NULL,
    tax numeric GENERATED ALWAYS AS (salary * 0.15) STORED,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.employee
    OWNER to postgres;


INSERT INTO public.employee(
	id, name, second_name, salary, tax)
	VALUES (?, ?, ?, ?, ?);


SELECT * from employee

--1

SELECT count(vacancy) FROM employee

--2

SELECT AVG(salary), COUNT(vacancy) FROM employee WHERE department = 90

--3 

SELECT COUNT(vacancy), vacancy FROM employee GROUP BY vacancy

--4 

SELECT name, second_name, department FROM employee

--5

SELECT name, second_name, vacancy, department FROM employee WHERE location = 'London'



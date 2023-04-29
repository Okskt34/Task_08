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

SELECT * from employee ORDER BY name;

SELECT * from employee ORDER BY name DESC - убыванию

--2

SELECT name, second_name, salary, salary * 0.25 as t from employee;

SELECT name, second_name, salary, tax FROM employee

--3

SELECT sum(salary) FROM employee;

--4

SELECT min(salary) FROM employee

SELECT max(salary) FROM employee

SELECT * FROM employee ORDER BY salary LIMIT 1;

SELECT * FROM employee ORDER BY salary DESC LIMIT 1;

--5

SELECT AVG(salary), count(id) FROM employee;

SELECT * FROM employee WHERE id = 1 OR id  = 2
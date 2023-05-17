-- Part One (1)  ** Antonio doesn't exist and i changed it to Viktor. **

SELECT *
FROM employee
WHERE firstname = 'Viktor';


UPDATE employee
SET firstname = 'Marko'
WHERE firstname = 'Viktor';

-- Part One (2)

SELECT *
FROM employee
WHERE DateOfBirth > '1979-01-01';

-- Part One (3)

SELECT *
FROM employee
WHERE gender = 'M';

-- Part One (4)

SELECT *
FROM employee
WHERE lastname LIKE 'T%';

-- Part One (5) 

SELECT * 
FROM employee
WHERE hiredate BETWEEN '01-01-1988' and '01-31-1988';

-- Part One (6) 

SELECT *
FROM employee
WHERE lastname LIKE 'J%' AND hiredate BETWEEN '1988-01-01' AND '1988-01-31';


-- Part Two (1)

SELECT *
FROM employee
WHERE firstname = 'Antonio'
ORDER BY lastname;

-- Part Two (2)

SELECT *
FROM employee
ORDER BY firstname;

-- Part Two (3)

SELECT * 
FROM employee
ORDER BY hiredate DESC;

-- Part Three (1)

SELECT region 
FROM businessentity
UNION ALL
SELECT regionname 
FROM customer;


-- Part Three (2)

SELECT region 
FROM businessentity
UNION 
SELECT regionname 
FROM customer;

-- Part Three (3)

SELECT region 
FROM businessentity
INTERSECT 
SELECT regionname 
FROM customer;

-- Part Four (1)

SELECT * FROM "Order";

ALTER TABLE IF EXISTS "Order"
ADD CONSTRAINT order_date_check 
CHECK (OrderDate >= DATE '2010-01-01');

-- Part Four (2) ** Im getting errors. **

SELECT * FROM Product;

ALTER TABLE Product
ADD CONSTRAINT check_price_cost 
CHECK (price >= cost * 1.2);

ALTER TABLE Product
ADD CONSTRAINT unique_description 
UNIQUE (Description); 


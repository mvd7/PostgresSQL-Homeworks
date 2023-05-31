-- 3 ************************************************

SELECT facid, name, membercost, monthlymaintenance
FROM facilities
WHERE membercost < monthlymaintenance / 50;


-- 4. How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.

SELECT * FROM facilities
WHERE facid in (1, 5);


-- 5 ************************************************

SELECT joindate
FROM members
ORDER BY joindate DESC
LIMIT 1;



-- 6 ************************************************

SELECT firstname, surname
FROM members
ORDER BY joindate DESC
LIMIT 3;



-- 7 ************************************************

SELECT facid,
SUM(slots)
FROM bookings
GROUP BY facid
ORDER BY facid;



-- 8 ************************************************

SELECT COUNT(DISTINCT memid) as MGT
FROM bookings;



-- 9 ************************************************

SELECT
memid, joindate, row_number () OVER (order by joindate) as row_num
FROM members
ORDER BY joindate;



-- 10 ************************************************

SELECT starttime
FROM bookings
INNER JOIN members AS mem
ON bookings.memid = mem.memid
WHERE mem.firstname = 'David' AND mem.surname = 'Farrell';



-- 11 ************************************************

SELECT starttime, fac.name
FROM bookings AS book
INNER JOIN facilities AS fac
ON book.facid = fac.facid
WHERE fac.name LIKE '%Tennis Court%'
AND book.starttime::date = '2012-09-21'
ORDER BY book.starttime;



-- 12 ************************************************

SELECT DISTINCT memOne.
* FROM members AS memOne
INNER JOIN members AS memTwo
ON memOne.memid = memTwo.recommendedby
ORDER BY surname, firstname;
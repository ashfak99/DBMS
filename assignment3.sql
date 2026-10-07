-- QUESTION 1
SELECT fname FROM cust WHERE fname LIKE '_a%';

-- QUESTION 2
SELECT lname FROM cust WHERE lname LIKE 's%' or lname LIKE 'j%';

-- QUESTION 3
SELECT * FROM cust WHERE area LIKE '_a%';

-- QUESTION 4
SELECT * FROM cust WHERE area='da' OR area='mu' OR area='gh';

-- QUESTION 5
SELECT * FROM cust WHERE phone_no>5550000;

-- QUESTION 6
SELECT * FROM invoice WHERE issue_date LIKE '%-09-%';

-- QUESTION 7
SELECT * FROM invoice WHERE cust_id='a01' OR cust_id='a02';

-- QUESTION 8
SELECT * FROM movie WHERE type='action' OR type='comedy';

-- QUESTION 9
SELECT * FROM movie WHERE price>150 AND price<=200;

-- QUESTION 10 & 11
SELECT mv_no, title, type, star, price, price*15 as new_cost FROM movie WHERE price>150;

-- QUESTION 12
SELECT * FROM movie ORDER BY title;

-- QUESTION 13
SELECT title, type FROM movie WHERE type!='Horror';

-- QUESTION 14
SELECT price/(price-100) as cost FROM movie WHERE title='Home alone';

-- QUESTION 15
SELECT fname, lname, area, cust_id FROM cust WHERE phone_no IS NULL;

-- QUESTION 16
SELECT fname, lname FROM cust WHERE lname IS NULL OR lname='';

-- QUESTION 17
SELECT mv_no, title, type FROM movie WHERE star LIKE 'm%';


-- QUESTION 18
SELECT mv_no, inv_no FROM invoice WHERE inv_no<'i05';
-- Question 1
SELECT fname, lname FROM cust;


-- Question 2
SELECT * FROM cust;


-- Question 3
SELECT fname, area FROM cust;


-- Question 4
SELECT DISTINCT type FROM movie;

-- Question 5 (a)
SELECT cust_id, inv_no, mv_no FROM invoice;

-- Question 5 (b)
SELECT cust_id,mv_no,issue_date,return_date FROM invoice;

-- Question 6
UPDATE cust SET phone_no=466389 WHERE fname='Pramada';
SELECT * FROM cust WHERE fname='Pramada';

-- Question 7
UPDATE invoice SET issue_date='1993-04-24' WHERE cust_id='a01';
SELECT * FROM invoice WHERE cust_id='a01';

-- Question 8
UPDATE movie SET price=250.00 WHERE title="Gone with the wind";
SELECT * FROM movie WHERE title="Gone With the wind";

-- i08 9 a01 1993-04-24 1993-08-14

--Question 9
DELETE FROM invoice WHERE inv_no='i08';


-- Question 10
DELETE FROM invoice WHERE return_date<'1993-07-10';
SELECT * FROM invoice WHERE return_date<'1993-07-10';


-- Question 11
INSERT INTO invoice VALUES('i08','9','a01','1993-04-24','1993-08-14');
UPDATE invoice SET return_date='1993-08-16' WHERE inv_no='i08';
SELECT * FROM invoice WHERE inv_no='i08';


-- Question 13
UPDATE cust SET area='vs' WHERE cust_id='a05';
SELECT * FROM cust WHERE cust_id='a05';
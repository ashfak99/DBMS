-- QUESTION 1

-- METHOD 1
-- ALTER TABLE movie ADD price_root DECIMAL(8,2);
-- UPDATE movie SET price_root = SQRT(price);
-- METHOD 2
ALTER TABLE movie ADD price_root DECIMAL(8,2) GENERATED ALWAYS AS (SQRT(price)) STORED;
SELECT * from movie;


----- QUESTION 2
SELECT COUNT(*) FROM cust;


-- QUESTION 3
SELECT SUM(price) FROM movie;


-- QUESTION 4
SELECT AVG(price) FROM movie;


-- QUESTION 5
SELECT MAX(price) as max_price, MIN(price) as min_price FROM movie;


-- QUESTION 6
SELECT COUNT(*) from movie WHERE price >= 150;


-- QUESTION 7
SELECT type , AVG(price) FROM movie GROUP BY type;


-- QUESTION 8
SELECT type,COUNT(*) FROM movie GROUP BY type;


-- QUESTION 9
SELECT type, COUNT(*) FROM movie WHERE type='Comedy' OR type='Thriller' GROUP BY type;


-- QUESTION 10
SELECT type, AVG(price) FROM movie GROUP BY type HAVING MAX(price)=150.00;

-- QUESTION 11
SELECT type, AVG(price) FROM movie WHERE (type='Comedy' OR type='Thriller') AND price >= 150.00 GROUP BY type;


-- QUESTION 12
SELECT inv_no, DAYNAME(issue_date) FROM invoice;


-- QUESTION 13
SELECT inv_no , MONTHNAME(return_date) FROM invoice;


-- QUESTION 14
SELECT LOWER(DATE_FORMAT(issue_date + INTERVAL 15 DAY, '%d-%M-%Y')) as formatted_date from invoice;


-- QUESTION 15
SELECT DATEDIFF(CURDATE(), return_date) as days_elapsed FROM invoice;
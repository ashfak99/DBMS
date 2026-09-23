database: :memory:

-- QUESTION 1
CREATE TABLE cust(
    cust_id VARCHAR(3) PRIMARY KEY NOT NULL,
    lname VARCHAR(15),
    fname VARCHAR(15),
    area VARCHAR(2),
    phone_no BIGINT
);


CREATE TABLE movie(
    mv_no VARCHAR(2) PRIMARY KEY NOT NULL,
    title VARCHAR(25),
    type VARCHAR(10),
    star VARCHAR(25)
);

CREATE TABLE invoice(
    inv_no VARCHAR(3) PRIMARY KEY NOT NULL,
    mv_no VARCHAR(2),
    cust_id VARCHAR(3),
    issue_date DATE,
    return_date DATE
);


-- QUESTION 2
ALTER TABLE invoice ADD CONSTRAINT fk_inv_cust FOREIGN KEY (cust_id) REFERENCES cust(cust_id);

ALTER TABLE invoice ADD CONSTRAINT fk_inv_mv FOREIGN KEY (mv_no) REFERENCES movie(mv_no);

ALTER TABLE cust MODIFY fname VARCHAR(15) NOT NULL;

ALTER TABLE movie MODIFY title VARCHAR(25) NOT NULL, MODIFY type VARCHAR(10) NOT NULL;


-- QUESTION 3
ALTER TABLE movie ADD price DECIMAL(8,2);


-- QUESTION 4
  -- CUST TABLE DATA
INSERT INTO cust (cust_id, lname, fname, area, phone_no)
VALUES ('a01', 'Bayross', 'Ivan', 'sa', '61225467');

INSERT INTO cust (cust_id, lname, fname, area, phone_no)
VALUES ('a02', 'Saitwal', 'Vandana', 'mu', '5560379');

INSERT INTO cust (cust_id, lname, fname, area, phone_no)
VALUES ('a03', 'Jaguste', 'Pramada', 'da', '4563891');

INSERT INTO cust (cust_id, lname, fname, area, phone_no)
VALUES ('a04', 'Navindgi', 'Basu', 'ba', '6125401');

INSERT INTO cust (cust_id, lname, fname, area, phone_no)
VALUES ('a05', 'Sreedharan', 'Ravi', 'va', NULL);

INSERT INTO cust (cust_id, lname, fname, area, phone_no)
VALUES ('a06', NULL, 'Rukmini', 'gh', '5125274');

SELECT * FROM cust;


  --MOVIE TABLE DATA 
INSERT INTO movie (mv_no, title, type, star, price)
VALUES
(1, 'Vengeance bloody', 'Action', 'Jackie Chan', 180.05),
(2, 'The firm', 'Thriller', 'Tom Cruise', 200.00),
(3, 'Pretty woman', 'Romance', 'Richard Gere', 150.55),
(4, 'Home alone', 'Comedy', 'Macaulay Cullen', 150.00),
(5, 'The fugitive', 'Thriller', 'Harisson Ford', 200.00),
(6, 'Coma', 'Suspense', 'Michael Douglas', 100.00),
(7, 'Dracula', 'Horror', 'Gary Oldman', 150.25),
(8, 'Quick change', 'Comedy', 'Bill Murray', 100.00),
(9, 'Gone with the wind', 'Drama', 'Clarke Gable', 200.00),
(10, 'Carry on doctor', 'Comedy', 'Leslie Phillips', 100.00);

SELECT * FROM movie;


  --INVOICE TABLE DATA
INSERT INTO invoice (inv_no, mv_no, cust_id, issue_date, return_date)
VALUES
('i01', 4, 'a01', '1993-07-23', '1993-07-25'),
('i02', 3, 'a02', '1993-08-12', '1993-08-15'),
('i03', 1, 'a02', '1993-08-15', '1993-08-18'),
('i04', 6, 'a03', '1993-09-10', '1993-09-12'),
('i05', 7, 'a04', '1993-08-05', '1993-08-08'),
('i06', 2, 'a06', '1993-09-18', '1993-09-21'),
('i07', 9, 'a05', '1993-07-07', '1993-07-10'),
('i08', 9, 'a01', '1993-08-11', '1993-08-14'),
('i09', 5, 'a03', '1993-07-06', '1993-07-07'),
('i10', 8, 'a06', '1993-09-03', '1993-09-06');

SELECT * FROM invoice;

DELETE FROM invoice;
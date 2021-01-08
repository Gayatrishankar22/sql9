/******************************************************************************

                        Online SQLite Query Runner.
                Code, Compile, Run and Debug SQLite query online.
Write your query in this editor and press "Run" button to execute it.

*******************************************************************************/


/* Enter your sql queries here */
-- Expt9::Order by and Group by clause

-- 1.Create table employee with fields Code , name , dob , designation , salary  .
-- 2.Display code, name, and designation in descending order of the name.
-- 3.Create table deposit with fields baccno , branch_name , amount .
-- 4.	Give branch name and details of deposit table.

#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('ar69','sandeep','2000-02-22','CTO',190000.78),
('ku12','sona','2000-04-15','CEO',185000.78),
('sv13','Vismaya','1998-03-02','Clerk',59000.78),
('ask1','Abdul','1969-04-09','Auditor',59000.18);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'alapuzha',290000.25),
(1990002,'alapuzha',291233.22),
(1990003,'idukki',123570.1),
(1990004,'pala',2239083.78),
(1990005,'eranakulam',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;
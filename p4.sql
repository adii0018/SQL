-- Step 1: Database बनाओ
CREATE DATABASE Company;
USE Company;

-- Step 2: Employee table बनाओ
CREATE TABLE Employee (
    E_ID INT PRIMARY KEY,
    E_Name VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M','F')),
    Salary INT NOT NULL,
    Manager_ID INT NULL,
    Dept_ID INT NOT NULL
);

-- Step 3: Data insert करो
INSERT INTO Employee (E_ID, E_Name, Gender, Salary, Manager_ID, Dept_ID)
VALUES
(1, 'A', 'M', 8000, NULL, 101),
(2, 'B', 'M', 5000, 1, 101),
(3, 'C', 'F', 2000, 1, 10199),
(4, 'D', 'F', 2000, 2, 1024),
(5, 'E', 'M', 4000, 2, 102),
(6, 'F', 'M', 2000, 1, 103),
(7, 'G', 'F', 4500, 1, 1023),
(8, 'H', 'F', 3000, 1, 18044);

select * from Employee; 

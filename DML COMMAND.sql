CREATE TABLE Employeedetails_15thMay
(
EmployeeId INTEGER,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Salary INTEGER
)

INSERT INTO Employeedetails_15thMay(EmployeeID,FirstName,LastName,Salary)
VALUES(1,'Shreya','Pandey',100000)

INSERT INTO Employeedetails_15thMay(Salary,EmployeeID,LastName,FirstName)
VALUES(150000,2,'Kumar','Raj')

INSERT INTO Employeedetails_15thMay(EmployeeID,FirstName)
VALUES(3,'Raghav')

INSERT INTO Employeedetails_15thMay(EmployeeID,FirstName)
VALUES(4,'Rohit'),(5,'Ankit'),(6,'Sneha'),(7,'Muskan')

SELECT * FROM Employeedetails_15thMay

DELETE FROM Employeedetails_15thMay
WHERE EmployeeID = 3;


UPDATE Employeedetails_15thMay
SET EmployeeID = 3
WHERE EmployeeID = 1;

UPDATE EmployeeDetails_15thMay
SET EmployeeID = 1
WHERE FirstName = 'Shreya';

UPDATE Employeedetails_15thMay SET Salary = 150000 -----> updated everyone's salary as 150000

---> write a query to update salary value for employeeID 5 where new salary is 200000?

UPDATE Employeedetails_15thMay
SET Salary = 200000
WHERE EmployeeID = 5

UPDATE Employeedetails_15thMay
SET Salary = 200000
WHERE EmployeeID IN (3, 6)

DELETE FROM Employeedetails_15thMay
WHERE EmployeeID = 7

SELECT * FROM Employeedetails_15thMay


UPDATE EmployeeDetails_15thMay
SET LastName = CASE
    WHEN EmployeeID = 3 THEN 'Mishra'
    WHEN EmployeeID = 4 THEN 'Tripathi'
    WHEN EmployeeID = 5 THEN 'Gupta'
END
WHERE EmployeeID IN (3, 4, 5);

---> CASE allows you to assign different values for different rows.
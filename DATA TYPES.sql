----> Data Types

/*
There are 3 category in data type.
1) Numeric
2) String
3) Date
*/



/*

----> NUMERIC:
Under numeric category there are various data type.

1) TINYINT   ---THIS tinyint will take 1 byte memory
2) SMALLINT  --- this will take 2 byte of memory
3) INT       --- this will take 4 byte of memory
4) BIGINT    --- this will take 8 byte of memory
5) DECIMAL

----->  TINYINT
Range:- 0 to 255



*/


----> for eg:

CREATE TABLE Tinyint_28thMay
(
age TINYINT
)
INSERT INTO Tinyint_28thMay(age) VALUES(-100) ----ERROR
INSERT INTO Tinyint_28thMay(age) VALUES(28)
INSERT INTO Tinyint_28thMay(age) VALUES(266) -----ERROR
INSERT INTO Tinyint_28thMay(age) VALUES(0)
INSERT INTO Tinyint_28thMay(age) VALUES(255)

SELECT * FROM Tinyint_28thMay

----> SMALLINT

/*
Range: -32768 to 32767

*/

CREATE TABLE Smallint_15thMay
(
ID SMALLINT
)

INSERT INTO Smallint_15thMay(ID) VALUES(-32769) ---ERROR
INSERT INTO Smallint_15thMay(ID) VALUES(-32768)
INSERT INTO Smallint_15thMay(ID) VALUES(45678) ----ERROR
INSERT INTO Smallint_15thMay(ID) VALUES(32767)
INSERT INTO Smallint_15thMay(ID) VALUES(23675)

--- This error is known as arithmetic overflow of datatype (datatype name).

SELECT * FROM Smallint_15thMay

/*
---- DECIMAL
---- Range: 10^38+1 to 10^38-1
---- Decimal will pass two parameters:- DECIMAL(Total length, how many number we can pass after decimal)
Suppose we have a number = 12.34
it's total length is = 4
and after decimal number passed = 2
now if you have to calculate before decimal length then,

before decimal length = Total length - after decimal number passed
                        4-2 = 2

*/



-----Example

CREATE TABLE Decimal_15thMay
(
Price DECIMAL(5,1)
)

INSERT INTO Decimal_15thMay(Price) VALUES(123.54) --- AFTER DECIMAL SQL WILL ROUNOFF THE VALUE
INSERT INTO Decimal_15thMay(Price) VALUES(1254.43) --- AFTER DECIMAL SQL WILL ROUNOFF THE VALUE
INSERT INTO Decimal_15thMay(Price) VALUES(7984.6)
INSERT INTO Decimal_15thMay(Price) VALUES(2.6542)  --- AFTER DECIMAL SQL WILL ROUNOFF THE VALUE
INSERT INTO Decimal_15thMay(Price) VALUES(23586.98) --- SHOWS ERROR BECAUSE IT CAN ONLY ACCEPT TOTAL LENGTH OF 5
INSERT INTO Decimal_15thMay(Price) VALUES(79846) ---- it will show error because total length is 5 and before decimal length should be
---- total length - after decimal = 5-1 = 4 before decimal length should be max 4.
INSERT INTO Decimal_15thMay(Price) VALUES(.79846)

SELECT * FROM Decimal_15thMay







/*

--- STRING DATATYPE:
UNDER THIS CATEGORY WE HAVE:
1) CHAR
2) VARCHAR
3) NVARCHAR

*/

---- CHAR DATA TYPE:
--- It is fixed length datatype.
--- The maximum length we pass in CHAR is 8000.
CREATE TABLE Char_test_16thMay
(
FirstName CHAR(50),
)

SELECT * FROM Char_test_16thMay

INSERT INTO Char_test_16thMay(FirstName)VALUES ('Shreya')
INSERT INTO Char_test_16thMay(FirstName)VALUES ('Isha')



"Shreya                                            "   
"Isha                                              " 


/*
NOTE:
this is space showing that when from table i copied first name i had passed length 50 and name shreya and isha contain 6 and 4 space 
left space has shown as whitespace.

*/

/*
Disadvantages of using CHAR:-
When we pass length in char and if there is free space left then it will occupied memory space as you can see in above example i
passed length 50 and after i insert first input as shreya it only occupied 6 space other space is left with whitespace whic led to occupied alot of
memory space without any need.

So to overcome this limitation VARCHAR is introduced.

*/

/*

---------     VARCHAR
It has variable length.
It has also maximum of 8000 length character.

*/

CREATE TABLE Varchar_16thMay
(
FirstName VARCHAR(10)
)

INSERT INTO Varchar_16thMay(FirstName) VALUES('Shreya')
INSERT INTO Varchar_16thMay(FirstName) VALUES('Isha')

SELECT * FROM Varchar_16thMay


'Shreya' --- In varchar if given length is grater then inserted values then also there is no whitespace is showing. This means it does not occupied 
--- left memory space.


---- If we want to add values more than 8000 character in VARCHAR:-

CREATE TABLE Varchar_test_16thMay
(
FirstNmae VARCHAR(MAX) --- now this column can accept upto 2 gb character.
)




----      NVARCHAR :- 
--- The main advantage of using NVARCHAR is to store data in different different language like hindi english chinese etc.

CREATE TABLE Nvarchar_test16thMay(
FirstNmae NVARCHAR(50)
)

INSERT INTO Nvarchar_test16thMay(FirstNmae) VALUES(N'什雷娅')
INSERT INTO Nvarchar_test16thMay(FirstNmae) VALUES(N'카트리나')

SELECT * FROM Nvarchar_test16thMay




-------- DATE CATEGORY
/*


1) DATETIME:- In this we can store date and time both part.
2) DATE:- In this we can store only date part.
3) TIME:- In this we csn only store time part.

*/

--- DATETIME:-

-- In sql server the structure of date time will be:- yyyy-mm-dd hr:min:sec:milisec

-- in sql server we have default function provided by microsoft to get current system datetime:- GETDATE

SELECT GETDATE()  --- 2025-11-12 20:05:47.420   

CREATE TABLE Datatime_test_16thMay(
OrderDate DATETIME
)

INSERT INTO Datatime_test_16thMay(OrderDate) VALUES('2025-11-12 20:05:47.420')

SELECT * FROM Datatime_test_16thMay


--- DATE:- 
CREATE TABLE Date_test_16thMay(
DateOfBirth DATE
)

INSERT INTO Date_test_16thMay(DateOfBirth) VALUES('2003-01-28')
SELECT * FROM Date_test_16thMay


--- TIME:-

CREATE TABLE Time_test_16thMay(
OrderTime TIME
)

INSERT INTO Time_test_16thMay(OrderTime)VALUES('20:05:47.420')

SELECT * FROM Time_test_16thMay




/* 
CONSTRAINT:- It is a kind of rule which can be impose on column.
For example we have voter table and a person who has age 18+ can only give vote if someone apperearing whose is not 18+ then
sql will through atomatic error.

There are different type of constraint:-
1) NOT NULL CONSTRAINT
2) DEFAULT CONSTRAINT
3) CHECK CONSTRAINT
4) UNIQUE CONSTRAINT
5) PRIMARY KEY CONSTRAINT
6) FOREIGN KEY CONSTRAINT


-*****************************************************************************

--- NOT NULL CONSTRAINT:-
It means if you create any column having NOT NULL CONSTRAINT then it will not accept Null values.
How to apply constraint?
write the name of constraint after writing data type name.

*/

CREATE TABLE EmployeeInfo(
EmployeeID INT NOT NULL, ---- Now this employeeID coloumn does not accept any null value
FirstName VARCHAR(50),
LastName VARCHAR(50)
)

INSERT INTO EmployeeInfo(EmployeeID, FirstName, LastName)VALUES('1', 'Shreya', 'Pandey')
INSERT INTO EmployeeInfo(EmployeeID, FirstName, LastName) VALUES(NULL, 'Katrina', 'Kaif')
---- THROWN THIS ERROR:-
/*
Msg 515, Level 16, State 2, Line 280
Cannot insert the value NULL into column 'EmployeeID', table 'master.dbo.EmployeeInfo'; column does not allow nulls. INSERT fails.
The statement has been terminated.

Completion time: 2025-11-12T20:35:06.6169976+05:30


Because employee ID cannot accept null value
*/
SELECT * FROM EmployeeInfo

INSERT INTO EmployeeInfo(FirstName, LastName) VALUES('Katrina', 'Kaif')
/* 
This will also shows error because if we do not define value it will consider as NULL by default.
the error is thrown as: 
Msg 515, Level 16, State 2, Line 294
Cannot insert the value NULL into column 'EmployeeID', table 'master.dbo.EmployeeInfo'; column does not allow nulls. INSERT fails.
The statement has been terminated.

Completion time: 2025-11-12T20:37:12.1420540+05:30

*/


--- DEFAULT CONSTRAINT:- 

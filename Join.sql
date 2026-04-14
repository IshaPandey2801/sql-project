CREATE TABLE EmployeeDetails
(
EmployeeID INTEGER,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DepartmentID INTEGER,
ClientID INTEGER,
DOB DATE,
Salary INTEGER,
Gender VARCHAR(10)
)

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(1, 'Vaishnavi', 'Tripathi', 101, 11, '2001-08-28', 45000, 'Female')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(2, 'Shreya', 'Pandey', 102, 12, '2002-05-28', 95000, 'Female')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(3, 'Isha', 'Mishra', 103, 13, '2000-03-23', 85000, 'Female')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(4, 'Muskan', 'Tripathi', 104, 14, '1999-01-17', 95000, 'Female')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(5, 'Sahil', 'Srivastava', 105, 15, '2003-06-01', 15000, 'Male')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(6, 'Akshay', 'Kumar', 106, 16, '1992-04-10', 55000, 'Male')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(7, 'Kajal', 'Pandey', 107, 17, '2002-03-03', 95000, 'Female')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(8, 'Vicky', 'Kaushal', 108, NULL, '2000-06-03', 85000, 'Male')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(9, 'Avinash', 'Tiwari', 108, NULL, '2000-01-01', 96000, 'Male')

INSERT INTO EmployeeDetails(EmployeeID, FirstName, LastName, DepartmentID, ClientID, DOB, Salary, Gender)
VALUES(10, 'Kajal', 'Mishra', 110, NULL, '1998-10-10', 95000, 'Female')

CREATE TABLE DepartmentDetails
(
DepartmentID INTEGER,
DepartmentName VARCHAR(50)
)

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(101, 'Account')

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(102, 'HR')

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(103, 'Director')

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(104, 'Account')

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(105, 'CEO')

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(106, 'Manager')

INSERT INTO DepartmentDetails(DepartmentID, DepartmentName)
VALUES(107, 'Developer')

Select * FROM DepartmentDetails
SELECT * FROM EmployeeDetails






-----------  JOIN -----------------------
/*
JOIN is a SQL clause used to combine rows from two or more tables based on a related column between them.

Simple Explanation

JOIN helps you fetch data from multiple tables at the same time by connecting them through a common field.

Example in simple words

If one table has employee details and another table has department details, JOIN allows you to see both together in one result.


Syntax of JOIN:-

SELECT column1, column2, ...
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;
*/
Ques:- Write a query for below column?
1) EmployeeID
2) FirstName
3) LastName
4) DepartmentName
----- Since departmentName is in departmentdetails table and EmployeeID, FirstName, LastName is in employeedetails table so to 
------- solve this query we have use JOIN clause


SELECT 
EmployeeID,
FirstName,
LastName,
DepartmentName
FROM 
EmployeeDetails
JOIN DepartmentDetails ON EmployeeDetails.DepartmentID=DepartmentDetails.DepartmentID

--- here we have to join two tables department details and employeedetails to get column named employeeid, firstname, lastname,
----- and departmentname. So to join this both table we used join operator:-
---- JOIN DepartmentDetails(Department table name) ON EmployeeDetails.DepartmentID=DepartmentDetails.DepartmentID
--- EmployeeDetails.DepartmentID= DepartmentID of EmployeeDetails Table
--- DepartmentDetails.DepartmentID= DepartmentID of DepartmentDetails table 
--- DepartmentID is common in both tables
---- "EmployeeDetails.DepartmentID=DepartmentDetails.DepartmentID" This statement means that the column of EmployeeDetails.DepartmentID 
--- should be equal to column of DepartmentDetails.

/*
--- Types of JOIN 
1) INNER JOIN
2) LEFT JOIN 
3) RIGHT JOIN
4) FULL OUTER JOIN
5) CROSS JOIN
*/

---1)  INNER JOIN:
/*

> **INNER JOIN is used to retrieve only the matching records from two or more tables based on a related column.**

It returns **only the rows where the join condition is satisfied in both tables**.

---

### Example

Suppose we have two tables:

**Employees**

| EmployeeID | Name  | DepartmentID |
| ---------- | ----- | ------------ |
| 1          | Rahul | 101          |
| 2          | Priya | 102          |
| 3          | Aman  | 103          |

**Departments**

| DepartmentID | DepartmentName |
| ------------ | -------------- |
| 101          | HR             |
| 102          | IT             |

Query:

```sql
SELECT Employees.Name, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
```

---

### Result

| Name  | DepartmentName |
| ----- | -------------- |
| Rahul | HR             |
| Priya | IT             |

**Aman is not shown** because **DepartmentID 103 does not exist in the Departments table.**

---

### Key Point

✔ Returns **only matching records from both tables**

---

*/



---2)  LEFT JOIN:

/*
A **LEFT JOIN** (also called **LEFT OUTER JOIN**) in SQL is used to **retrieve all records from the left table** and **only the matching records from the right table**. If there is no match, the result will contain **NULL values for the right table columns**.

---

## 🔹 Basic Concept

* **Left Table** → All rows are always included
* **Right Table** → Only matching rows are included
* **No match?** → NULL values appear for right table columns

---

## 🔹 Syntax

```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
```

---

## 🔹 Example (Easy to Understand)

### 🧾 Table 1: Students

| student_id | name  |
| ---------- | ----- |
| 1          | Isha  |
| 2          | Rahul |
| 3          | Aman  |

### 📘 Table 2: Marks

| student_id | marks |
| ---------- | ----- |
| 1          | 85    |
| 3          | 90    |

---

## 🔹 Query

```sql
SELECT Students.name, Marks.marks
FROM Students
LEFT JOIN Marks
ON Students.student_id = Marks.student_id;
```

---

## 🔹 Output

| name  | marks |
| ----- | ----- |
| Isha  | 85    |
| Rahul | NULL  |
| Aman  | 90    |

---

 Explanation

* **Isha (1)** → Match found → Shows marks
* **Rahul (2)** → No match → Shows NULL
* **Aman (3)** → Match found → Shows marks

Notice: **All students are included**, even if they don't have marks.

---

Key Points

✔ Always returns **all rows from the left table**
✔ Missing matches → **NULL values**
✔ Useful when you want to find:

* Missing data
* Unmatched records
* Complete dataset from one table

---

Real-Life Use Case

Suppose:

* You have a **Customers** table
* And an **Orders** table

You want to see **all customers**, even those who haven’t placed any order.

```sql
SELECT Customers.name, Orders.order_id
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;
```

---

Difference from INNER JOIN

| Feature        | LEFT JOIN            | INNER JOIN       |
| -------------- | -------------------- | ---------------- |
| Unmatched rows | Included (with NULL) | Not included     |
| Result size    | Larger or equal      | Smaller or equal |

---

Bonus Tip (Important for Interviews ⭐)

To find **unmatched records only**:

```sql
SELECT *
FROM Students
LEFT JOIN Marks
ON Students.student_id = Marks.student_id
WHERE Marks.student_id IS NULL;
```

This returns students **without marks**

---

In One Line

LEFT JOIN = All data from left table + matching data from right table + NULL if no match**

---

*/


SELECT 
EmployeeID,
FirstName,
LastName,
DepartmentName
FROM 
EmployeeDetails ----LEFT TABLE
LEFT JOIN DepartmentDetails ON EmployeeDetails.DepartmentID=DepartmentDetails.DepartmentID --- RIGHT TABLE


/*

--3)  RIGHT JOIN in SQL (Right Outer Join)
All data from right table and matching records from left table.

A **RIGHT JOIN** returns **all records from the right table** and only the **matching records from the left table**.
If there is no match, the result will show **NULL values for the left table columns**.

---

## 🔹 Basic Idea

* **Right Table** → All rows are always included
* **Left Table** → Only matching rows are included
* **No match?** → NULL values for left table

---

## 🔹 Syntax

```sql
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```

---

## 🔹 Example

### 🧾 Table 1: Students

| student_id | name  |
| ---------- | ----- |
| 1          | Isha  |
| 2          | Rahul |
| 3          | Aman  |

### 📘 Table 2: Marks

| student_id | marks |
| ---------- | ----- |
| 1          | 85    |
| 3          | 90    |
| 4          | 75    |

---

## 🔹 Query

```sql
SELECT Students.name, Marks.marks
FROM Students
RIGHT JOIN Marks
ON Students.student_id = Marks.student_id;
```

---

## 🔹 Output

| name | marks |
| ---- | ----- |
| Isha | 85    |
| Aman | 90    |
| NULL | 75    |

---

## 🔹 Explanation

* **Marks for student_id 1 → Isha** → Match found
* **Marks for student_id 3 → Aman** → Match found
* **Marks for student_id 4 → No student** → NULL appears

👉 Notice: **All rows from the Marks (right table) are included**

---

## 🔹 Key Points

✔ Always returns **all rows from the right table**
✔ Missing matches → **NULL in left table columns**
✔ Useful when:

* You want all records from the right table
* Even if left table data is missing

---

## 🔹 Real-Life Use Case

Suppose:

* **Employees** table (left)
* **Departments** table (right)

👉 You want to see **all departments**, even if no employee is assigned:

```sql
SELECT Employees.name, Departments.department_name
FROM Employees
RIGHT JOIN Departments
ON Employees.department_id = Departments.department_id;
```

---

## 🔹 Difference: LEFT vs RIGHT JOIN

| Feature        | LEFT JOIN          | RIGHT JOIN        |
| -------------- | ------------------ | ----------------- |
| Keeps all rows | Left table         | Right table       |
| Missing values | Right table → NULL | Left table → NULL |

---

## 🔹 Bonus Tip ⭐

👉 RIGHT JOIN can be written as LEFT JOIN by swapping tables:

```sql
-- Same as RIGHT JOIN
SELECT Students.name, Marks.marks
FROM Marks
LEFT JOIN Students
ON Students.student_id = Marks.student_id;
```

---

## 🔚 In One Line

👉 **RIGHT JOIN = All data from right table + matching data from left table + NULL if no match**

---



*/


SELECT 
EmployeeID,
FirstName,
LastName,
DepartmentName
FROM 
EmployeeDetails
RIGHT JOIN DepartmentDetails ON EmployeeDetails.DepartmentID=DepartmentDetails.DepartmentID




--- 4) FULL OUTER JOIN
/*
It is the combination of left join and right join.

## 🔹 FULL OUTER JOIN in SQL

A **FULL OUTER JOIN** (or simply **FULL JOIN**) returns **all records from both tables**:

* Matching rows are combined
* Non-matching rows from **both sides** are also included
* Missing values are filled with **NULL**

---

## 🔹 Basic Idea

* **Left Table** → All rows included
* **Right Table** → All rows included
* **No match?** → NULL on the missing side

👉 It is basically:
**LEFT JOIN + RIGHT JOIN combined**

---

## 🔹 Syntax

```sql id="9x3x8j"
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.common_column = table2.common_column;
```

---

## 🔹 Example

### 🧾 Table 1: Students

| student_id | name  |
| ---------- | ----- |
| 1          | Isha  |
| 2          | Rahul |
| 3          | Aman  |

### 📘 Table 2: Marks

| student_id | marks |
| ---------- | ----- |
| 1          | 85    |
| 3          | 90    |
| 4          | 75    |

---

## 🔹 Query

```sql id="11te0i"
SELECT Students.name, Marks.marks
FROM Students
FULL OUTER JOIN Marks
ON Students.student_id = Marks.student_id;
```

---

## 🔹 Output

| name  | marks |
| ----- | ----- |
| Isha  | 85    |
| Rahul | NULL  |
| Aman  | 90    |
| NULL  | 75    |

---

## 🔹 Explanation

* **Isha (1)** → Match → Shows both values
* **Rahul (2)** → No marks → NULL in marks
* **Aman (3)** → Match → Shows both values
* **student_id 4** → No student → NULL in name

👉 Notice: **All rows from both tables are included**

---

## 🔹 Key Points

✔ Includes **everything from both tables**
✔ Unmatched rows → **NULL values on either side**
✔ Best for:

* Finding **complete combined data**
* Detecting **missing relationships on both sides**

---

## 🔹 Real-Life Use Case

Suppose:

* **Employees** table
* **Projects** table

👉 You want:

* Employees without projects
* Projects without employees
* And matched ones too

```sql id="qklqz0"
SELECT Employees.name, Projects.project_name
FROM Employees
FULL OUTER JOIN Projects
ON Employees.employee_id = Projects.employee_id;
```

---

## 🔹 Important (Interview Point ⭐)

👉 Some databases like **MySQL** do **NOT support FULL OUTER JOIN directly**

### 🔁 Alternative in MySQL:

```sql id="h5xibk"
SELECT * FROM table1
LEFT JOIN table2 ON table1.id = table2.id

UNION

SELECT * FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;
```

---

## 🔹 Quick Comparison

| JOIN Type  | Result Includes           |
| ---------- | ------------------------- |
| INNER JOIN | Only matching rows        |
| LEFT JOIN  | All left + matching right |
| RIGHT JOIN | All right + matching left |
| FULL OUTER | All from both tables      |

---

## 🔚 In One Line

👉 **FULL OUTER JOIN = All data from both tables + NULL where no match exists**

---

If you want, I can give you **tricky SQL interview questions or MCQs** based on JOINs (very useful for your viva 👍).


*/

SELECT 
ED.EmployeeID,
ED.FirstName,
ED.LastName,
D.DepartmentName
FROM
EmployeeDetails AS ED
FULL OUTER JOIN  DepartmentDetails AS D ON ED.DepartmentID = D.DepartmentID

/*
Now what about EmployeeDetails AS ED AND DepartmentDetails AS D :
It is used as alias or shortcut for table name. 
it can be used in every type of join.
*/


--- Some databases like MySQL do NOT support FULL OUTER JOIN directly
--- Alternative in MySQL:

SELECT 
EmployeeID,
FirstName,
LastName,
DepartmentName
FROM 
EmployeeDetails
LEFT JOIN DepartmentDetails ON EmployeeDetails.DepartmentID = DepartmentDetails.DepartmentID

UNION

SELECT 
EmployeeID,
FirstName,
LastName,
DepartmentName
FROM 
EmployeeDetails
LEFT JOIN DepartmentDetails ON EmployeeDetails.DepartmentID = DepartmentDetails.DepartmentID





--- 5) CROSS JOIN
/*
## 🔹 CROSS JOIN in SQL

A **CROSS JOIN** returns the **Cartesian product** of two tables.

👉 That means:

* Every row of the **first table** is combined with **every row of the second table**

---

## 🔹 Basic Idea

If:

* Table A has **m rows**
* Table B has **n rows**

👉 Result = **m × n rows**

---

## 🔹 Syntax

```sql id="m7f9vk"
SELECT columns
FROM table1
CROSS JOIN table2;
```

👉 No `ON` condition is needed (unlike other joins)

---

## 🔹 Example

### 🧾 Table 1: Colors

| color |
| ----- |
| Red   |
| Blue  |

### 👕 Table 2: Sizes

| size |
| ---- |
| S    |
| M    |
| L    |

---

## 🔹 Query

```sql id="qgmrp1"
SELECT Colors.color, Sizes.size
FROM Colors
CROSS JOIN Sizes;
```

---

## 🔹 Output

| color | size |
| ----- | ---- |
| Red   | S    |
| Red   | M    |
| Red   | L    |
| Blue  | S    |
| Blue  | M    |
| Blue  | L    |

---

## 🔹 Explanation

* Red combines with all sizes → 3 rows
* Blue combines with all sizes → 3 rows

👉 Total = **2 × 3 = 6 rows**

---

## 🔹 Key Points

✔ No condition (`ON`) required
✔ Produces **all possible combinations**
✔ Can create **very large outputs** (be careful ⚠️)

---

## 🔹 Real-Life Use Case

* Creating all possible combinations:

  * Product variants (color × size)
  * Menu combinations
  * Test data generation

---

## 🔹 Important Note ⚠️

👉 If you accidentally forget a JOIN condition in an **INNER JOIN**, it may behave like a CROSS JOIN and create a huge dataset.

---

## 🔹 CROSS JOIN vs Other Joins

| JOIN Type  | Behavior                  |
| ---------- | ------------------------- |
| INNER JOIN | Only matching rows        |
| LEFT JOIN  | All left + matching right |
| RIGHT JOIN | All right + matching left |
| FULL JOIN  | All from both tables      |
| CROSS JOIN | All possible combinations |

---

## 🔚 In One Line

👉 **CROSS JOIN = Every row of table1 × every row of table2**


*/

SELECT 
EmployeeID,
FirstName,
LastName,
DepartmentName
FROM
EmployeeDetails
CROSS JOIN DepartmentDetails

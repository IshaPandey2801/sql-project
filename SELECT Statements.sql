SELECT * 
FROM parks_and_recreation.employee_demographics;


SELECT first_name,
last_name,
age,
(age + 10)*10 + 10/*this will add 10 in age*/
FROM parks_and_recreation.employee_demographics;
#this is single line comment
/*
this is multiline comment
*/

#PEMDAS
/*







P stands for paranthesis
E exponential
M multiplication
D division
A addition
S substraction
*/




# distinct is used to show unique value in table
SELECT DISTINCT first_name # first name contained all unique value
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;

SELECT DISTINCT first_name, gender #here first_name and gender together contain unique value
FROM parks_and_recreation.employee_demographics;

# Experiment 2 – SQL SELECT Queries with WHERE, GROUP BY, HAVING, ORDER BY

## Experiment
Experiment 2: Understanding and implementing SQL SELECT queries using WHERE, ORDER BY, GROUP BY, and HAVING clauses to retrieve and manipulate data efficiently from relational database tables.

## Aim
The aim of this experiment is to practice writing SQL SELECT statements with filtering, grouping, sorting, and aggregate functions to analyze data from relational tables.

## Objective
- To practice writing SQL SELECT statements.  
- To apply filtering conditions using the WHERE clause.  
- To sort query results using the ORDER BY clause.  
- To group records using the GROUP BY clause.  
- To filter grouped data using the HAVING clause.  
- To analyze data using aggregate functions like COUNT(), SUM(), AVG(), MIN(), and MAX().

## Software Requirements
- Database: Oracle XE or PostgreSQL (PgAdmin)

## Practical / Experiment Steps
Step 1: Average salary of employees by department.
Step 2: Average salary by department for employees with salary > 20,000.
Step 3: Departments where average salary > 30,000.
Step 4: Departments with average salary > 30,000 for salary > 20,000, sorted in descending order.
Screenshots of query execution (s1 to s4) are attached in order.

## Procedure of the Experiment
1. Start the system and log in to the computer.  
2. Open the required database tool (Oracle XE or PgAdmin).  
3. Connect to the database containing the EMPLOYEE table.  
4. Examine the EMPLOYEE table structure and data.  
5. Write the SQL SELECT query using WHERE, GROUP BY, HAVING, and ORDER BY clauses according to the practical steps.  
6. Execute the query and verify the output.  
7. Note down the results obtained.  
8. Save the work and take screenshots for record.

## Input / Output Details

### Input
- EMPLOYEE table containing columns: emp_id, emp_name, Department, Salary, joining_date.  
- SQL SELECT queries using WHERE, GROUP BY, HAVING, ORDER BY, and aggregate functions.

### Output
- Departments and their average salary for employees with salary > 20,000 and average salary > 30,000.  
- Output arranged in descending order of average salary.  
- Screenshots of query execution and results are attached in the repository.

## CREATING TABLE 
<img width="999" height="189" alt="image" src="https://github.com/user-attachments/assets/00abc643-cc38-4324-95da-6a94cac9ab3b" />

### INSERT DATA
<img width="1006" height="261" alt="image" src="https://github.com/user-attachments/assets/58849332-ba82-4af2-99c4-72924bcc723d" />

### Average salary of employees for each department
<img width="1002" height="97" alt="image" src="https://github.com/user-attachments/assets/986b7ec1-3090-4406-bd94-363d942afef6" />
<img width="1051" height="499" alt="image" src="https://github.com/user-attachments/assets/ebc07489-fb17-4dc4-9cf0-832835257cb2" />


### Consider only employees with salary > 20000
<img width="995" height="119" alt="image" src="https://github.com/user-attachments/assets/855791e9-c9d4-4d9e-afa5-e0b16ae21b98" />
<img width="1061" height="495" alt="image" src="https://github.com/user-attachments/assets/352b0bb6-de36-4ec3-ba86-199e954c5b85" />


### Departments where avg salary > 30000

<img width="992" height="141" alt="image" src="https://github.com/user-attachments/assets/9927b042-6ce7-4566-9f25-6f7a791300f7" />
<img width="1059" height="460" alt="image" src="https://github.com/user-attachments/assets/8700e670-6bd9-40ab-a905-47a91a131844" />


### Output: Final output in descending order of average salary
<img width="1004" height="161" alt="image" src="https://github.com/user-attachments/assets/056e72d6-1ff4-42ea-9b15-09f22677b809" />
<img width="1067" height="475" alt="image" src="https://github.com/user-attachments/assets/e2266416-a55b-43a8-ad8b-d78ff5fe7f5f" />


## Learning Outcome
After completing this experiment, the student will be able to:  
- Filter records using the WHERE clause.  
- Group records using GROUP BY.  
- Apply conditions on grouped data using HAVING.  
- Sort query results using ORDER BY.  
- Analyze data using aggregate functions for meaningful insights.

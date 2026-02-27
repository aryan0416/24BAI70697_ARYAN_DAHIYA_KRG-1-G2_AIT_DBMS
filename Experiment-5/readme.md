# EXPERIMENT 5: SQL Conditional Logic (Odd & Even Values)

## AIM
To understand and apply conditional logic in SQL using the modulus operator (MOD / %) to classify employee salaries as odd or even, enhancing analytical and querying skills in relational databases.

---

## APPARATUS / SOFTWARE REQUIREMENTS

### Database Management System (DBMS):
- Oracle Database Express Edition  
- PostgreSQL  

### Database Client Tool:
- Oracle SQL Developer  
- pgAdmin  

---

## OBJECTIVE
1. To create an employee table with salary data.  
2. To use the MOD() or % operator to determine whether salary values are odd or even.  
3. To display odd and even salary records separately using SQL queries.  

---

## THEORY
The **MOD (modulus)** operator returns the remainder of a division.

- If `salary % 2 = 0` → Salary is **Even**  
- If `salary % 2 ≠ 0` → Salary is **Odd**

### Syntax:

- **Oracle** → `MOD(salary, 2)`  
- **PostgreSQL** → `salary % 2`

---

## PROCEDURE

### Step 1: Create Employee Table

```sql
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary INT
);

```
## Step 2: Insert Sample Data

```sql
INSERT INTO EMPLOYEE VALUES (101, 'Amit', 25000);
INSERT INTO EMPLOYEE VALUES (102, 'Riya', 32001);
INSERT INTO EMPLOYEE VALUES (103, 'Rahul', 45000);
INSERT INTO EMPLOYEE VALUES (104, 'Sneha', 28999);
INSERT INTO EMPLOYEE VALUES (105, 'Arjun', 50000);
```

## Step 3: Display All Records

```sql
SELECT * FROM EMPLOYEE;
```

## Step 4: Display Employees with Even Salary

```sql
SELECT * FROM EMPLOYEE
WHERE SALARY % 2 = 0;
```

## Step 5: Display Employees with Odd Salary

```sql
SELECT * FROM EMPLOYEE
WHERE SALARY % 2 <> 0;
```

## Step 6: Display Salary Type (Odd/Even) Using CASE

```sql
SELECT EMP_ID,
       EMP_NAME,
       SALARY,
       CASE
           WHEN SALARY % 2 = 0 THEN 'Even Salary'
           ELSE 'Odd Salary'
       END AS SALARY_TYPE
FROM EMPLOYEE;
```

# OUTPUT

## All Records

| EMP_ID | EMP_NAME | SALARY |
|--------|----------|--------|
| 101 | Amit | 25000 |
| 102 | Riya | 32001 |
| 103 | Rahul | 45000 |
| 104 | Sneha | 28999 |
| 105 | Arjun | 50000 |

## Even Salary Records

| EMP_ID | EMP_NAME | SALARY |
|--------|----------|--------|
| 101 | Amit | 25000 |
| 103 | Rahul | 45000 |
| 105 | Arjun | 50000 |

## Odd Salary Records

| EMP_ID | EMP_NAME | SALARY |
|--------|----------|--------|
| 102 | Riya | 32001 |
| 104 | Sneha | 28999 |

## RESULT

The SQL queries were successfully executed in pgAdmin.  
Employee salaries were correctly classified as odd and even using the modulus (%) operator.

## CONCLUSION

The experiment demonstrates how conditional logic can be applied in PostgreSQL using the % operator.  
This technique helps in categorizing numerical data efficiently and is useful in filtering, reporting, and database analysis tasks.

## LEARNING OUTCOMES

- Understand the use of the modulus operator in PostgreSQL.
- Apply conditional logic using WHERE and CASE statements.
- Classify numerical data as odd or even.
- Improve SQL data filtering and reporting skills.

## Screenshot

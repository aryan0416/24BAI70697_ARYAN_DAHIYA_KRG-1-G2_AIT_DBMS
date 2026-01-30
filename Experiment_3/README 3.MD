# Experiment 3 – PL/SQL Salary and Bonus Calculation

## Experiment
Experiment 3: Calculating employee salary and applying a bonus using PL/SQL. This experiment demonstrates variable declaration, arithmetic operations, and displaying output using `DBMS_OUTPUT.PUT_LINE`.

## Aim
The aim of this experiment is to practice writing PL/SQL blocks that perform calculations on employee data, calculate bonuses, and display results in a structured format.

## Objective
- To declare variables in PL/SQL.  
- To perform arithmetic calculations on employee salary.  
- To calculate a bonus amount based on a percentage of salary.  
- To display employee details and salary information before and after applying the bonus.  

## Software Requirements
- Database: Oracle XE or Oracle Live SQL  

## Practical / Experiment Steps
1. Declare variables for employee ID, name, and salary.  
2. Calculate a 10% bonus on the employee salary.  
3. Calculate the total salary after adding the bonus.  
4. Display employee details and salary information before and after bonus.  
5. Take screenshots of outputs for documentation.  

## Procedure of the Experiment
1. Start the system and log in.  
2. Open Oracle XE or Live SQL.  
3. Connect to the database.  
4. Declare variables for employee details and bonus calculation.  
5. Write the PL/SQL block to calculate bonus and total salary.  
6. Execute the PL/SQL block and verify outputs in the console.  
7. Take screenshots of the outputs (s1 and s2).  

### Code 
```
DO $$
DECLARE
    emp_id        INTEGER := 102;
    emp_name      VARCHAR(50) := 'Aryan Dahiya';
    emp_salary    NUMERIC := 45000;
    bonus_amount  NUMERIC;
    new_salary    NUMERIC;
BEGIN

    bonus_amount := emp_salary * 0.10;
    new_salary := emp_salary + bonus_amount;

    RAISE NOTICE 'Employee Details';
    RAISE NOTICE '----------------';
    RAISE NOTICE 'Employee ID   : %', emp_id;
    RAISE NOTICE 'Employee Name : %', emp_name;

    RAISE NOTICE '';
    RAISE NOTICE 'Salary Details';
    RAISE NOTICE '----------------';
    RAISE NOTICE 'Salary Before Bonus : %', emp_salary;
    RAISE NOTICE '10%% Bonus Amount    : %', bonus_amount;
    RAISE NOTICE 'Salary After Bonus  : %', new_salary;

END $$;
```

## Input / Output Details

### Input
- Employee details:  
```
    emp_id        INTEGER := 102;
    emp_name      VARCHAR(50) := 'Aryan Dahiya';
    emp_salary    NUMERIC := 45000;
    bonus_amount  NUMERIC;
    new_salary    NUMERIC;
```
- Bonus calculation: 10% of employee salary  

### Output
- Step 1: Display employee details and original salary.  
- Step 2: Display bonus amount and total salary after applying 10% bonus.  
- Screenshots of outputs (s1 and s2) are attached.  

### Step 1 and 2 Output


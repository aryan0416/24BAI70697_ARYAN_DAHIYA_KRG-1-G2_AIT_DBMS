# **EXPERIMENT 3 – Conditional Logic in PostgreSQL**

**Student Name:** Aryan Dahiya
**UID:** 24BAI70697
**Branch:** AIT-CSE (AIML)
**Section/Group:** 24AIT_KRG2
**Semester:** 4
**Subject:** Database Management System
**Subject Code:** 24CSH-298

---

## **Aim**

To implement conditional decision-making logic in PostgreSQL using **IF–ELSE constructs** and **CASE expressions** for classification, validation, and rule-based data processing. 

---

## **Tools Used**

* PostgreSQL 

---

## **Objectives**

* Understand conditional execution in SQL
* Implement decision-making logic using CASE
* Simulate real-world rule validation
* Classify data using multiple conditions
* Strengthen SQL logic for backend systems & interviews 

---

## **Theory**

Conditional logic helps databases validate, categorize, and transform data based on business rules. PostgreSQL supports this through:

* **CASE Expressions** → Used in SELECT, UPDATE, INSERT
* **IF–ELSE Constructs** → Used in PL/pgSQL blocks

Used for:

* Data classification
* Violation detection
* Status mapping
* Business rule enforcement 

---

## **Practical Implementation**

### **Prerequisite Setup**

```sql
CREATE TABLE schema_violations (
 id SERIAL PRIMARY KEY,
 schema_name VARCHAR(50),
 violation_count INT
);

INSERT INTO schema_violations (schema_name, violation_count) VALUES
('Finance', 0),
('HR', 2),
('Sales', 5),
('Security', 9),
('Admin', 1);
```

---
<img width="1090" height="352" alt="image" src="https://github.com/user-attachments/assets/55f85f94-70b9-442f-b2e6-780f9ab7c9f1" />
### **Step 1: Classifying Data Using CASE**

```sql
SELECT 
 schema_name,
 violation_count,
 CASE
  WHEN violation_count = 0 THEN 'No Violation'
  WHEN violation_count BETWEEN 1 AND 3 THEN 'Minor Violation'
  WHEN violation_count BETWEEN 4 AND 7 THEN 'Moderate Violation'
  ELSE 'Critical Violation'
 END AS violation_status
FROM schema_violations;
```

<img width="1090" height="402" alt="image" src="https://github.com/user-attachments/assets/db7c4e8b-2cea-4c80-963c-426b2ac9bb36" />

---

### **Step 2: CASE Logic in Updates**

```sql
ALTER TABLE schema_violations ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_violations
SET approval_status =
 CASE
  WHEN violation_count = 0 THEN 'Approved'
  WHEN violation_count BETWEEN 1 AND 5 THEN 'Needs Review'
  ELSE 'Rejected'
 END;
```

---
<img width="989" height="353" alt="image" src="https://github.com/user-attachments/assets/8d9581cd-d3f0-48af-b148-ee398cbb6c43" />

### **Step 3: IF–ELSE Using PL/pgSQL**

```sql
DO $$
DECLARE
 v_count INT := 4;
BEGIN
 IF v_count = 0 THEN
  RAISE NOTICE 'System is clean.';
 ELSIF v_count <= 5 THEN
  RAISE NOTICE 'System has minor issues.';
 ELSE
  RAISE NOTICE 'System has critical violations!';
 END IF;
END $$;
```

---
<img width="1090" height="290" alt="image" src="https://github.com/user-attachments/assets/8f833409-4347-4afe-9c0c-642b0280e301" />

### **Step 4: Grading System**

```sql
CREATE TABLE students (
 name VARCHAR(50),
 marks INT
);

INSERT INTO students VALUES
('Aryan', 92),
('Riya', 75),
('Karan', 61),
('Megha', 48);

SELECT name, marks,
 CASE
  WHEN marks >= 90 THEN 'A Grade'
  WHEN marks >= 70 THEN 'B Grade'
  WHEN marks >= 50 THEN 'C Grade'
  ELSE 'Fail'
 END AS grade
FROM students;
```

---
<img width="1090" height="386" alt="image" src="https://github.com/user-attachments/assets/6e6722a8-11d9-4280-8dc6-b1e7d06ff27b" />

### **Step 5: CASE for Custom Sorting**

```sql
SELECT schema_name, violation_count
FROM schema_violations
ORDER BY
 CASE
  WHEN violation_count = 0 THEN 1
  WHEN violation_count BETWEEN 1 AND 3 THEN 2
  WHEN violation_count BETWEEN 4 AND 7 THEN 3
  ELSE 4
 END;
```

---
<img width="990" height="315" alt="image" src="https://github.com/user-attachments/assets/c8912d5e-180a-46b5-8437-1417f71b4b02" />

## **Course Outcome**

Students learn how to apply **CASE** and **IF–ELSE** logic in PostgreSQL for:

* Backend systems
* Analytics
* Compliance reporting
* Technical interviews 

---

## **Result**

Conditional logic using CASE and IF–ELSE was successfully implemented for classification, approval automation, grading systems, and custom sorting in PostgreSQL. 

---

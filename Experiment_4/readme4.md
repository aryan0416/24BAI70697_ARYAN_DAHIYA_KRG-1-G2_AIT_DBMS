
# **DBMS Experiment 4 – Conditional Control Statements in PL/SQL**

**Student Name:** Aryan Dahiya
**UID:** 24BAI70697
**Branch:** AIT-CSE-AIML
**Section/Group:** 24AIT_KRG-G2
**Semester:** 4
**Subject:** Database Management System (DBMS) 

---

## **AIM**

To design and implement PL/SQL programs using conditional control statements such as **IF–ELSE**, **IF–ELSIF–ELSE**, **ELSIF ladder**, and **CASE constructs** to control execution flow based on logical conditions and analyze decision-making capabilities in PL/SQL blocks. 

---

## **SOFTWARE REQUIREMENTS**

* Database Management System: **PostgreSQL / Oracle Database Express Edition**
* Database Administration Tool: **pgAdmin** 

---

## **OBJECTIVES**

* Understand and implement conditional control statements in PL/SQL
* Analyze decision-making using IF–ELSE, ELSIF ladder, and CASE statements
* Enhance logical thinking using PL/SQL blocks 

---

## **PROBLEM STATEMENTS & PROGRAMS**

### **1. IF–ELSE Statement**

**Problem:** Check whether a given number is positive or non-positive.

```sql
DECLARE
 num NUMBER := -5;
BEGIN
 IF num > 0 THEN
   DBMS_OUTPUT.PUT_LINE('The number is Positive');
 ELSE
   DBMS_OUTPUT.PUT_LINE('The number is Non-Positive');
 END IF;
END;
```

---

### **2. IF–ELSIF–ELSE Statement**

**Problem:** Evaluate the grade of a student based on marks.

```sql
DECLARE
 marks NUMBER := 78;
BEGIN
 IF marks >= 90 THEN
   DBMS_OUTPUT.PUT_LINE('Grade: A');
 ELSIF marks >= 75 THEN
   DBMS_OUTPUT.PUT_LINE('Grade: B');
 ELSIF marks >= 60 THEN
   DBMS_OUTPUT.PUT_LINE('Grade: C');
 ELSE
   DBMS_OUTPUT.PUT_LINE('Grade: Fail');
 END IF;
END;
```

---

### **3. ELSIF Ladder**

**Problem:** Determine student performance status based on marks.

```sql
DECLARE
 marks NUMBER := 82;
BEGIN
 IF marks >= 85 THEN
   DBMS_OUTPUT.PUT_LINE('Performance: Excellent');
 ELSIF marks >= 70 THEN
   DBMS_OUTPUT.PUT_LINE('Performance: Very Good');
 ELSIF marks >= 55 THEN
   DBMS_OUTPUT.PUT_LINE('Performance: Good');
 ELSIF marks >= 40 THEN
   DBMS_OUTPUT.PUT_LINE('Performance: Average');
 ELSE
   DBMS_OUTPUT.PUT_LINE('Performance: Poor');
 END IF;
END;
```

---

### **4. CASE Statement**

**Problem:** Display day name based on day number.

```sql
DECLARE
 day_num NUMBER := 3;
 day_name VARCHAR2(20);
BEGIN
 CASE day_num
   WHEN 1 THEN day_name := 'Sunday';
   WHEN 2 THEN day_name := 'Monday';
   WHEN 3 THEN day_name := 'Tuesday';
   WHEN 4 THEN day_name := 'Wednesday';
   WHEN 5 THEN day_name := 'Thursday';
   WHEN 6 THEN day_name := 'Friday';
   WHEN 7 THEN day_name := 'Saturday';
   ELSE day_name := 'Invalid Day Number';
 END CASE;

 DBMS_OUTPUT.PUT_LINE('Day is: ' || day_name);
END;
```

---

## **LEARNING OUTCOMES**

1. Understood conditional control statements in PL/SQL
2. Applied IF–ELSE and IF–ELSIF–ELSE for decision-making
3. Implemented ELSIF ladder for multiple conditions
4. Used CASE statements for simplified logic
5. Improved logical reasoning and procedural programming skills 

---

## **CONCLUSION**

This experiment provided hands-on experience with conditional control statements in PL/SQL. The use of IF–ELSE, ELSIF ladder, and CASE statements improved understanding of decision-making mechanisms and control flow within PL/SQL programs. 

### **SCREENSHOTS***

<img width="1025" height="747" alt="Screenshot 2026-01-31 102827" src="https://github.com/user-attachments/assets/38c1a7fc-54e4-423f-b2dd-9e5f9aecfbe7" />
<img width="1015" height="869" alt="Screenshot 2026-01-31 102915" src="https://github.com/user-attachments/assets/94cb9f4b-628d-44d0-a3ed-e8f1bc5533a0" />
<img width="1036" height="870" alt="Screenshot 2026-01-31 102959" src="https://github.com/user-attachments/assets/20aa6a3e-de50-4a9d-a9f8-aa5a11423ad4" />
<img width="1038" height="873" alt="Screenshot 2026-01-31 103113" src="https://github.com/user-attachments/assets/9fed92b4-ceaa-4159-abd5-a0662d508f1f" />




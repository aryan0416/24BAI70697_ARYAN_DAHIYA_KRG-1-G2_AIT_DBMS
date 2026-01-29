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


ALTER TABLE schema_violations ADD COLUMN approval_status VARCHAR(20);

UPDATE schema_violations
SET approval_status =
    CASE
        WHEN violation_count = 0 THEN 'Approved'
        WHEN violation_count BETWEEN 1 AND 5 THEN 'Needs Review'
        ELSE 'Rejected'
    END;


SELECT * FROM schema_violations;



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



SELECT schema_name, violation_count
FROM schema_violations
ORDER BY
    CASE
        WHEN violation_count = 0 THEN 1
        WHEN violation_count BETWEEN 1 AND 3 THEN 2
        WHEN violation_count BETWEEN 4 AND 7 THEN 3
        ELSE 4
    END;

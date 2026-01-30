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

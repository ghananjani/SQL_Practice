SELECT 
    employee_id AS EmpID, 
    first_name AS FirstName, 
    last_name AS LastName, 
    department_id AS DeptID
FROM employees
WHERE 
    salary > 50000 
    AND department_id = 10;

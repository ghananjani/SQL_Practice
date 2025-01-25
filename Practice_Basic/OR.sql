SELECT 
    employee_id AS EmpID, 
    first_name AS FirstName, 
    department_id AS DeptID
FROM employees
WHERE 
    department_id = 10 
    OR department_id = 20;

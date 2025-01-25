-- Aliasing columns
SELECT 
    employee_id AS EmpID, 
    first_name AS FirstName, 
    last_name AS LastName, 
    salary AS MonthlySalary
FROM employees;

-- Aliasing tables
SELECT 
    e.first_name AS EmployeeName, 
    d.department_name AS Department
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Combining both column and table aliases
SELECT 
    e.employee_id AS ID, 
    e.first_name AS Name, 
    d.department_name AS Department, 
    e.salary * 12 AS AnnualSalary
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

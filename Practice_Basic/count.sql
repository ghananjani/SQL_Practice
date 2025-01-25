SELECT 
    d.department_name AS Department, 
    COUNT(e.employee_id) AS TotalEmployees
FROM departments d
LEFT JOIN employees e ON d.department_id = e.department_id
GROUP BY d.department_name;

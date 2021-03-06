-- 1. How many people work in the Sales department?
SELECT
    e.emp_name as Full_Name,
    d.dept_name as Department
FROM
    employee e
    JOIN department d ON e.department = d.id
WHERE
    d.dept_name = 'Sales';

    
-- 2. List the names of all employees assigned to the 'Plan Christmas party' project.
SELECT
    e.emp_name as Full_Name,
    p.project_name as Project 
FROM
    employee e
    JOIN employee_project ep ON e.id = ep.emp_id
    JOIN project p ON ep.project_id = p.id
WHERE p.id = 2;

-- 3. List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.
SELECT
    e.emp_name as Full_Name,
    d.dept_name as Department,
    p.project_name as Project
FROM
    employee e 
    JOIN department d ON e.department = d.id
    JOIN employee_project ep  ON ep.emp_id = e.id
    JOIN project p ON ep.project_id = p.id 
WHERE
    p.project_name = 'Watch paint dry' AND d.dept_name = 'Warehouse';

-- 4. Which projects are the Sales department employees assigned to?
SELECT
    e.emp_name as Full_Name,
    p.project_name as Project,
    d.dept_name as Department
FROM
    employee e
    JOIN department d ON e.department = d.id
    JOIN employee_project ep ON ep.emp_id = e.id
    JOIN project p ON ep.project_id = p.id
WHERE
    d.dept_name = 'Sales';
-- 5. List only the managers that are assigned to the 'Watch paint dry' project.
SELECT
    e.emp_name as Full_Name,
    p.project_name as Project,
    d.manager as Manager
FROM
    employee e 
    JOIN employee_project ep ON ep.emp_id = e.id
    JOIN project p ON ep.project_id = p.id
    JOIN department d ON e.department = d.id
WHERE
    p.project_name = 'Watch paint dry' AND d.manager = ep.emp_id;
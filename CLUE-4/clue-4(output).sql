SELECT DISTINCT 
    CONCAT(t1.first_name, ' ', t1.last_name) AS "employee",
    CONCAT(u.f_name, ' ', u.l_name) AS "rider"
FROM dblink('host=localhost user=postgres password=root dbname=Employees',
'SELECT first_name, last_name FROM employees;') AS t1(first_name TEXT, last_name TEXT)
JOIN suspected_rider_names AS u ON t1.last_name = u.l_name;

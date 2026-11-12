CREATE TABLE lab_staff (
    staff_id INT PRIMARY KEY,
    dept_name VARCHAR(30),
    staff_name VARCHAR(50),
    performance_score INT
);
INSERT INTO lab_staff VALUES
(105, 'Sales', 'Arjun', 95),
(106, 'Sales', 'Priya', 95),
(107, 'Sales', 'Rahul', 88),
(108, 'Support', 'Sneha', 92);
SELECT 
    dept_name, staff_name, performance_score,
    RANK() OVER (PARTITION BY dept_name ORDER BY performance_score DESC) AS rnk,
    DENSE_RANK() OVER (PARTITION BY dept_name ORDER BY performance_score DESC) AS dense_rnk
FROM 
    lab_staff;
WITH dept_avg AS (
    SELECT 
        e.department_id,
        AVG(s.amount) AS dep_avg
    FROM employee e
    JOIN salary s ON e.employee_id = s.employee_id
    WHERE s.payment_date >= '2024-03-01'
      AND s.payment_date <  '2024-04-01'
    GROUP BY e.department_id
),
overall_avg AS (
    SELECT 
        AVG(s.amount) AS comp_avg
    FROM employee e
    JOIN salary s ON e.employee_id = s.employee_id
    WHERE s.payment_date >= '2024-03-01'
      AND s.payment_date <  '2024-04-01'
)
SELECT 
    d.department_id,
    '03-2024' AS payment_date,
    CASE
        WHEN d.dep_avg > o.comp_avg THEN 'higher'
        WHEN d.dep_avg < o.comp_avg THEN 'lower'
        ELSE 'same'
    END AS comparison
FROM dept_avg d
CROSS JOIN overall_avg o
ORDER BY d.department_id;
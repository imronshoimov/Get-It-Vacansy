SELECT 
    *
FROM users;

SELECT 
    u.user_first_name || ' ' || u.user_last_name AS recruiter_full_name,
    company_name,
    specialization,
    technology,
    experience,
    salary,
    type_work,
    location,
    number
FROM company c
LEFT JOIN users u ON u.user_id = c.user_id;

SELECT 
    u.user_first_name || ' ' || u.user_last_name AS staff_full_name,
    specialization,
    technology,
    experience,
    qualification,
    salary,
    type_work,
    location,
    age,
    gender,
    number
FROM staff s
LEFT JOIN users u ON u.user_id = s.user_id;


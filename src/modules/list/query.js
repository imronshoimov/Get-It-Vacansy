const USER = `
INSERT INTO users (
    user_first_name,
    user_last_name,
    user_username,
    email,
    user_password
) VALUES 
($1, $2, $3, $4, crypt($5, gen_salt('bf')))
RETURNING *;
`

const GET_RECRUITES = `
SELECT 
    u.user_first_name || ' ' || u.user_last_name AS recruiter_full_name,
    c.company_name,
    c.specialization,
    c.technology,
    c.experience,
    c.salary,
    c.type_work,
    c.location,
    c.number
FROM company c
LEFT JOIN users u ON u.user_id = c.user_id
LEFT JOIN stuff_company sc ON sc.company_id = c.company_id
WHERE c.specialization = $1;
`

const GET_STAFFS = `
SELECT 
    u.user_first_name || ' ' || u.user_last_name AS staff_full_name,
    s.specialization,
    s.technology,
    s.experience,
    s.qualification,
    s.salary,
    s.type_work,
    s.location,
    s.age,
    s.gender,
    s.number
FROM staff s
LEFT JOIN users u ON u.user_id = s.user_id
LEFT JOIN stuff_company sc ON sc.staff_id = s.staff_id
WHERE s.specialization = $1;
`

module.exports = { USER, GET_STAFFS, GET_RECRUITES }
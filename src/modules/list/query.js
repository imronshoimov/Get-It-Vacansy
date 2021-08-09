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
LEFT JOIN company c ON c.user_id = s.user_id
WHERE s.specialization ILIKE c.specialization;
`

module.exports = { GET_STAFFS }
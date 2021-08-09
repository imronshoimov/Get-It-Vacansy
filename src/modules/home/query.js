const COMPANY = `
INSERT INTO company (
    user_id,
    company_name,
    specialization,
    technology,
    experience,
    salary,
    type_work,
    location,
    number
) VALUES 
($1, $2, $3, $4, $5, $6, $7, $8, $9)
RETURNING *;
`

const STAFF = `
INSERT INTO staff (
    user_id,
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
) VALUES 
($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)
RETURNING *;
`

const GET_STAFFS = `

`

module.exports = {
    COMPANY,
    STAFF
}
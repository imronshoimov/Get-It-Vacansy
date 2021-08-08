const { fetch, fetchAll } = require('../../lib/postgres')

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
    
const insertRecruiter = (data, userId) => {
    const { companyName, specialization, technology, experience, salary, TypeOfWork, location, number }= data
    let recruiter = fetch(COMPANY, userId, companyName, specialization, technology, experience, salary, TypeOfWork, location, number)
    return recruiter
}

module.exports = {
    insertRecruiter
}
    
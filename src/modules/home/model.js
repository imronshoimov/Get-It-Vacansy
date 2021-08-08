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
(2, 'company 1', 'web developer', 'React, NodeJs', '1 yil', '200$-500$', 'doimiy', 'Tashkent', '998903332334'),
`
    
const insertRecruiter = (data) => {
    const { companyName, specialization, technology, experience, salary, TypeOfWork, location, number }= data
    let recruiter = fetch()
}

module.exports = {
    insertRecruiter
}
    
const { fetch, fetchAll } = require('../../lib/postgres')
const { COMPANY, STAFF } = require('./query')
    
const insertRecruiter = async (data, userId) => {
    const { companyName, specialization, technology, experience, salary, TypeOfWork, location, number } = data
    let recruiter = await fetch(COMPANY, userId, companyName, specialization, technology, experience, salary, TypeOfWork, location, number)
    return recruiter
}

const insertStaff = async (data, userId) => {
    const { specialization, technology, experience, qualification, salary, TypeOfWork, location, age, number, gender, } = data

    let staff = await fetch(STAFF, userId, specialization, technology, experience, qualification, salary, TypeOfWork, location, age, gender, number)
    return staff
}

module.exports = {
    insertRecruiter,
    insertStaff
}
    
const { fetch, fetchAll } = require('../../lib/postgres')
const { USER, GET_STAFFS, GET_RECRUITES } = require('./query')

const user = async ({ firstName, LastName, userName, email, password  }) => {
    let newUser = await fetch(USER, firstName, LastName, userName, email, password)
    return newUser
}

const staffs = async () => {
    let staff = await fetchAll(GET_STAFFS)
    return staff
}

const recruites = async () => {
    let recruite = await fetchAll(GET_RECRUITES)
    return recruite
}

module.exports = { user, staffs, recruites }
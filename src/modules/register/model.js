const { fetch, fetchAll } = require('../../lib/postgres')

const insertUser = (userData) => {
    const { firstName, LastName, userName, email, password } = userData

}

module.exports = { insertUser }
const { fetch, fetchAll } = require('../../lib/postgres')

const USER = `
INSERT INTO users (
    user_first_name,
    user_last_name,
    user_username,
    email,
    user_password
) VALUES ($1, $2, $3, crypt($4, gen_salt('bf')), $5);
`

const insertUser = async (userData) => {
    const { firstName, LastName, userName, email, password } = userData
    let user = await fetch(USER, firstName, LastName, userName, email, password )
    return user
}

module.exports = { insertUser }
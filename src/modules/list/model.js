const { fetch, fetchAll } = require('../../lib/postgres')
const { GET_STAFFS } = require('./query')

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

const user = async ({ firstName, LastName, userName, email, password  }) => {
    let newUser = await fetch(USER, firstName, LastName, userName, email, password)
    return newUser
}

const staffs = async () => {
    let staff = await fetchAll(GET_STAFFS)
    console.log(staff);
    return staff
}

module.exports = { user, staffs }
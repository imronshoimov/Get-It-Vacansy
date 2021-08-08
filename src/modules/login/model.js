const { fetch, fetchAll } = require('../../lib/postgres')

const VALIDATE = `
SELECT 
		u.user_id
FROM users u
WHERE u.user_username = $1 AND 
u.user_password = crypt($2, u.user_password);
`

const validate = async ( {userName, password} ) => {
    let user = await fetch(VALIDATE, userName, password)
    return user
}

module.exports = { validate }
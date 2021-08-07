const { sign, verify } = require('jsonwebtoken')
const SECRET_KEY = 'seceret key'

module.exports = {
    sign: (payload) => sign(payload, SECRET_KEY),
    verify: (payload) => verify(payload, SECRET_KEY)
}
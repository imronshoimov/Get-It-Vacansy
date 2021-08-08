const router = require('express').Router()
const { GET, POST } = require('./controller')
const { checkToken } = require('../../middlewares/middleware.js')

router.route('/login')
    .get(GET)
    .post(checkToken, POST)

module.exports = router
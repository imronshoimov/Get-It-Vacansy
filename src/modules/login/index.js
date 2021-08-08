const router = require('express').Router()
const { GET, POST } = require('./controller')

router.route('/login')
    .get(GET)
    .post(POST)

module.exports = router
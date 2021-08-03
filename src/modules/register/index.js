const router = require('express').Router()
const { GET } = require('./controller')

router.route('/register')
    .get(GET)

module.exports = router
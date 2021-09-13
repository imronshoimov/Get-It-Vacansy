const router = require('express').Router()
const { GET, POST, LOGOUT } = require('./controller')

router.route('/login')
    .get(GET)
    .post(POST)

router.route('/home/logout')
	.get( LOGOUT )

module.exports = router
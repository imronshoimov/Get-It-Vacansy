const router = require('express').Router()
const { GET, GET_RECRUITE, POST_RECRUITE } = require('./controller')

router.route('/')
    .get(GET)

router.route('/home/recruite')
    .get(GET_RECRUITE)
    .post(POST_RECRUITE)

module.exports = router
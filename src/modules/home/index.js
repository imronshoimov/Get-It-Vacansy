const router = require('express').Router()
const { GET, GET_RECRUITE } = require('./controller')

router.route('/')
    .get(GET)

router.route('/home/recruite')
    .get(GET_RECRUITE)

module.exports = router
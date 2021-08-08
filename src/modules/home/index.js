const router = require('express').Router()
const { GET, GET_RECRUITE, POST_RECRUITE, GET_JOB, POST_JOB } = require('./controller')

router.route('/')
    .get(GET)

router.route('/home/recruite')
    .get(GET_RECRUITE)
    .post(POST_RECRUITE)

router.route('/home/job')
    .get(GET_JOB)
    .post(POST_JOB)

module.exports = router
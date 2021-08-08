const router = require('express').Router()
const { RECRUITE_LIST, JOB_LIST } = require('./controller')

router.route('/list/recruite')
    .get(RECRUITE_LIST)

router.route('/list/job')
    .get(JOB_LIST)

module.exports = router
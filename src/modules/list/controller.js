const model = require('./model')

const RECRUITE_LIST = (req, res) => {
    res.render('recruite_list.html')
}

const JOB_LIST = (req, res) => {
    res.render('job_list.html')
}

module.exports = { RECRUITE_LIST, JOB_LIST }
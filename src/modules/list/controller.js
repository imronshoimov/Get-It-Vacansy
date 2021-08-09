const model = require('./model')

const RECRUITE_LIST = async (req, res) => {
    res.render('recruite_list.html', { staffs: await model.staffs() })
}

const JOB_LIST = async (req, res) => {
    res.render('job_list.html', { recruites: await model.recruites() })
}

module.exports = { RECRUITE_LIST, JOB_LIST }
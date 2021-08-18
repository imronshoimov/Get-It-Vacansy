const model = require('./model')

const RECRUITE_LIST = async (req, res) => {
    res.render('recruite_list.html', { staffs: await model.staffs(req.cookies.spec) })
}

const JOB_LIST = async (req, res) => {
    res.render('job_list.html', { recruites: await model.recruites(req.cookies.spec) })
}

module.exports = { RECRUITE_LIST, JOB_LIST }
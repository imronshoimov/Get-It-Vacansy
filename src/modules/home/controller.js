const model = require('./model')

const GET = (req, res) => {
    res.render('home.html')
}

const GET_RECRUITE = async (req, res) => {
    res.render('recruite.html')
}

const POST_RECRUITE = async (req, res) => {
    let data = await model.insertRecruiter(req.body, req.cookies.userId);
    if(data) {
        res.cookie('spec', data.specialization)
            .status(200).redirect('/list/recruite')
    } else {
        res.status(400)
    }
}

const GET_JOB = (req, res) => {
    res.render('job.html')
}

const POST_JOB = async (req, res) => {
    let data = await model.insertStaff(req.body, req.cookies.userId);
    if(data) {
        res.cookie('spec', data.specialization)
            .status(200).redirect('/list/job')
    } else {
        res.status(400)
    } 
}

module.exports = { GET, GET_RECRUITE, POST_RECRUITE, GET_JOB, POST_JOB }
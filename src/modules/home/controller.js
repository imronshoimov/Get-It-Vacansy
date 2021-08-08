const model = require('./model')

const GET = (req, res) => {
    res.render('home.html')
}

const GET_RECRUITE = (req, res) => {
    res.render('recruite.html')
}

const POST_RECRUITE = async (req, res) => {
    let data = await model.insertRecruiter(req.body);
    if(data) {
        res.status(200)
    } else {
        res.status(400)
    }
}

module.exports = { GET, GET_RECRUITE, POST_RECRUITE }
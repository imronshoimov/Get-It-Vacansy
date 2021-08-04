const model = require('./model')

const GET = (req, res) => {
    res.render('register.html')
}

const POST = (req, res) => {
    console.log(req.body);
}

module.exports = { GET, POST }
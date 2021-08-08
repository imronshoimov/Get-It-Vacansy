const model = require('./model')

const GET = (req, res) => {
    res.render('home.html')
}

const GET_RECRUITE = (req, res) => {
    res.render('recruite.html')
}

module.exports = { GET, GET_RECRUITE }
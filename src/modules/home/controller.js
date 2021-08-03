const model = require('./model')

const GET = (req, res) => {
    res.render('home.html')
}

module.exports = { GET }
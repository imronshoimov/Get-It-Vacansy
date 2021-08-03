const model = require('./model')

const GET = (req, res) => {
    res.render('login.html')
}

module.exports = { GET }
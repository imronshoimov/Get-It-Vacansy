const model = require('./model')

const GET = (req, res) => {
    res.render('register.html')
}

module.exports = { GET }
const model = require('./model')
const { sign } = require('../../lib/jwt')

const GET = (req, res) => {
    res.render('register.html')
}

const POST = (req, res) => {
    const user = model.insertUser(req.body)
    if(user) {
        res.cookie('token', sign(user), { maxAge: 50000000 })
            .redirect('/')
            .status(200)
    } else {
        res.status(401)
            .redirect('/register')
    }
}

module.exports = { GET, POST }
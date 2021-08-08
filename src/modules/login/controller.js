const model = require('./model')
const { sign } = require('../../lib/jwt')

const GET = (req, res) => {
    res.render('login')
}

const POST = async (req, res) => {
    let user = await model.validate(req.body)
    if(user) {
        res.cookie('token', sign(user), { maxAge: 50000000 })
            .redirect('/')
    } else {
        res.status(401).render({ error: 'wrong username or password!' })
    }
}

module.exports = { GET, POST }
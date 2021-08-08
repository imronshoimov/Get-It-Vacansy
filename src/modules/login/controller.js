const model = require('./model')
const { sign } = require('../../lib/jwt')

const GET = (req, res) => {
    res.render('login')
}

const POST = async (req, res) => {
    let user = await model.validate(req.body)
    if(user) {
        res.cookie('userId', user.user_id)
        res.cookie('token', sign(user), { maxAge: 50000000 })
            .redirect('/')
    } else {
        res.status(401).send('<script>alert("Wrong username or password!"); window.location.href = "/login"; </script>')
    }
}

module.exports = { GET, POST }
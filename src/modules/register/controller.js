const model = require('./model')
const { sign } = require('../../lib/jwt')

const GET = (req, res) => {
    res.render('register.html')
}

const POST = async (req, res) => {
    const user = await model.user(req.body)
    if(user) {
		res.cookie('token', sign(user), { maxAge: 50000000 })
		   .redirect('/')
	} else {
		res.redirect('/register')
	}
}

module.exports = { GET, POST }
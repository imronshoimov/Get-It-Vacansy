const model = require('./model')

const GET = (req, res) => {
    res.render('register.html')
}

const POST = (req, res) => {
    const user = model.insertUser(req.body)
    if(user) {
        res.c
        res.status(200).json({ message: 'The registratoin is successfully done!' })
    } else {
        res.status(401).json(({ message: 'The registratoin is failed!' }))
    }
}

module.exports = { GET, POST }
const model = require('./model')

const GET = (req, res) => {
    res.render('main.html')
}

// const POST = (req, res) => {
//     console.log(req.body);
// }

module.exports = { GET }
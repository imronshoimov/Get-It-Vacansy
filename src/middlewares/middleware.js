const checkToken = (req, res, next) => {
    console.log(req.url);
    next()
}   

module.exports = { checkToken }
module.exports = (req, res, next) => {
    if((req.url == '/login') && req.cookies.token) return res.redirect('/')
    if(req.url == '/home/recruite' && !req.cookies.token) return res.redirect('/login')
    if(req.url == '/home/job' && !req.cookies.token) return res.redirect('/login')

    next()
}   
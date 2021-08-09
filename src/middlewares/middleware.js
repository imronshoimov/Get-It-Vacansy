module.exports = (req, res, next) => {
    if((req.url == '/login') && (req.cookies.token && req.cookies.userId)) return res.redirect('/')
    if(req.url == '/home/recruite' && !(req.cookies.token && req.cookies.userId)) return res.redirect('/login')
    if(req.url == '/home/job' && !(req.cookies.token && req.cookies.userId)) return res.redirect('/login')
    if(req.url == '/list/recruite' && !(req.cookies.token && req.cookies.userId)) return res.redirect('/login')
    if(req.url == '/list/job' && !(req.cookies.token && req.cookies.userId)) return res.redirect('/login')

    next()
}   